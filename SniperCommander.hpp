#pragma once
#include "Sniper.hpp"


namespace WarGame 
{
    class SniperCommander : public Sniper{
        
    public:
        explicit SniperCommander(uint playerID): Sniper(playerID,120,120,100){}
        ~SniperCommander() override= default;

        std::pair<int,int> getEnemyLoc(std::vector<std::vector<Soldier*>> &board) override ;
        void attack(std::vector<std::vector<Soldier *>> &board, std::pair<int, int> source) override;
        void heal() override;
    };
    
} // end namespace WarGame
