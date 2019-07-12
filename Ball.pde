

class Ball {
  float yLoc;
  float xLoc;
  float diam;
  float yVel;
  float xVel;
  float iHue;
  float oHue;
  float bHue;


  Ball(float xV,float yV,float di)
  {
    xLoc=random(50,450);
    yLoc=random(50,450);
    xVel=xV;
    yVel=yV;
    diam=di;
    iHue=random(0,255);
    oHue=random(0,255);
    bHue=random(0, 500);
  } 
  boolean  move(Paddle pad)
  { 
    //xLoc=random(0,height);
    //yLoc=random(0,width);

    //xLoc=xLoc+random(-10,10);
    //yLoc=yLoc+random(-10,10);
    xLoc=xLoc+xVel;
  //  if (xLoc>=width-diam/2||xLoc<=diam/2)
   if (xLoc>=width-diam/2)
     {
       xVel=xVel*(-1);
    }
     else if(pad.collide(this))
    {
      xVel=xVel*=-1;
      points++;
      
    }
     else if(xLoc<=diam/2)
    {
     // println("game over");
      return false;
    }
   
    yLoc=yLoc+yVel;
    if (yLoc>=width-diam/2||yLoc<diam/2)
    {
      yVel=yVel*(-1);
    }
    return true;
  }


  void display()
  {
    strokeWeight(5);
    fill(oHue, 467, 400);
    oHue+=3;
    if (oHue>255||oHue<0)
    {
      oHue=0;
    }

    ellipse(xLoc, yLoc, diam, diam);
    line(xLoc-diam/2, yLoc, xLoc+diam/2, yLoc);
    line(xLoc, yLoc-diam/2, xLoc, yLoc+diam/2);
    fill(iHue, 700, 475);
    iHue+=3;
    if (iHue>255||iHue<0)
    {
      iHue=0;
    }
    ellipse(xLoc, yLoc, diam/2, diam/2);
  }
}
