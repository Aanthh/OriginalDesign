int g = 66;
int b = 255;
int x = 0;
int x2 = 0;
int gr = 10;
int bl = 133;
void setup(){
  size(900, 600);
  frameRate(60);
}
void draw(){
  sun();
  strings();
  if(x == 950){
    moon();
  }
  strings();
}
void sun(){
    background(0, g, b);
    fill(#F5FA19);
    ellipse(x, 100, 100, 100);
    if (x < 950){
      x = x + 5;
    }
    if (x < 450){
    g = g + 2;
    b = b + 5;
    }
    if (x > 450){
     b = b - 2;
     g = g - 2;
    }
}
void moon(){
  background(0, gr, bl);
  fill(#FAFABB);
  ellipse(x2, 100, 100, 100);
  x2 = x2 + 5;
  if(x2 < 450){
    gr = gr - 2;
    bl = bl - 5;
  }
}
void strings(){
  beginShape();
  fill(#0B8B3F);
  curveVertex(-150, 900);
  curveVertex(-150, 900);
  curveVertex(250, 270);
  curveVertex(700, 900);
  curveVertex(700, 900);
  endShape();
  beginShape();
  fill(#0B8B3F);
  curveVertex(250, 900);
  curveVertex(250, 900);
  curveVertex(700, 270);
  curveVertex(1100, 900);
  curveVertex(1100, 900);
  endShape();
}
