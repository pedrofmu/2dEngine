#include "include/engine.h"
#include "include/glm/fwd.hpp"
#include "include/rendering/sprite.h"
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <iostream>
#include <vector>
#include <include/glm/glm.hpp>
#include <include/glm/gtc/matrix_transform.hpp>
#include <include/glm/gtc/type_ptr.hpp>

int w_width;
int w_heigth;

//Cambia el viewport segun se redimensione la pantalla
void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
   w_width = width;
   w_heigth = height;
   glViewport(0, 0, width, height);
}

Engine::Engine(int window_width, int window_heigth): sprites(std::vector<Sprite*>()){
   //Esta parte inicializa glfw
   glfwInit();     
   glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
   glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
   glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

   //Esta parte se encarga de inicializar la ventana 
   w_width = window_width;
   w_heigth = window_heigth;

   _window = glfwCreateWindow(w_width, w_heigth, "Tetris", NULL, NULL);
   
   if (_window == NULL)
   {
      std::cout << "Failed to create a window" << std::endl;
      glfwTerminate();
      return;
   }

   glfwMakeContextCurrent(_window);

   //Inicializa GLAD
   if(!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
   {
      std::cout << "Failed to initialize GLAD" << std::endl;
      return;
   }

   //Establece el viewport 
   glViewport(0, 0, w_width, w_heigth);
   glfwSetFramebufferSizeCallback(_window, framebuffer_size_callback);
};

void Engine::Init(){
   while(!glfwWindowShouldClose(_window))
   {
      render(); 
   }

   glfwTerminate();
};

void Engine::render(){
   glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
   glClear(GL_COLOR_BUFFER_BIT);

   for (Sprite* sprite : sprites)
   {
      sprite->render(w_width, w_heigth);
   }

   glfwSwapBuffers(_window);
   glfwPollEvents();
}

Sprite* Engine::addSprite(std::string pathToTexture, float xPos, float yPos, float width, float height){
   Sprite* objToAdd = new Sprite(pathToTexture,xPos, yPos, width, height);

   sprites.push_back(objToAdd);

   return objToAdd;
}

