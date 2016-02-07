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
}