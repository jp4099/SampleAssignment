int x = 10;
int y = 0;
int speed = 1;
PImage webImg;

void setup()
{  
 size(600,600); 
 webImg = loadImage("https://cdn.iversity.org/assets/balloons/balloons-9b9fb460b5be350af57819b3250b05789c62778d9a8f1ae411ff219f6310f5d9.png");
}

void draw()
{
  background(209,243,250);
  balloons();
  cloudOne();
  cloudTwo();
  cloudThree();
  fill(240);
  noStroke();
  rect(0,300,600,300);
  road();
  mouse();
  mouseEars();
  house();
}


void balloons()
{
  image(webImg,240,-10 + y,150,225);
  image(webImg,280,0 + y,150,225);
  image(webImg,220,10 + y,150,225);
}

void cloudOne()
{
  noStroke();
  fill(255,255,255,150);
  ellipse(70 + x,50,100,50);
  
  noStroke();
  fill(255,255,255,150);
  ellipse(100 + x,40,100,50);
  
  noStroke();
  fill(255,255,255,150);
  ellipse(125 + x,50,100,50);
  
  noStroke();
  fill(255,255,255,150);
  ellipse(90 + x,70,100,50);
  
  if (x < 600)
  {
    x = x + 2;
  }
  
  if (x > 599)
  {
    x = 0; 
  }
}

void cloudTwo()
{
 noStroke();
  fill(255,255,255,150);
  ellipse(270 + x,100,100,50);
  
  noStroke();
  fill(255,255,255,150);
  ellipse(320 + x,90,100,50);
  
  noStroke();
  fill(255,255,255,150);
  ellipse(325 + x,100,100,50);
  
  noStroke();
  fill(255,255,255,150);
  ellipse(290 + x,120,100,50); 
}

void cloudThree()
{
 noStroke();
  fill(255,255,255,150);
  ellipse(470 + x,50,100,50);
  
  noStroke();
  fill(255,255,255,150);
  ellipse(500 + x,40,100,50);
  
  noStroke();
  fill(255,255,255,150);
  ellipse(525 + x,50,100,50);
  
  noStroke();
  fill(255,255,255,150);
  ellipse(490 + x,70,100,50); 
}

void mouse()
{
  fill(0);
  ellipse(300,570,300,300);
}

void mouseEars()
{
  fill(0);
  ellipse(155,420,180,180);
  
  fill(0);
  ellipse(445,420,180,180);
}

void house()
{
 //base of house
 fill(255,185,251);
 rect(225,250 + y,150,75);
 
 //chimney
 fill(90,44,49);
 rect(300,175 + y,50,60);
 
 //roof
 fill(189,156,250);
 rect(200,190 + y,200,75);
 
 //door
 fill(90,44,49);
 rect(285,275 + y,35,50);
  
  y = y + speed;
  if ((y > 60) || (y < -20)) 
  {
    speed = speed * -1;
  }
}

void road()
{
  fill(125);
  noStroke();
  beginShape();
  vertex(275,250);
  vertex(325,250);
  vertex(75,600);
  vertex(525,600);
  endShape();
}








/* animation example
int x = 0;
int x2 = 0;

void setup()
{
  size(600,500);
  frameRate(30);
}

void draw()
{
  ellipse(x,150,100,100);
  ellipse(x2,350,100,100);
  x = x + 5;
  x2 = x2 + 7;
  
  if(x > 600)
  {
    background(197);
    x = 0;
  }
  
  if(x2 > 600)
  {
    background(197);
    x2 = 0;
  }
} */










