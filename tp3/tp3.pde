PImage img;

void setup() {
  size(800, 400);
  img = loadImage("OPart.jpg");
}

void draw() {
  image(img, 0, 0); 
  strokeWeight(3);
  fill(96, 148, 144);
  
     for (int x = 0; x <= height; x += 27) {  
    for (int i = 401; i <= width; i += 27) {  
      rect(i, x, 30, 30);  
      
 
    }
  }
  
}
