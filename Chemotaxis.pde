class Bacteria
{
  int myX;
  float myY;
  float mySpeed;
  int mySize;
  int myColor;

  Bacteria()
  {
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*410)-20;
    mySize = (int)(Math.random()*90)-20;
    mySpeed = mySize/100.0;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void rise()
  {
    if(mouseX > myX)
    myX = myX + (int)(Math.random()*5)-1;
    else 
    myX = myX + (int)(Math.random()*5)-3;
    myY = myY - mySpeed;
    if (myY < -50)
    {
      myY = 400;
    }
  }
  void show()
  {
    noStroke();
    fill(myColor, 70);
    ellipse(myX, myY, mySize, mySize);
  }
}
Bacteria[] bob= new Bacteria[100];
void setup()
{
  size(400, 400);
  background(150);
  for (int i = 0; i< bob.length; i++) {
    bob[i] = new Bacteria(); 
  }
}
void draw() {
  background(100);
  for (int i = 0; i < bob.length; i++) {
    bob[i].show();
    bob[i].rise();
  }
}
