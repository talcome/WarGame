#pragma once  
#include "Paramedic.hpp"
#include "Soldier.hpp"

namespace WarGame
{
    class ParamedicCommander : public  Paramedic{

    public:
        explicit ParamedicCommander(uint playerID): Paramedic(playerID, 200, 200, 100) {}
        ~ParamedicCommander() override= default;

        static int distance(int x1,int y1, int x2, int y2);
        std::pair<int,int> getEnemyLoc(std::vector<std::vector<Soldier*>> &board) override ;
        void attack(std::vector<std::vector<Soldier *>> &board, std::pair<int, int> source) override;
        void heal() override;
    };

} // end namespace WarGame