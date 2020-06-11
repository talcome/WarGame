#pragma once
#include "Sniper.hpp"
using namespace std;

void WarGame::Sniper::heal() {
    this->setCurrHealth(maxHealth);
}

std::pair<int, int> WarGame::Sniper::getEnemyLoc(vector<std::vector<Soldier *>> &board) {
    uint maxPower = 0;
    std::pair<int,int> pos = {0, 0};
    int N = board.size();
    int M = board[0].size();
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < M; ++j) {
            if (board[i][j] != nullptr && this->getPlayerID() != board[i][j]->getPlayerID() && board[i][j]->getCurrHealth() > maxPower){
                maxPower = board[i][j]->getCurrHealth();
                pos = {i, j};
            }
        }
    }
    return pos;
}

void WarGame::Sniper::attack(std::vector<std::vector<Soldier *>> &board, std::pair<int, int> source) {
    std::pair<int,int> enemyLoc =  getEnemyLoc(board);
    if(enemyLoc.first < 0 || enemyLoc.second < 0 || enemyLoc.first >= board.size() || enemyLoc.second >= board[0].size()){
        throw invalid_argument("couldn't find enemy");
    }
    Soldier* enemy = board[enemyLoc.first][enemyLoc.second];
    if (enemy != nullptr){
        enemy->setCurrHealth(enemy->getCurrHealth() - this->getDamage());
        if(enemy->getCurrHealth() <= 0){
            delete enemy;
            board[enemyLoc.first][enemyLoc.second] = nullptr;
            std::cout << "your enemy is died" << endl;
        }
    }
}
