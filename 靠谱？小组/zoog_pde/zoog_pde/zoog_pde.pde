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
fill(235,235,217);
quad(mouseX-35,mouseY-35,mouseX-45,mouseY-45,mouseX-45,mouseY-55,mouseX-35,mouseY-65);  quad(mouseX+35,mouseY-35,mouseX+45,mouseY-45,mouseX+45,mouseY-55,mouseX+35,mouseY-65);
// Draw Zoog's body
stroke(0);
fill(235,235,217);
ellipse(mouseX,mouseY,60,60); 
// Draw Zoog's energy
stroke(0);
fill(255,0,0);
quad(mouseX,mouseY+10,mouseX-15,mouseY-15,mouseX+15,mouseY-15,mouseX,mouseY+10);
fill(0,0,255);
ellipse(mouseX,mouseY,10,10); 
// Draw Zoog's head
stroke(0);
fill(235,235,217);
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
} 