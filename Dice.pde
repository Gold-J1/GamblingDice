int sum = 0;

void setup()
{
  size(1000, 1000);
  noLoop();
}
void draw()
{
  sum = 0;
  background(255, 170, 200);
  for (int i = 10; i < 1000; i+= 50)
    for (int j = 50; j < 1000; j+= 50) {
      Die bob = new Die (i, j);
      bob.roll();
      bob.show();
      sum = sum + bob.value;
    }
   fill(0);
   textSize(30);
   text("The total is " + sum, 400,30);
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
      fill(120,40,95);
      ellipse(myX+20, myY+20, 10, 10);
    } 
    else if (value == 2) {
      fill(160,100,120);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+30, myY+30, 10, 10);
    } 
    else if (value == 3) {
      fill(185,90,130);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+30, myY+30, 10, 10);
    } 
    else if (value == 4) {
      fill(200,130,170);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+30, 10, 10);
      ellipse(myX+30, myY+10, 10, 10);
      ellipse(myX+30, myY+30, 10, 10);
    } 
    else if (value == 5) {
      fill(230,150,180);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+30, 10, 10);
      ellipse(myX+20, myY+20, 10, 10);
      ellipse(myX+30, myY+10, 10, 10);
      ellipse(myX+30, myY+30, 10, 10);
    } 
    else if (value == 6) {
      fill(255,180,200);
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
