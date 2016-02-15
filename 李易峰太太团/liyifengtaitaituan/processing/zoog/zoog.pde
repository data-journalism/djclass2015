// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 3-3: Zoog as dynamic sketch with variation
void setup() {
  size(640,360);  // Set the size of the window
}

void draw() {
  background(255,0,0);  // Draw a white background 
  
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 
  
  // Legs
  stroke(0);
  fill(255);
    // The legs are drawn according to the mouse location and the previous mouse location.
  ellipse(mouseX-20, mouseY+140, 30, 50);
  ellipse(mouseX+20, mouseY+140, 30, 50);

    //Flag
  stroke(0);
  fill(0,255,0);
  line(mouseX-75,mouseY,1,0);
  line(mouseX+75,mouseY,650,0);


  // Arms
  stroke(0);
  fill(255);
   // The arms are drawn according to the mouse location and the previous mouse location.
  ellipse(mouseX-75,mouseY,70,30);
  ellipse(mouseX+75,mouseY,70,30);

  // Draw Zoog's body
  stroke(0);
  fill(255);
  // Zoog's body is drawn at the location (mouseX, mouseY).
  ellipse(mouseX,mouseY+60,150,160);

  // Draw Zoog's head
  stroke(0);
  fill(255);
  // Zoog�s head is drawn above the body at the location (mouseX, mouseY - 30).
  ellipse(mouseX,mouseY-30,100,60); 

  // Eyes
  // The eye color is determined by the mouse location.
  fill(mouseX/2,0,mouseY/2); 
  rect(mouseX,mouseY-30, 36, 2);
  ellipse(mouseX-20, mouseY-30, 10, 10); 
  ellipse(mouseX+20, mouseY-30, 10, 10);

}