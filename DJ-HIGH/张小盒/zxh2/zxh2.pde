

void setup() {
  size(1000, 500);  // Set the size of the window
}

void draw() {
  background(255,255,255);  // Draw a white background 

  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 
  

  
   // head
  stroke(132,94,74);
  fill(196,135,78);
  fill(196,135,78);
  quad(mouseX+5.2,mouseY+37.1,mouseX+134.2,mouseY+37.1,mouseX+132.2,mouseY+134.7,mouseX+9.8,mouseY+136);
  quad(mouseX+5.2,mouseY+37.1,mouseX+134.2,mouseY+37.1,mouseX+112,mouseY+11.1,mouseX+32.6,mouseY+11.1); 
 
  // hair
  stroke(132,94,74);
  fill(90,99,107);
  quad(mouseX+70,mouseY+6,mouseX+82.7,mouseY+7.7,mouseX+77.7,mouseY+22.7,mouseX+66,mouseY+22.7);
  line(mouseX+70,mouseY+6,pmouseX+10,pmouseY+5);
  line(mouseX+70.5,mouseY+6.5,pmouseX+10.5,pmouseY+5.5);
  line(mouseX+71,mouseY+7,pmouseX+11,pmouseY+6);
  line(mouseX+71.5,mouseY+7.5,pmouseX+11.5,pmouseY+6.5);
   line(mouseX+70,mouseY+6,pmouseX+10,pmouseY+0);
  
  // Eyes
  stroke(255,255,255);
  fill(255,255,255); 
  ellipse(mouseX+42.5, mouseY+92.8,27, 27); 
  ellipse(mouseX+95, mouseY+92.8,27, 27);
  fill(100,33,0); 
  ellipse(mouseX+42.5, mouseY+92.8,19, 19); 
  ellipse(mouseX+95, mouseY+92.8,19, 19);
  
  // Eyebrows
  stroke(102,30,7);
  fill(102,30,7);
  quad(mouseX+22,mouseY+56,mouseX+45,mouseY+50,mouseX+46,mouseY+59.5,mouseX+26.5,mouseY+64.5);
  quad(mouseX+87,mouseY+48.6,mouseX+110,mouseY+51.5,mouseX+108.5,mouseY+62.5,mouseX+86,mouseY+59); 

  // Cheek
  stroke(209,105,69);
  fill(209,105,69);
  ellipse(mouseX+28, mouseY+110.5,17, 10); 
  ellipse(mouseX+110.5, mouseY+110.5,17, 10);
  
  // Nose
  stroke(241,166,132);
  fill(241,166,132);
  ellipse(mouseX+70, mouseY+113,37, 15); 
  stroke(250,204,214);
  fill(250,204,214);
  quad(mouseX+64,mouseY+106,mouseX+74.5,mouseY+106,mouseX+74.5,mouseY+119.5,mouseX+64,mouseY+119.5);
  
  stroke(196,135,78);
  fill(196,135,78);
  quad(mouseX+52,mouseY+106,mouseX+86,mouseY+106,mouseX+68,mouseY+95.3,mouseX+68,mouseY+95.3); 
  quad(mouseX+52,mouseY+119.5,mouseX+86,mouseY+119.5,mouseX+68,mouseY+126,mouseX+68,mouseY+126); 
  
  //smlie
  stroke(103,42,0);
  line(mouseX+61.8, mouseY+131.8,mouseX+78.5,mouseY+129);

  
   //  body
  stroke(244,244,245);
  fill(244,244,245);
  quad(mouseX+38.5,mouseY+137,mouseX+103.3,mouseY+137,mouseX+102.7,mouseY+179.5,mouseX+38.5,mouseY+177.7); 
  stroke(103,42,0);
  line(mouseX+38.5,mouseY+147,mouseX+38.5,mouseY+177.7);
  line(mouseX+103.3,mouseY+147,mouseX+102.7,mouseY+179.5);

  // Legs
  stroke(102,30,7);
  fill(102,30,7);
  quad(mouseX+38.5,mouseY+177.7,mouseX+56.5,mouseY+179.5,pmouseX+56,pmouseY+207.5,pmouseX+41.5,pmouseY+208.5);
  quad(mouseX+40,mouseY+194.5,mouseX+103,mouseY+193.5,mouseX+102.7,mouseY+179.5,mouseX+38.5,mouseY+177.7); 
  quad(mouseX+86,mouseY+178.5,mouseX+102,mouseY+179.5,pmouseX+102,pmouseY+206.5,pmouseX+86,pmouseY+208.5);

//ARMS
  stroke(102,30,7);
  fill(244,244,245);
  quad(mouseX+39,mouseY+137,pmouseX+16,pmouseY+153.5,pmouseX+22,pmouseY+162.5,mouseX+39.5,mouseY+153.5);
  quad(mouseX+103.3,mouseY+137,pmouseX+128.5,pmouseY+158.5,pmouseX+123,pmouseY+164.5,mouseX+103.5,mouseY+155.5);


}