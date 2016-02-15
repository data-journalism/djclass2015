
void setup() {
  size(1000, 800);  // Set the size of the window
}

void draw() {
  background(mouseX,mouseY,0);  // Draw a white background 

  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 
  
//ears
stroke(0);
  line(mouseX, mouseY-55,mouseX-50,mouseY-70);
  line(mouseX, mouseY-55,mouseX+50,mouseY-70);
  line(mouseX-54, mouseY-66,mouseX-50,mouseY-70);
  line(mouseX+54, mouseY-66,mouseX+50,mouseY-70);
  line(mouseX-51, mouseY-74,mouseX-50,mouseY-70);
  line(mouseX+51, mouseY-74,mouseX+50,mouseY-70);
 
  
   // head1
  stroke(0);
  fill(0.5*mouseY,0.5*mouseX,123);
 ellipse(mouseX, mouseY-60, 80, 60); 
 
  // head2
  stroke(0);
   fill(0.3*mouseY,0.7*mouseX,123);
  ellipse(mouseX, mouseY-60, 60,40); 
  
   //  body
  stroke(0);
   fill(0.24*mouseY,0.65*mouseX,0.3*mouseX+0.2*mouseY);
  rect(mouseX, mouseY, 40, 60);


  // Eyes
  fill(0); 
  ellipse(mouseX-10, mouseY-66, 8, 4); 
  ellipse(mouseX+10, mouseY-66, 8, 4);
//smlie
stroke(0);
  line(mouseX, mouseY-45,mouseX-4,mouseY-49);
  line(mouseX, mouseY-45,mouseX+4,mouseY-49);



  // Legs
  fill(0);
  quad(mouseX-15,mouseY+30,mouseX-10,mouseY+30,pmouseX-20,pmouseY+70,pmouseX-25,pmouseY+70);
  quad(mouseX+15,mouseY+30,mouseX+10,mouseY+30,pmouseX+20,pmouseY+70,pmouseX+25,pmouseY+70);

//ARMS
  fill(0);
  quad(mouseX-20,mouseY-10,mouseX-20,mouseY-15,pmouseX-40,pmouseY+20,pmouseX-40,pmouseY+25);
  quad(mouseX+20,mouseY-10,mouseX+20,mouseY-15,pmouseX+40,pmouseY+20,pmouseX+40,pmouseY+25);


}