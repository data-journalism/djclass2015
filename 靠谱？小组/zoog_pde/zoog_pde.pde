<<<<<<< HEAD
/*the owl follows the movement of mouse, and will blink once user click mouse
 */
 int headx, heady;

void setup() {
  size(800,800);
  smooth();
   headx=100;
 heady=90;
}
 
void draw() {
  headx=(mouseX-headx-120)/20+headx;
  heady=(mouseY-heady-120)/20+heady;
  background(255);
  fill(62,28,2);
  stroke(0);
  strokeWeight(2);
 
  //head
  beginShape();
  vertex(headx, heady);
  vertex(headx+200, heady);
  vertex(headx+250, heady+40);
  vertex(headx+250, heady+260);
  vertex(headx+200, heady+310);
  vertex(headx, heady+310);
  vertex(headx-50,heady+260);
  vertex(headx-50,heady+40);
  endShape(CLOSE);
 
  //ear left
  triangle(headx-50,heady-60,headx-50,heady+40,headx,heady);
 
  //ear right
  triangle(headx+250,heady-60,headx+250,heady+40,headx+200,heady);
 
  //chin
  fill(203,118,6);
  rectMode(CENTER);
  rect(headx+100,heady+235, 90,150);
  fill(255);
 
  //white eye left
  beginShape();
  vertex(headx,heady);
  vertex(headx+102,heady+107);
  vertex(headx+55,heady+160);
  vertex(headx,heady+160);
  vertex(headx-50,heady+110);
  vertex(headx-50,heady+40);
  endShape(CLOSE);
 
  //white eye right
  fill(255);
  beginShape();
  vertex(headx+145,heady+160);
  vertex(headx+195,heady+160);
  vertex(headx+250,heady+115);
  vertex(headx+250,heady+40);
  vertex(headx+200,heady);
  vertex(headx+99,heady+107);
  endShape(CLOSE);
 
  //black pupil left
  smooth();
  fill(0);
  float mx = constrain(mouseX,headx-15,headx+35);
  float my = constrain(mouseY,heady+50,heady+130);
  ellipse(mx,my,40,40);
 
  //black pupil right
  fill(0);
  float nx = constrain(mouseX,headx+165,headx+215);
  float ny = constrain(mouseY,heady+70,heady+130);
  ellipse(nx,ny,40,40);
 
   //beak
  fill(255,196,0);
  strokeWeight(3);
  quad(headx+55,heady+160,headx+100,heady+205,headx+145,heady+160,headx+100,heady+105);
   
  if(mousePressed) {
    //left blink
    fill(0);
    stroke(255);
    beginShape();
    vertex(headx,heady);
    vertex(headx+102,heady+107);
    vertex(headx+55,heady+160);
    vertex(headx,heady+160);
    vertex(headx-50,heady+110);
    vertex(headx-50,heady+40);
    endShape(CLOSE);
    stroke(255);
    rect(headx+20, heady+110, 40, 2);
    //right blink
    fill(0);
    beginShape();
    vertex(headx+145,heady+160);
    vertex(headx+195,heady+160);
    vertex(headx+250,heady+115);
    vertex(headx+250,heady+40);
    vertex(headx+200,heady);
    vertex(headx+101,heady+107);
    endShape(CLOSE);
    stroke(255);
    rect(headx+170, heady+110, 40, 2);
  }
=======
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
  
  //Dwar Zoog's ear
  stroke(0);
  fill(233,233,216);
  quad(mouseX-35,mouseY-35,mouseX-45,mouseY-45,mouseX-45,mouseY-55,mouseX-35,mouseY-65);
  quad(mouseX+35,mouseY-35,mouseX+45,mouseY-45,mouseX+45,mouseY-55,mouseX+35,mouseY-65);
  
  // Draw Zoog's body
  stroke(0);
  fill(233,233,216);
  ellipse(mouseX,mouseY,60,60); 
  
    // Draw Zoog's energy
  stroke(0);
  fill(255,0,0);
  quad(mouseX,mouseY+10,mouseX-15,mouseY-15,mouseX+15,mouseY-15,mouseX,mouseY+10);
  fill(0,0,255);
  ellipse(mouseX,mouseY,10,10); 

  // Draw Zoog's head
  stroke(0);
  fill(233,233,216);
  ellipse(mouseX,mouseY-50,80,80); 

  // Draw Zoog's eyes
  // The eye color is determined by the mouse location.
  fill(255,255,0); 
  ellipse(mouseX-19,mouseY-50,30,20); 
  ellipse(mouseX+19,mouseY-50,30,20); 

  //Dwar Zoog's dart
  stroke(0);
  fill(255,0,0);
  ellipse(mouseX,mouseY-90,20,50);

//Dwar Zoog's mouth
  stroke(0);
  bezier(mouseX-10,mouseY-30,mouseX,mouseY-25,mouseX,mouseY-25,mouseX+10,mouseY-30);
  
  // Draw Zoog's legs
  stroke(0);
  // The legs are drawn according to the mouse location and the previous mouse location.
  line(mouseX-5,mouseY+29,pmouseX-10,pmouseY+60);
  line(mouseX-20,mouseY+22,pmouseX-25,pmouseY+60);
  noFill();
  bezier(pmouseX-10,pmouseY+60,pmouseX-15,pmouseY+65,pmouseX-20,pmouseY+65,pmouseX-25,pmouseY+60);
  line(mouseX+5,mouseY+29,pmouseX+10,pmouseY+60);
  line(mouseX+20,mouseY+22,pmouseX+25,pmouseY+60);
  bezier(pmouseX+10,pmouseY+60,pmouseX+15,pmouseY+65,pmouseX+20,pmouseY+65,pmouseX+25,pmouseY+60);
  
  // Draw Zoog's hand
  stroke(0);
  // The hand are drawn according to the mouse location and the previous mouse location.
  line(mouseX-25,mouseY-18,pmouseX-60,pmouseY-5);
  line(mouseX-30,mouseY,pmouseX-55,pmouseY+8);
  fill(255,0,0);
  ellipse(pmouseX-56,pmouseY+1,12,12);
  line(mouseX+25,mouseY-18,pmouseX+60,pmouseY-5);
  line(mouseX+30,mouseY,pmouseX+55,pmouseY+8);
  ellipse(pmouseX+56,pmouseY+1,12,12);
}

void mousePressed() {
  println("Take me to your leader!"); 
>>>>>>> master
}