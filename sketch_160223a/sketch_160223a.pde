void settings() 
{
  size(400, 800, P2D);
}

void setup() 
{
  background(255, 204, 102);
  fill(100, 255, 100);
  noLoop();
}

void draw() 
{
  plant(15, 0.4, 0.8);
}

void leaf()
{
  beginShape();
  vertex(100.0, -70.0);
  bezierVertex(90.0, -60.0, 40.0, -100.0, 0.0, 0.0);
  bezierVertex(0.0, 0.0, 100.0, 40.0, 100.0, -70.0);
  endShape();
}

void plant(int leaves, float minLeafScale, float maxLeafScale)
{
  line(width/2, 0, width/2, height); //Stem
  int gap = height/leaves;
  float angle = 0.0;
  
  for (int i = 0; i < leaves; i++)
  {
    int x = width/2;
    int y = gap*i + (int) random(gap);
    float scale = random(minLeafScale, maxLeafScale);
     
    pushMatrix();
      translate(x, y);
      rotate(angle);
      scale(scale);
      leaf();
    popMatrix();
    
    angle += PI;
  }
}