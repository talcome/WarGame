/**
 * Header file for the board of the war game.
 * 
 * @author ko tal
 * @since  2020-05
 */

#include <string>
#include <vector>
#include <stdexcept>
#include "Soldier.hpp"
#include "Board.hpp"
using namespace std;

namespace WarGame 
{
    // operator for putting soldiers on the game-board during initialization.
    Soldier*& Board::operator[](std::pair<int,int> location) {
      return board[location.first][location.second];
    }
    
    // operator for reading which soldiers are on the game-board.
    Soldier* Board::operator[](std::pair<int,int> location) const {
      return board[location.first][location.second];
    }
    
    // The function "move" tries to move the soldier of player "player"
    //     from the "source" location to the "target" location,
    //     and activates the special ability of the soldier.
    // If the move is illegal, it throws "std::invalid_argument". 
    // Illegal moves include:
    //  * There is no soldier in the source location (i.e., the soldier pointer is null);
    //  * The soldier in the source location belongs to the other player.
    //  * There is already another soldier (of this or the other player) in the target location.
    // IMPLEMENTATION HINT: Do not write "if" conditions that depend on the type of soldier!
    // Your code should be generic. All handling of different types of soldiers 
    //      must be handled by polymorphism.
    void Board::move(uint player_number, std::pair<int,int> source, MoveDIR direction)
    {
      int N = source.first;
      int M = source.second;

      if (N >= board.size() | M >= board[0].size() )
          throw invalid_argument("Error: soldier step the board");

      if (N <= 0| M <= 0)
          throw invalid_argument("Error: soldier step the board");

      Soldier *t = this->board[N][M];
      if (t == nullptr) 
        throw invalid_argument("Error: no soldier!");

      if (t->getCurrHealth() <= 0){
          throw invalid_argument("Error: this soldier is dead!");
      }

      if (t->getPlayerID() == player_number)
      {
        switch (direction) 
        {
          case Up:
              if (N+1 == board.size())
                  throw invalid_argument("Error: no soldier!");
              if (board[N+1][M] != nullptr)
                  throw invalid_argument("Error: no soldier!");
              t = board[N+1][M];
              board[N][M] = nullptr;
              t->attack(this->board,{N+1,M});
              break;

          case Down:
              if (N-1 < 0)
                  throw invalid_argument("Error: no soldier!");
              if (N-1 == board.size())
                  throw invalid_argument("Error: no soldier!");
              if (board[N-1][M] != nullptr)
                  throw invalid_argument("Error: no soldier!");
              t = board[N-1][M];
              board[N][M] = nullptr;
              t->attack(this->board,{N-1,M});
              break;

          case Left:
              if (M-1 < 0)
                  throw invalid_argument("Error: no soldier!");
              if (M-1 == board.size())
                  throw invalid_argument("Error: no soldier!");
              if (board[N][M-1] != nullptr)
                  throw invalid_argument("Error: no soldier!");
              t = board[N][M-1];
              board[N][M] = nullptr;
              t->attack(this->board,{N,M-1});
              break;

          case  Right:
              if (M-1 < 0)
                  throw invalid_argument("Error: no soldier!");
                if (M-1 == board.size())
                    throw invalid_argument("Error: no soldier!");
                if (board[N][M+1] != nullptr)
                    throw invalid_argument("Error: no soldier!");
                t = board[N][M+1];
                board[N][M] = nullptr;
                t->attack(this->board,{N,M+1});
                break;
        }
      }
    }

    // returns true iff the board contains one or more soldiers of the given player.
    bool Board::has_soldiers(uint player_number) const{
      for (int i = 0; i < board.size(); i++){
        for (int j = 0; j < board[0].size(); j++){
          Soldier *s = board[i][j];
          if (s != nullptr && s->getPlayerID() == player_number){
            return true;
          }
        }
      }
      return false;
    } 
}
