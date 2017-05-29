public class box{
  private float y;
  private float x;
  private float dy = 10;
  private float dx = .5;
  //private int size = 10;
  private float w;
  private float h;
  private int c; //color
  private String num;
  
  box(float ex, float why, float wi, float he, String n, int col){
    x = ex;
    y = why; 
    w = wi;
    h = he;
    num = n;
    c = col;
  }
  
 public float getEx(){
   return x;
 }
 
 public float getY(){
   return y;
 }
 
 
// public void draw(){
  // display();
   
 
 
 public void moveDown(){
   y -= dy;
   fill(c, 225,0);
   rect(x , y, w, h);
   noStroke();
   fill(0);
   text(num, x ,y + h/2);
 }
 
 public void moveUp(){
   y += dy;
   fill(c, 225,0);
   rect(x , y, w, h);
   noStroke();
   fill(0);
   text(num, x ,y + h/2);
 }
 
 
 
 public void moveRight(){
   x += dx;
 }
 
 public void moveLeft(){
   x -= dx;
 }
 
 
 public void display(){
   fill(c, 225,0);
   rect(x , y, w, h);
   noStroke();
   fill(0);
   text(num,x ,y + h/2);
 }
}
