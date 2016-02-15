// Example 3-6: Interactive Zoog?
void setup() {
  // Set the size of the window
  size(640,360);  
  // The frame rate is set to 30 frames per second.
  frameRate(30);
}

void draw() {
  // Draw a white background
  background(255,255,0);  
  
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 
  
  // Draw Zoog's body
  stroke(0);
  fill(255,0,0);
  rect(mouseX,mouseY,40,100);

  // Draw Zoog's head
  stroke(0);
  fill(255);
  ellipse(mouseX,mouseY-40,90,90); 
  
  //Draw Zoog's hair
  stroke(0);
  fill(0,0,255);
  triangle(mouseX,mouseY-30,mouseX-5,mouseY-90,mouseX+5,mouseY-90);
  
  //Draw Zoog's ears
  stroke(0);
  fill(0,0,255);
  rect(mouseX-45,mouseY-40,10,20);
  rect(mouseX+45,mouseY-40,10,20);
  
  //Draw Zoog's mouth
  stroke(0);
  fill(0);
  ellipse(mouseX,mouseY-5,15,10);

  // Draw Zoog's eyes
  // The eye color is determined by the mouse location.
  fill(mouseX/2,0,mouseY/2); 
  ellipse(mouseX-23,mouseY-40,20,32); 
  ellipse(mouseX+23,mouseY-40,20,32); 
  
  //Draw Zoog's arms
  strokeWeight(5);
  line(mouseX-20,mouseY+10,pmouseX-40,pmouseY+10);
  line(mouseX+20,mouseY+10,pmouseX+40,pmouseY+10);

  // Draw Zoog's legs
  stroke(0);
  // The legs are drawn according to the mouse location and the previous mouse location.
  line(mouseX-10,mouseY+50,pmouseX-10,pmouseY+70);
  line(mouseX+10,mouseY+50,pmouseX+10,pmouseY+70);
}

void mousePressed() {
  println("Ha!I am ATM!"); 
}