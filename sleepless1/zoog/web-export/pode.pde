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
  fill(255);
  rect(mouseX,mouseY+20,40,35);

  // Draw Zoog's head
  stroke(0);
  fill(255);
  rect(mouseX,mouseY-30,100,75); 
  
  
  //Draw Zoog's ears
  stroke(0);
  fill(0);
  rect(mouseX-18,mouseY-73,15,10); 
  rect(mouseX+18,mouseY-73,15,10);
  ellipse(mouseX-18,mouseY-75,15,15); 
  ellipse(mouseX+18,mouseY-75,15,15); 
  
   
  //Draw Zoog's mouse
  stroke(0);
  fill(255);
  rect(mouseX-4,mouseY-26,6,6);
  fill(0);
  rect(mouseX+1,mouseY-26,6,6);
  fill(255);
  rect(mouseX+5,mouseY-26,6,6);
  

  // Draw Zoog's eyes
  // The eye color is determined by the mouse location.
  fill(mouseX/2,0,mouseY/2); 
  ellipse(mouseX-25,mouseY-43,34,34); 
  ellipse(mouseX+25,mouseY-43,34,34); 
  fill(255);
  rect(mouseX-25,mouseY-43,34,4);
  rect(mouseX+25,mouseY-43,34,4);
  
  //Draw Zoog's hands
  ellipse(mouseX-26,mouseY+13,12,12); 
  ellipse(mouseX+26,mouseY+13,12,12);
  
  //Draw Zoog's body
  fill(mouseX/2,0,mouseY/2);
  ellipse(mouseX+1,mouseY+22,5,5);
  fill(mouseX/6,0,mouseY/6);
  ellipse(mouseX+1,mouseY+17,5,5);
  fill(mouseX/2,0,mouseY/2);
  ellipse(mouseX-4,mouseY+21,5,5);
  fill(198);
  ellipse(mouseX-3,mouseY+27,5,5);
  fill(248);
  ellipse(mouseX+3,mouseY+28,5,5);
  fill(128);
  ellipse(mouseX+7,mouseY+24,5,5);
  fill(288);
  ellipse(mouseX+6,mouseY+19,5,5);
  fill(199);
  
  
 
  // Draw Zoog's legs
  stroke(0);
  // The legs are drawn according to the mouse location and the previous mouse location.
  line(mouseX-10,mouseY+38,pmouseX-10,pmouseY+50);
  line(mouseX+10,mouseY+38,pmouseX+10,pmouseY+50);
}

void mousePressed() {
  println("Take me to your leader!"); 
}
