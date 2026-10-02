Die bob;
void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  background(255, 150, 150);
  for (int i = 0; i < 500; i+= 50)
    for (int j = 50; j < 500; j+= 50) {
      Die bob = new Die (i, j);
      bob.roll();
      bob.show();
    }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{

  int myX, myY, value;

  Die(int x, int y) //constructor
  {
    myX = x;

    myY = y;

    value = 0;
  }

  void roll()
  {
    value = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill (255);
    rect(myX, myY, 40, 40);
    if (value == 1) {
      fill(0);
      ellipse(myX+20, myY+20, 10, 10);
    } 
    else if (value == 2) {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+30, myY+30, 10, 10);
    } 
    else if (value == 3) {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+30, myY+30, 10, 10);
    } 
    else if (value == 4) {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+30, 10, 10);
      ellipse(myX+30, myY+10, 10, 10);
      ellipse(myX+30, myY+30, 10, 10);
    } 
    else if (value == 5) {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+30, 10, 10);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+30, myY+10, 10, 10);
      ellipse(myX+30, myY+30, 10, 10);
    } 
    else if (value == 6) {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+20, 10, 10);
      ellipse(myX+10, myY+30, 10, 10);
      ellipse(myX+30, myY+10, 10, 10);
      ellipse(myX+30, myY+20, 10, 10);
      ellipse(myX+30, myY+30, 10, 10);
    } 
    else ellipse(100, 100, 100, 100);
  }
}
