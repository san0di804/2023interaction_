PImage img,imgBox;
void setup(){
  size(600,600);
  img = loadImage("p.png");
  imgBox=loadImage("box.png");
}
void draw(){
  imageMode(CENTER);
  if(mousePressed){
    image(imgBox,mouseX,mouseY);
  }else{
    image(img,380,380,240,380);
  }
}
