PImage img;
int [][] pos ={{118,384},{171,383},{226,384},{280,383},{333,384},{387,383},{440,383},{493,384},{548,384},{602,383},{130,442},{185,442},{239,443},{293,443},{347,443},{400,443},{453,443},{507,442},{561,442},{158,502},{212,503},{265,502},{319,502},{373,502},{426,503},{481,502}};
void setup(){
  size(800,600);
  img = loadImage("keyboard.jpg");
  rectMode(CENTER);
}
void draw(){
  background(#FFFFF2);
  image(img,0,600-374);
  fill(255,0,0,128);
  rect(mouseX,mouseY,45,50,5);
  fill(0,255,0,128);
  for(int i=0;i<26;i++){
    rect(pos[i][0],pos[i][1],45,50,5);
  }
}
void mousePressed(){
  println(mouseX,mouseY);//定位 印出座標
}
