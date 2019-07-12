class Paddle
{
  float xLoc;
  float yLoc;
  float halfLeng;
  
  Paddle()
  {
    xLoc=10;
    yLoc=height/2;
    halfLeng=30;
  }
  void move()
  {
    yLoc=mouseY;
    
  }
  boolean collide(Ball b)
  {
   if
   
     (b.xLoc<this.xLoc+b.diam/2&&
   b.yLoc<this.yLoc+this.halfLeng&&
   b.yLoc>this.yLoc-this.halfLeng)

   
   return true;
   
   else 
   return false;
   
   
   
    
  }
  void display()
  {
    line(xLoc,yLoc-halfLeng,xLoc,yLoc+halfLeng);
  }
}
