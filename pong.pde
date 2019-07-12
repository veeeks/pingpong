Ball b;
Paddle pad;
boolean playOn;
int points;

void setup()
{
  size(500, 500);
  colorMode(HSB);
  background(733);
  playOn=true;
  points=0;
  pad = new Paddle();
  b= new Ball(2, -3, 50);
}

void draw()
{
  if(playOn)
  {
    background(b.bHue,255,500,800);
  }
  else
  {
  background(b.bHue, 255, 500, 800);
  b.bHue+=1;
  if (b.bHue>255||b.bHue<0)
  {
    b.bHue=0;
  }
  }
  if (playOn)
  {
    if (b.move(pad))
    {
      
      b.display();
      pad.move();
      pad.display();
      
    } else 
    {
      playOn=false;
    }
  } else
  {
    textSize(32);
    text("game over", 180, 250);
    text("score"+points,180,300);
  }
}
