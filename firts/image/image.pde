float x;
float y;
PImage img; 

import processing.opengl.*;
void setup() {
  size(998, 613); 
  noStroke();  
  img = loadImage("vf_samples_retailStore.jpg");
}

boolean on=true;
void draw() { 
  background(51);
  
  // lerp() calculates a number between two numbers at a specific increment. 
  // The amt parameter is the amount to interpolate between the two values 
  // where 0.0 equal to the first point, 0.1 is very near the first point, 0.5 
  // is half-way in between, etc.  
  
  // Here we are moving 5% of the way to the mouse location each frame
  //x = lerp(x, mouseX, 0.05);
  ///y = lerp(y, mouseY, 0.05);
  image(img, 0, 0);
  //image(img, 0, height/2, img.width/2, img.height/2);
   
 
  if(frameCount% 10== 0) {
    if(on)
        fill(0);
    else
        fill(255,0,0);
        stroke(255);
    on = !on;
  }
 
  ellipse(mouseX, mouseY, 15, 15);
}
