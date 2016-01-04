// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 3-3: Zoog as dynamic sketch with variation
void setup() {
  size(640,360);  // Set the size of the window
}

void draw() {
  background(255);  // Draw a white background 
  
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 


  // Legs
  stroke(0);
  ellipse(mouseX-15,mouseY+45,10,35);
  ellipse(mouseX+15,mouseY+45,10,35);
  
  //arms
  stroke(0);
  ellipse(mouseX-32,mouseY,35,10);
  ellipse(mouseX+32,mouseY,35,10);

  //hands
  fill(100);
  ellipse(mouseX-50,mouseY,8,8);
  ellipse(mouseX+50,mouseY,8,8);
  
  //body
  stroke(0);
  fill(175);
  ellipse(mouseX,mouseY,60,80);

  //body
   stroke(0);
   fill(238,216,174);
   ellipse(mouseX,mouseY,20,20);

   //ears
   fill(150);
   ellipse(mouseX-30,mouseY-30,15,15);
   ellipse(mouseX+30,mouseY-30,15,15);

  //head
  stroke(0);
  fill(255);
  // Zoog s head is drawn above the body at the location (mouseX, mouseY - 30).
  ellipse(mouseX,mouseY-30,60,60); 


  // Eyes
  fill(255,255,0); 
  ellipse(mouseX-15,mouseY-25, 20, 15); 
  ellipse(mouseX+15,mouseY-25, 20, 15);

  //top
  fill(255,99,71);
  ellipse(mouseX,mouseY-60,10,40);


}
