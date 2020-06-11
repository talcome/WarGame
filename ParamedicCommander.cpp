#pragma once
#include <limits>
#include "ParamedicCommander.hpp"
using namespace std;

void WarGame::ParamedicCommander::heal() {
    this->setCurrHealth(maxHealth);
}

std::pair<int, int> WarGame::ParamedicCommander::getEnemyLoc(vector<std::vector<Soldier *>> &board) {
    uint minDist = std::numeric_limits<unsigned int>::max();
    std::pair<int,int> pos = {0, 0};
    int N = board.size();
    int M = board[0].size();
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < M; ++j) {
            if (board[i][j] != nullptr && this->getPlayerID() == board[i][j]->getPlayerID()){
                if (board[i][j]->getCurrHealth() >= 0){
                    uint dist = distance(N,M,i,j);
                    if (dist < minDist){
                        minDist = dist;
                        pos = {i, j};
                    }
                }
            }
        }
    }
    return pos;
}

void WarGame::ParamedicCommander::attack(vector<std::vector<Soldier *>> &board, std::pair<int, int> source) {
    WarGame::Paramedic::attack(board,source);
    std::pair<int,int> enemyLoc =  getEnemyLoc(board);
    if(enemyLoc.first < 0 || enemyLoc.second < 0 || enemyLoc.first >= board.size() || enemyLoc.second >= board[0].size()){
        throw invalid_argument("couldn't find enemy");
    }
    Soldier* pal = board[enemyLoc.first][enemyLoc.second];
    if (pal != nullptr){
        pal->setCurrHealth(pal->getCurrHealth() + this->getDamage());
        std::cout << "healing soldier " << endl;
    }
}

int WarGame::ParamedicCommander::distance(int x1, int y1, int x2, int y2) {
    return sqrt(pow(x1-x2,2) + pow(y1-y2,2));
}

