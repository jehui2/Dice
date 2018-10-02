Die one;
void setup()
{
  size (400, 400);
  noLoop();
}
void draw()
{
  background (165, 154, 147);
  int totalDot = 0;
  for (int y = 40; y < 400; y = y + 120)
    {
      for (int x = 40; x < 400; x = x + 120)
      {
        one = new Die(x, y);
        one.show();
        if (one.numDot <= 6)
        {
          totalDot = totalDot + one.numDot;
        }
       }   
    }
  textSize(20);
  text("Total: " + totalDot, 120, 390);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{  
  int myX, myY, numDot;
  //variable declarations here
    
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
    //variable initializations here
  }
  void roll()
  {
    numDot = (int)(Math.random()*6) + 1;
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 80, 80);
    fill(0);
    if (numDot % 2 >= 1)
      {
        ellipse(myX + 40, myY + 40, 10, 10); // center dot
      }
    if (numDot > 1)
    {
      ellipse(myX + 20, myY + 20, 10, 10); // upper left dot
      ellipse(myX + 60, myY + 60, 10, 10); // lower right dot
    }
    if (numDot > 3)
    {
      ellipse(myX + 60, myY + 20, 10, 10); // upper right dot
      ellipse(myX + 20, myY + 60, 10, 10); // upper left dot
    }
    if (numDot > 5)
    {
      ellipse(myX + 20, myY + 40, 10, 10); // middle left dot
      ellipse(myX + 60, myY + 40, 10, 10); // middle right dot
    }
  }
}
