#pragma once 
#include "FootSoldier.hpp"
#include "Soldier.hpp"

namespace WarGame
{
    class FootCommander : public FootSoldier {

            public:
                explicit FootCommander(uint playerID) : FootSoldier(playerID,150,150,20){}
                ~FootCommander() override= default;

                static uint distance(int x1,int y1, int x2, int y2);
                std::pair<int,int> getEnemyLoc(std::vector<std::vector<Soldier*>> &board) override ;
                void attack(std::vector<std::vector<Soldier *>> &board, std::pair<int, int> source) override;
                void heal() override;
    };
    
} // end WarGame 

