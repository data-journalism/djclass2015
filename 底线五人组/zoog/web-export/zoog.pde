void setup(){
 
  size(1000,800);
}
 float eyeR; 
 float eyeG; 
 float eyeB; 
void draw(){
    background(200);
  //body
  fill(150);
  strokeWeight(4);
  strokeCap(ROUND);
  int x=100;
  rect(mouseX,mouseY,x,x+30,20);
  fill(200,0,0);
  rect(mouseX,mouseY+100,x,15);
  eyeR = random(255); 
  eyeG = random(255); 
  eyeB = random(255); 
  fill(eyeR,eyeG,eyeB); 
  ellipse(mouseX+50,mouseY+30,30,30);
  
  
  //head
  fill(220,220,220);
  ellipse(mouseX+50,mouseY-50,100,120);
  fill(0);
  ellipse(mouseX+50,mouseY-110,10,60);
  fill(255);
  arc(mouseX+50,mouseY-20,50,30,radians(10), radians(170));
  //eye
  fill(238, 238, 0);
  ellipse(mouseX+30,mouseY-50,25,30);
  ellipse(mouseX+70,mouseY-50,25,30);
  
 //legs
  fill(178, 34, 34);
  rect(pmouseX,pmouseY+130,30,90);
  rect(pmouseX+70,pmouseY+130,30,90);
  fill(220,220,220);
  ellipse(pmouseX+85,pmouseY+230,30,30);
  ellipse(pmouseX+15,pmouseY+230,30,30);
 
 
 //arms
  fill(200,0,0);
  int y=200;
  beginShape();
  vertex(pmouseX,y-50);
  vertex(pmouseX-60,mouseY);
  vertex(pmouseX-10,mouseY+50);
  vertex(pmouseX+10,mouseY+45);
  vertex(pmouseX-50,mouseY);
  vertex(pmouseX,160);
  endShape();
  beginShape();
  vertex(pmouseX+100,150);
  vertex(pmouseX+160,mouseY);
  vertex(pmouseX+110,mouseY+50);
  vertex(pmouseX+90,mouseY+45);
  vertex(pmouseX+150,mouseY);
  vertex(pmouseX+100,160);
  endShape();


   
  
}
