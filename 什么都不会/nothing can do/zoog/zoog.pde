// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 3-3: Zoog as dynamic sketch with variation
void setup() {
  size(640,360);  // Set the size of the window
}
float i=70;
void draw() {
  background(255);  // Draw a white background 
  
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 
  
  // Draw Zoog's body
  stroke(0);
  fill(225);
  // Zoog's body is drawn at the location (mouseX, mouseY).
  ellipse(mouseX,mouseY,35,75);
   stroke(0);
  fill(135,206,250);
  ellipse(mouseX,mouseY,10,10);

  // Draw Zoog's head
  stroke(0);
  fill(225);
  // Zoog�s head is drawn above the body at the location (mouseX, mouseY - 30).
  ellipse(mouseX,mouseY-30,60,60); 
  fill(150);
  ellipse(mouseX,mouseY-60,10,30);
  stroke(0);
  fill(225);
  rect(mouseX-33, mouseY-32, 6, 10); 
  rect(mouseX+33, mouseY-32, 6, 10); 

  // Eyes
  fill(255,225,0); 
  ellipse(mouseX-15, mouseY-32, 22, 22); 
  ellipse(mouseX+15, mouseY-32, 22, 22);
  //ellipse(310, 160, 16, 32); 
  //ellipse(345 160, 16, 32);
    i = i-1;
  float k = 0;
  if(i<20)
     k = 2;
  else if(k<40)
     k = 1;
   else
     k = -2;
  
  //Arms
  stroke(0);
  fill(255,192,203);
  ellipse(mouseX-25, mouseY-5, 15, 45); 
  ellipse(mouseX+0, mouseY+12, 45, 15);

 

  // Legs
  stroke(0);
  fill(200);
  ellipse(mouseX-16, mouseY+38, 18, 18); 
  ellipse(mouseX+16, mouseY+38, 18, 18);
  if(i<0)
    i=60;
}