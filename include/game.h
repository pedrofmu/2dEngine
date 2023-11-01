#include "include/engine.h"
#include "include/rendering/sprite.h"
#include <iostream>

class Game : public IUpdateSubscriber , public IInputSubscriber{
public:
    Game(Engine* engine);
    void Init();   

    void update() override;

    void processInput(int key) override;

private:
    int keyToProcess;
    double lastTime = 0;
    double timeToPass = 0.25;

    Engine* _engine;
    Sprite* prueba;
};
