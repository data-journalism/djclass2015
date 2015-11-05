
void setup() {
  // Set the size of the window
  size(640,360);  
  // The frame rate is set to 30 frames per second.
  frameRate(30);
}

void draw() {
  // Draw a white background
  background(192, 64, 0);  
  
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 
  
  // Draw Zoog's hand
  stroke(0);
  // The hand are drawn according to the mouse location and the previous mouse location.
  println(mouseX,mouseY);
  ellipse(240+mouseX, 220+mouseY,100, 35);
  ellipse(155+mouseX, 220+mouseY, 100, 35);
  
  // Draw Zoog's body
  stroke(0);
  fill(175);
  ellipse(200+mouseX, 240+mouseY, 55, 90);

  // Draw Zoog's head
  stroke(0);
  fill(255);
  ellipse(200+mouseX, 155+mouseY, 100, 100);
  fill(160, 210, 230);
  rect(200+mouseX, 110+mouseY, 10, 40);
  ellipse(200+mouseX, 180+mouseY, 28, 2);
  ellipse(155+mouseX, 110+mouseY, 30, 25);
  ellipse(245+mouseX, 110+mouseY, 30, 25);
  if (mousePressed) {
    rect(250,200,100,100);
  } else {
    ellipse(200+mouseX, 155+mouseY, 100, 100);
  }
  
  // Draw Zoog's eyes
  // The eye color is determined by the mouse location.
  fill(mouseX/2,0,mouseY/2); 
  ellipse(175+mouseX, 140+mouseY, 30, 30);
  ellipse(225+mouseX, 140+mouseY, 30, 30); 

  // Draw Zoog's legs
  stroke(0);
  // The legs are drawn according to the mouse location and the previous mouse location.
  ellipse(200+mouseX, 290+mouseY, 120, 10);
  ellipse(155+mouseX, 290+mouseY, 50, 35);
  ellipse(250+mouseX, 290+mouseY, 50, 35);
}

void mousePressed() {
  println("Take me to your leader!"); 
}