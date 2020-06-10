#pragma once 

#include "Soldier.hpp"

namespace WarGame 
{
    class Sniper : public Soldier 
    {
        public:
            explicit Sniper(uint playerID): Soldier(playerID,100,100,50){}
            Sniper(uint playerID, uint currHealth,uint maxHealth,uint damage):Soldier(playerID,currHealth,maxHealth,damage){}
            ~Sniper() override= default;

            std::pair<int,int> getEnemyLoc(std::vector<std::vector<Soldier*>> &board) override ;
            void attack(std::vector<std::vector<Soldier *>> &board, std::pair<int, int> source) override;
            void heal() override;
    };
    
} // end namespace WarGame
