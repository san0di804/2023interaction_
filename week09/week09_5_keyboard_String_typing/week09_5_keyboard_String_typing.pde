PImage img;
int [][] pos ={{130,444},{372,503},{265,503},{240,443},{225,384},{292,443},{345,442},{400,443},{493,383},{454,443},{509,443},{560,442},{481,503},{427,503},{548,384},{601,383},{117,385},{279,384},{187,442},{332,383},{439,385},{320,503},{171,383},{212,502},{387,385},{158,502}};
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
     if(typing.charAt(0)-'a' == i)rect(pos[i][0], pos[i][1],45,50,5);//現在要打的字是typing.charA(0)
    if(pressed[i])rect(pos[i][0],pos[i][1],45,50,5);
  }
  fill(0); //黑字
  textSize(50); //50號字
  text(typing, 50, 50); 
  text(typing.charAt(0), 50, 100);
}
String typing = "printf";
boolean [] pressed = new boolean[26]; 
void keyPressed(){
  if(key>='a'&&key<='z')pressed[key-'a']=true; //按下
}
void keyReleased(){
  if(key>='a'&&key<='z')pressed[key-'a']=false; //沒有按下
}
