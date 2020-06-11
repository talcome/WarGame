#pragma once
#include <limits>
#include "FootCommander.hpp"
#include "Board.hpp"
#include "FootSoldier.hpp"

using namespace std;

void WarGame::FootCommander::heal() {
    this->setCurrHealth(maxHealth);
}

std::pair<int, int> WarGame::FootCommander::getEnemyLoc(vector<std::vector<Soldier *>> &board) {
    uint minDist = std::numeric_limits<unsigned int>::max();
    std::pair<int,int> pos = {0, 0};
    int N = board.size();
    int M = board[0].size();
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < M; ++j) {
            if (board[i][j] != nullptr && this->getPlayerID() != board[i][j]->getPlayerID()){
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

void WarGame::FootCommander::attack(vector<std::vector<Soldier *>> &board, std::pair<int, int> source) {
    WarGame::FootSoldier::attack(board,source);
    std::pair<int,int> enemyLoc =  getEnemyLoc(board);
    if(enemyLoc.first <= 0 || enemyLoc.second <= 0){
        throw invalid_argument("couldn't find enemy");
    }
    Soldier* enemy = board[enemyLoc.first][enemyLoc.second];
    if (enemy != nullptr){
        enemy->setCurrHealth(currHealth - this->getDamage());
        if(enemy->getCurrHealth() <= 0){
            delete enemy;
            board[enemyLoc.first][enemyLoc.second] = nullptr;
            std::cout << "your enemy is died" << endl;
        }
    }
}

uint WarGame::FootCommander::distance(int x1, int y1, int x2, int y2) {
    return sqrt(pow(x1-x2,2) + pow(y1-y2,2));
}
