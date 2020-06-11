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

      if (N < 0| M < 0)
          throw invalid_argument("Error: soldier step the board");

      Soldier *t = board[N][M];
      if (t == nullptr) 
        throw invalid_argument("Error: this soldier is not exist!");

      if (t->getCurrHealth() <= 0){
          throw invalid_argument("Error: this soldier is already dead!");
      }

      if (t->getPlayerID() == player_number)
      {
        switch (direction) 
        {
          case Up:
              if (board[N+1][M] == nullptr){
                  board[N+1][M] = t;
                  board[N][M] = nullptr;
                  t->attack(this->board,{N+1,M});
              }
              break;

          case Down:
              if (board[N-1][M] == nullptr){
                  board[N-1][M] = t;
                  board[N][M] = nullptr;
                  t->attack(this->board,{N-1,M});
              }
              break;

          case Left:
              if (board[N][M-1] == nullptr){
                  board[N][M-1] = t;
                  board[N][M] = nullptr;
                  t->attack(this->board,{N,M-1});
              }
              break;

          case  Right:
                if (board[N][M+1] == nullptr){
                    board[N][M+1] = t;
                    board[N][M] = nullptr;
                    t->attack(this->board,{N,M+1});
                }
                break;
        }
      }
    }

    // returns true iff the board contains one or more soldiers of the given player.
    bool Board::has_soldiers(uint player_number) const{
        int N = board.size();
        int M = board[0].size();
        for (int i = 0; i < N; i++){
            for (int j = 0; j < M; j++){
                if (board[i][j] != nullptr && board[i][j]->getPlayerID() == player_number && board[i][j]->getCurrHealth() > 0){
                    return true;
                }
            }
        }
        return false;
    }
}
