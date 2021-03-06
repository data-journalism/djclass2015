// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 3-6: Interactive Zoog?
void setup() {
  // Set the size of the window
  size(640,360);  
  // The frame rate is set to 30 frames per second.
  frameRate(30);
}

void draw() {
  // Draw a white background
  background(255);  
  
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 
  
  // Draw Zoog's body
  stroke(0);
  fill(175);
  rect(mouseX,mouseY,30,100);

  // Draw Zoog's head
  stroke(0);
  fill(255);
  ellipse(mouseX,mouseY-30,60,60); 

  // Draw Zoog's eyes
  // The eye color is determined by the mouse location.
  fill(mouseX/2,0,mouseY/2); 
  ellipse(mouseX-19,mouseY-30,16,32); 
  ellipse(mouseX+19,mouseY-30,16,32); 

  // Draw Zoog's legs
  stroke(0);
  // The legs are drawn according to the mouse location and the previous mouse location.
  fill(0,0,0);
  arc(pmouseX-10,pmouseY+60,15,40,-QUARTER_PI,PI+QUARTER_PI,CHORD);
  arc(pmouseX+10,pmouseY+60,15,40,-QUARTER_PI,PI+QUARTER_PI,CHORD);
  fill(215,215,215);
  triangle(mouseX,mouseY-30,mouseX-10,mouseY-80,mouseX+10,mouseY-80);
  fill(0,0,0);
  arc(pmouseX-10,pmouseY+20,15,35,PI-QUARTER_PI,2*PI+PI,CHORD);
  arc(pmouseX+10,pmouseY+25,30,15,QUARTER_PI,2*PI-QUARTER_PI,CHORD);
}


void mousePressed() {
  println("Take me to your leader!"); 
}