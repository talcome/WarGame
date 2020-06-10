#pragma once
#include "Soldier.hpp"


namespace WarGame
{
    class FootSoldier : public Soldier{
        protected:

        public: 
            explicit FootSoldier(uint playerID) : Soldier(playerID,100,100,10){}
            FootSoldier(uint playerID, uint currHealth,uint maxHealth,uint damage):  Soldier(playerID,currHealth,maxHealth,damage){}
            ~FootSoldier() override= default;

            static uint distance(int x1,int y1, int x2, int y2);
            std::pair<int,int> getEnemyLoc(std::vector<std::vector<Soldier*>> &board) override ;
            void attack(std::vector<std::vector<Soldier *>> &board, std::pair<int, int> source) override;
            void heal() override;
    };
    
} // end WarGame 
