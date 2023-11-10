PImage img;
void setup(){
  size(800,600);
  img = loadImage("keyboard.jpg");
  rectMode(CENTER); 
}
void draw(){
  background(#FFFFF2); 
  image(img, 0, 600-374);
  fill(255,0,0, 128);
  rect(mouseX,mouseY, 45,50, 5);
}
void mousePressed(){
  println(mouseX, mouseY);//定位 印出座標
}
