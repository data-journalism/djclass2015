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
  fill(175);
  // Zoog's body is drawn at the location (mouseX, mouseY).
  rect(mouseX,mouseY,20,100);

  // Draw Zoog's head
  stroke(0);
  fill(255);
  // Zoog�s head is drawn above the body at the location (mouseX, mouseY - 30).
  ellipse(mouseX,mouseY-30,60,60); 
  fill(255,0,0);
  ellipse(mouseX,mouseY-60,10,30);
  // Eyes
  fill(255,255,0); 
  ellipse(mouseX-15,mouseY-32, 16, 32); 
  ellipse(mouseX+15,mouseY-32, 16, 32);

 i = i-1;
  float k = 0;
  if(i<20)
     k = 2;
  else if(k<40)
     k = 1;
   else
     k = -2;
  //arms
  stroke(0);
  fill(100);
  line(mouseX-12, mouseY+20, mouseX-40, mouseY+15*k);
  line(mouseX-40, mouseY+15*k,mouseX-40,mouseY+15*k-10);
  line(mouseX-40, mouseY+15*k-10,mouseX-12,mouseY+10);
  line(mouseX+12, mouseY+20, mouseX+40, mouseY+15*k);
  line(mouseX+40, mouseY+15*k,mouseX+40,mouseY+15*k-10);
  line(mouseX+40, mouseY+15*k-10,mouseX+10,mouseY+10);

  // Legs
  stroke(0);
  ellipse(mouseX-15,mouseY+58, 22, 15);
  ellipse(mouseX+15,mouseY+58, 22, 15);
}