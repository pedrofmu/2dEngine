#include "include/glm/ext/matrix_float4x4.hpp"
#include "include/glm/ext/matrix_transform.hpp"
#include "include/glm/ext/vector_float3.hpp"
#include "include/rendering/shader.h"
#include "include/rendering/sprite.h"
#include <ostream>

#define STB_IMAGE_IMPLEMENTATION
#include "include/rendering/stb_image.h"

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <iostream>
#include <string>

#include "include/glm/glm.hpp"
#include "include/glm/gtc/matrix_transform.hpp"
#include "include/glm/gtc/type_ptr.hpp"

Sprite::Sprite(std::string pathToTexture, float X, float Y, float WIDTH, float HEIGTH): shader(Shader("../assets/shader/shader.vs", "../assets/shader/shader.fs")){
   float vertices[] = {
      0.5,  0.5, 1.0f, 1.0f,        // top right
      0.5, -0.5, 1.0f, 0.0f,        // bottom right
      -0.5, -0.5, 0.0f, 0.0f,       // bottom left
      -0.5,  0.5, 0.0f, 1.0f        // top left 
   };

   unsigned int indices[] = {
      0, 1, 3,
      1, 2, 3  
   };

   glGenVertexArrays(1, &VAO);
   glGenBuffers(1, &VBO);
   glGenBuffers(1, &EBO);

   glBindVertexArray(VAO);

   glBindBuffer(GL_ARRAY_BUFFER, VBO);
   glBufferData(GL_ARRAY_BUFFER, sizeof(float) * 16, vertices, GL_STATIC_DRAW);

   glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
   glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

   glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 4 * sizeof(float), (void*)0);
   glEnableVertexAttribArray(0);

   glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 4 * sizeof(float), (void*)0);
   glEnableVertexAttribArray(1);

   //crear textura
   int width, height, nrChannels;
   unsigned char *data = stbi_load(pathToTexture.c_str(), &width, &height, &nrChannels, 0);

   texture = 0; 
   glGenTextures(1, &texture);
    
   glBindTexture(GL_TEXTURE_2D, texture);

   glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data);
   glGenerateMipmap(GL_TEXTURE_2D);

   stbi_image_free(data);

   //Crear matriz
   matrix = glm::mat4(1.0f);

   xPos = X;
   yPos = Y;

   width = WIDTH;
   heigth = HEIGTH;

   matrix = glm::translate(matrix, glm::vec3(xPos, yPos, 0));
   
   matrix[0][0] = matrix[0][0] * WIDTH;
   matrix[1][1] = matrix[1][1] * heigth;
};

void Sprite::render(int w_width, int w_heigth){
   shader.use();
      
   //bindea la textura y los vertices
   glBindTexture(GL_TEXTURE_2D, texture);
   glBindVertexArray(VAO);

   //normaliza la matriz
   glm::mat4 normalizedMatrix = matrix;
   normalizedMatrix[3][0] = (normalizedMatrix[3][0] / (w_width * 0.5)) - 1.0;
   normalizedMatrix[3][1] = (normalizedMatrix[3][1] / (w_heigth * 0.5)) - 1.0;

   normalizedMatrix[0][0] = (normalizedMatrix[0][0] / (w_width * 0.5));
   normalizedMatrix[1][1] = normalizedMatrix[1][1] / (w_heigth * 0.5);

   //establece los uniforms
   unsigned int transformLoc = glGetUniformLocation(shader.ID, "transform");
   glUniformMatrix4fv(transformLoc, 1, GL_FALSE, glm::value_ptr(normalizedMatrix));

   glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT,0);
};

void Sprite::setPosition(float nX, float nY){
   xPos = nX;
   yPos = nY;

   matrix[3][0] = xPos;
   matrix[3][1] = yPos;
};

void Sprite::setScale(float n_width, float n_heigth){
   width = n_width;
   heigth = n_heigth;

   matrix[0][0] = width;
   matrix[1][1] = heigth;
};

void Sprite::setRotation()
