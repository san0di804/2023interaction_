void setup(){
  size(500,500);
  background(255);
}
void draw(){
  if(mousePressed){
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
void keyPressed(){
  if(key=='0') stroke(0,0,0);//black
  if(key=='1') stroke(255,0,0);//red
  if(key=='2') stroke(0,255,0);//green
  if(key=='3') stroke(0,0,255);//blue
  if(key=='s'|| key=='S') save("output.png");
  if(key=='+') strokeWeight(10);//筆觸大小=10
  if(key=='-') strokeWeight(1);
}
