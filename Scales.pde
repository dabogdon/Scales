int phil=255;
void setup(){
 background(0);
 size(400,400);
 stroke(100,0,100);
 strokeWeight(3);
 fill(255,0,255);
 noLoop();
}

void draw(){
 for (int y=-15;y<=450;y+=45){
   for (int x=-5;x<=450;x+=15){
    scale(x,y); 
   }
 }
}

void scale(int x, int y){
  //line(x,y,x+30,y);
  fill(phil,0,phil);
  phil+=(int)(Math.random()*17)-8;
  if(phil>255)
   phil=255; 
  bezier(x+15,y-30,x-5,y-15,x-10,y+10,x+15,y+30);
  bezier(x+15,y-30,x+35,y-15,x+40,y+10,x+15,y+30);
  println(phil);
}
