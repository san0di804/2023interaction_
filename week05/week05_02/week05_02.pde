void setup(){
  size(400,400,P3D);//3d功能
}
void draw(){
  background(#FFFFF2);
  pushMatrix();//備份矩陣
    translate(mouseX,mouseY);//移動
    rotateY(radians(mouseX));//對y軸轉
    fill(0,255,0);//綠色面
    box(100);
    
    noFill();//面不要填
    scale(2);//放大
    box(100);
  popMatrix();//還原矩陣
}
