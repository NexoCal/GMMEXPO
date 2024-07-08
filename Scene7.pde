float dt6 = 0.05;
float dt6a = 0.03;
float dt6aa = 0.1;
float freq6 = 0.6;
float freq6a = 0.5;
float freq6aa = 0.3;
float amp6 = 18.0;
float amp6a = 24.0;
float amp6aa = 40.0;
float t6 = 0.0;
float t6a = 0.0;
float t6aa = 0.0;

float x6move = 0.0;
float x6moveadd = 1;

void scene7(){
  
  PVector v1 = new PVector(0,500);
  PVector v2 = new PVector(0,-100);
  
  Gradient sky = new Gradient(color(53,53,53), color(127, 127, 127));
  peasyGradients = new PeasyGradients(this);
  
  peasyGradients.linearGradient(sky, v2 ,v1);
  
  translate(width/2,height/2);
  scale(1,-1);

  strokeFill(color(33, 52, 67));
  
  pushMatrix();
  translate(0,-200);
  for (int i = -500 ; i < width/rwidth+10;i++){
  
    rect(i*rwidth,amp6aa*sin(freq6aa*(t6aa+i))+200,rwidth,-100); 
  }
  t6aa += dt6aa;
  popMatrix();
  
  strokeFill(color(36, 59, 77));
  
  pushMatrix();
  translate(0,-230);
  for (int i = -500 ; i < width/rwidth+10;i++){
  
    rect(i*rwidth,amp6a*sin(freq6a*(t6a+i))+200,rwidth,-100); 
  }
  t6a += dt6a;
  popMatrix();

  pushMatrix();
  translate(60,0);
  translate(-x6move,0);
  strokeFill(color(30,30,30));
  rect(90,50,50,-100);
  rect(200,50,50,-100);
  strokeFill(color(70, 44, 9));
  beginShape();
  vertex(0,0);
  bezierVertex(0,0,0,-30,300,-30);
  vertex(300,-100);
  vertex(200,-100);
  bezierVertex(200,-100,0,-80,0,0);
  endShape();
  x6move += x6moveadd;
  popMatrix();
  
  
  strokeFill(color(37, 64, 86));
  pushMatrix();
  translate(0,-250);
  for (int i = -500 ; i < width/rwidth+10;i++){
  
    rect(i*rwidth,amp6*sin(freq6*(t6+i))+200,rwidth,-100); 
  }
  t6 += dt6;
  popMatrix();
  
  strokeFill(color(37, 64, 86));
  rect(-500,-90,1000,-300);
  
  pushMatrix();
  scale(1,-1);
  rotate(radians(-10));
  translate(-500,-300);
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
  }
  popMatrix();


}
