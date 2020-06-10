#pragma once
#include "Soldier.hpp"
using namespace std;

void Soldier::heal() {
    this->currHealth = maxHealth;
}

std::pair<int, int> Soldier::getEnemyLoc(vector<std::vector<Soldier *>> &board) {
    std::pair<int,int> res = {0,0};
    int N = board.size();
    int M = board[0].size();
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < M; ++j) {
            if (board[i][j] != nullptr && this->getPlayerID() != board[i][j]->getPlayerID()){
                res = {i,j};
            }
        }
    }
    return res;
}

void Soldier::attack(std::vector<std::vector<Soldier *>> &board, std::pair<int, int> source) {
    std::pair<int,int> enemyLoc =  getEnemyLoc(board);
    if(enemyLoc.first <= 0 || enemyLoc.second <= 0){
        throw invalid_argument("couldn't find enemy");
    }
    Soldier* enemy = board[enemyLoc.first][enemyLoc.second];
    if (enemy != nullptr){
        enemy->setCurrHealth(currHealth-this->damage);
        if(enemy->getCurrHealth() <= 0){
            delete enemy;
            board[enemyLoc.first][enemyLoc.second] = nullptr;
            std::cout << "your enemy is di" << endl;
        }
    }
}


