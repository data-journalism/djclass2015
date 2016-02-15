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
  
  // Draw Lily's hair.
  noStroke();
   fill(155,65,23);
  arc(mouseX,mouseY,60,62,radians(180),radians(360));
  triangle(mouseX-30,mouseY,mouseX-45,mouseY+16,mouseX-32,mouseY+24);
  triangle(mouseX+30,mouseY,mouseX+45,mouseY+16,mouseX+32,mouseY+24);
  //triangle(mouseX+15,mouseY,mouseX+19,mouseY-10,mouseX+21,mouseY); 
  
 
 
  // Draw Lily's head.
  noStroke();
     fill(250,235,179);
  arc(mouseX,mouseY,60,65,radians(0),radians(180));
 noStroke();
 fill(250,235,179);
  triangle(mouseX-18,mouseY,mouseX-16,mouseY-10,mouseX-13,mouseY);
  triangle(mouseX-5,mouseY,mouseX-3,mouseY-10,mouseX,mouseY);
  triangle(mouseX+15,mouseY,mouseX+19,mouseY-10,mouseX+21,mouseY); 

  // Draw Lily's eyes.
  fill(155,65,23); 
  ellipse(mouseX-14,mouseY+8,5,6); 
  ellipse(mouseX+14,mouseY+8,5,6); 

// Draw Lily's nose.
  stroke(1); 
  fill(250,235,179);
  ellipse(mouseX,mouseY+12,2,1); 
  
// Draw Lily's mouth.
   noStroke(); 
  fill(255,255,255);
  arc(mouseX,mouseY+18,27,15,radians(0),radians(180)); 
    
  // Draw Lily's body.
   noStroke(); 
  fill(#EDBBD6);
  beginShape();
  vertex(mouseX-10,mouseY+30);
  vertex(mouseX+10,mouseY+30);
  vertex(mouseX+30,mouseY+80);
  vertex(mouseX-30,mouseY+80);
  endShape();
  
 //Draw Lily's arms. 
   noStroke(); 
  fill(#EDBBD6);
  beginShape();
  vertex(mouseX-10,mouseY+30);
  vertex(mouseX-35,mouseY+60);
  vertex(mouseX-26,mouseY+66);
  endShape();
 
  noStroke(); 
  fill(#EDBBD6);
  beginShape();
  beginShape();
  vertex(mouseX+10,mouseY+30);
  vertex(mouseX+40,mouseY+10);
  vertex(mouseX+50,mouseY+20);
  endShape();
  
  
  // Draw Lily's hands.
  noStroke(); 
  fill(250,235,179);
  ellipse(mouseX-35,mouseY+68,13,13); 
  ellipse(mouseX+51,mouseY+12,13,13);

 // Draw Lily's balloon.
  // The legs are drawn according to the mouse location and the previous mouse location.
  stroke(102);
  line(mouseX+49,mouseY+12,pmouseX+70,pmouseY-60);
  
  noStroke(); 
  fill(#D81F82);
  ellipse(pmouseX+76,pmouseY-70,60,60);
  triangle(pmouseX+68,pmouseY-34,pmouseX+56,pmouseY-36,pmouseX+70,pmouseY-60);
}
//
void mousePressed() {
  println("My name is Lily!"); 
}