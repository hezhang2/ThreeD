//Helen Zhang, Rotating Cube, 8th Block
//https://f84bd8ad532f8cd43c7454e9e3f23d852f7890d0.googledrive.com/host/0B24E0vgcnJ6Pa1lBX3hGUFp2YkE/index.html

float rA= 0;
float rB= 0;
float rC= 0;
float yA= 0;
float yB= 0;
float yC= 0;

void setup()
{
  size(400, 400, P3D);
}

void draw()
{
  background(100);
  fill(255);
  lights();
  blocks();

  if(mouseButton==LEFT)
  {
    rA=rA+.1;
    rB=rB+.2;
    rC=rC+.3;
  }
  
  if(mouseButton==RIGHT)
  {
    yA=yA+.1;
    yB=yB+.2;
    yC=yC+.3;
  }
}

void blocks()
{
  pushMatrix();
  translate(200,200,0);
  rotateX(rA);
  rotateY(yA);
  box(100,100,100);
  popMatrix();
  
  pushMatrix();
  translate(100,200,0);
  rotateX(rB);
  rotateY(yB);
  box(100,100,100);
  popMatrix();
  
  pushMatrix();
  translate(300,200,0);
  rotateX(rC);
  rotateY(yC);
  box(100,100,100);
  popMatrix();
}

