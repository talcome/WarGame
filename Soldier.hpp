#pragma once
#include <string>
#include <vector>
#include <stdexcept>
#include <iostream>
#include <cmath>

namespace WarGame {
    class Board;
}
    class Soldier 
    {
        protected:
            uint playerID;
            uint maxHealth; 
            uint currHealth;
            uint damage;
        
        public:
            Soldier(uint playerID, uint currHealth,uint maxHealth,uint damage): 
            playerID(playerID),
            currHealth(currHealth),
            maxHealth(maxHealth),
            damage(damage) {}
            virtual ~Soldier()= default;

            uint getPlayerID() const{return this-> playerID;}
            uint getCurrHealth() const{return this-> currHealth;}
            uint getDamage() const{return this-> damage;}

            void setPlayerID(uint playerNum){this-> playerID = playerNum;}
            void setCurrHealth(uint ch){ this-> currHealth = ch;}
            void setDamage(uint d){ this-> damage = d;}

            virtual std::pair<int,int> getEnemyLoc(std::vector<std::vector<Soldier*>> &board) = 0;
            virtual void attack(std::vector<std::vector<Soldier*>> &board, std::pair<int, int> source) = 0;
            virtual void heal() = 0;
    };

} // end namespace WarGame
