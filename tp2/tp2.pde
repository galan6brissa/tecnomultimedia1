//Galan Brisa Estefania
//tp2 comision 1

PImage alice, gato, jardin, flores;
PFont fuente;
String intro;
String estado;
int segundos;
int y;
int vueltas = 0;

void setup() {
  size(640, 480);
  alice = loadImage("alice.png");
  gato = loadImage("gato.png");
  jardin = loadImage("jardin.jpg");
  flores = loadImage("flores.png");
  fuente = loadFont("AliceinWonderland.vlw");
  textFont(fuente, 100);
  estado = "titulo";
  segundos = 0; 
  intro = "Alice in Wonderland es una aventura en un mundo de ensueño y absurdos. Alice, la protagonista, cae por una madriguera de conejo y se encuentra en un lugar lleno de criaturas extrañas y eventos ilógicos. A través de esta odisea surrealista, la historia explora temas como la infancia, la curiosidad y la búsqueda de identidad. Es un viaje que desafía las reglas de la lógica y nos invita a ver el mundo con ojos de asombro y sin prejuicios.";
  y = 600;
}

void draw() 
{
  background(0);
  
  if (estado.equals("titulo")) 
  {
    image(alice, 0, 0);
    float tono = map(frameCount, 0, 120, 0, 255);  
    fill(0, 0, 100, tono);
    textSize(100);
    text("Alice \nin Wonderland", 100, 100);
    
    if(segundos >= 5)
    {
      estado = "participantes";
    }
  }
  
  else if(estado.equals("participantes"))
  {
    image(jardin, 0, 0);
    
    if(segundos < 10)
    {
      float tono = map(frameCount - vueltas, 300, 420, 0, 255); 
      fill(0, 0, 100, tono); 
      textSize(40);
      text("Director: \nTim Burton", 270, 100);
    }
    else if(segundos < 15)
    {
      float tono = map(frameCount - vueltas, 600, 720, 0, 255); 
      fill(0, 0, 100, tono); 
      textSize(40);
      text("Guionistas\nLinda Woolverton\nLewis Carroll", 270, 100);
    }
    else if(segundos < 20)
    {
      float tono = map(frameCount - vueltas, 900, 1020, 0, 255); 
      fill(0, 0, 100, tono); 
      textSize(40);
      text("Actores principales \nMia Wasikowska\nJohnny Depp\nHelena Bonham Carter\nAnne Hathaway\nCrispin Glover\nMarton Csokas", 270, 100);
    }
    if(segundos >= 20)
    {
      estado = "introduccion";
    }
  }
  
  else if(estado.equals("introduccion"))
  {
    float tono = map(y, -500, -200, 0, 255); 
    fill(200, 200, 200, tono); 
    image(gato, 0, 0);
    textSize(40);
    text(intro, 150, y, 300, 1000);
    y--;
    if(segundos >= 40)
    {
      estado = "boton";
    }
  }
  else if(estado.equals("boton"))
  {
    image(flores, 0, 0);
    fill(255);
    ellipse(320, 240, 100, 100);
    
    if(dist(mouseX, mouseY, 320, 240) < 50)
    {
      fill(200);
      ellipse(320, 240, 100, 100);
      if(mousePressed)
      {
        estado = "titulo";
        y = 600;
        segundos = 0;
        vueltas = frameCount;
      }
    }
  }
  
  if((frameCount - vueltas) % 60 == 0)
  {
    segundos++;
  }
}
