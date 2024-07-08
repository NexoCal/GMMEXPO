int rwidth = 50;
float t = 0.0;
float dt = 0.08;
float amp = 10.0;
float freq = 0.9;

float chara = 0;
float charaChange = 0.04;

float angle1 = 0;
float angle2 = 0;
float angleChange = 0.01;

float translater = 0;
float translateSpeed = 10;

  //PVector v1 = new PVector(0,300);
  //PVector v2 = new PVector(0,-100);
  
  //Gradient sky = new Gradient(color(40, 119, 247), color(147, 212, 250));
  //peasyGradients = new PeasyGradients(this);
  
  //peasyGradients.linearGradient(sky, v2 ,v1);
  //if(framecounter > 120){
  // translate(0,translater + translateSpeed);
  // if (translater > 600){
  //   translateSpeed = 0;
  // }else if(translater > 500){
  //   translateSpeed = 5;
  // }else if(translater > 589){
  // translateSpeed = 1;
  // }else if(translater > 590){
  // translateSpeed = 0.5;
  // }
  // translater += translateSpeed;
  //}
  //scene2up();

void scene2(){
  
  
  Gradient sky = new Gradient(color(40, 119, 247), color(147, 212, 250));
  peasyGradients = new PeasyGradients(this);
  
  PVector v1 = new PVector(0,300);
  PVector v2 = new PVector(0,-100);
  peasyGradients.linearGradient(sky, v2 ,v1);
  
  
  
  if(framecounter2 > 120){
   translate(0,translater + translateSpeed);
   if (translater > 600){
     translateSpeed = 0;
   }else if(translater > 500){
     translateSpeed = 5;
   }else if(translater > 589){
   translateSpeed = 1;
   }else if(translater > 590){
   translateSpeed = 0.5;
   }
   translater += translateSpeed;
  }
  scene2up();
  
  
 










}

void scene2up(){

  pushMatrix();
  translate(0,chara - charaChange);
  
  pushMatrix();
  translate(0,-50);
  strokeFill(color(244, 209, 175));
  rect(-50,200,100,-200); 
  strokeFill(color(155, 181, 125));
  rect(-50,100,100,-100);
  strokeFill(color(0,0,0));
  rect(-50,200,100,-20);
  popMatrix();
  
  strokeFill(color(76, 48, 0));
  pushMatrix();
  translate(0,-60);
  beginShape();
  vertex(0,40);
  vertex(300,60);
  vertex(270,-20);
  vertex(-270,-20);
  vertex(-300,60);
  vertex(0,40);
  endShape();
  popMatrix();
  
  stroke(0,0,0);
  fill(0,0,0,100);
  
  pushMatrix();
  translate(0,-50);
  beginShape();
  vertex(0,60);
  vertex(-50,-200);
  vertex(-400,-200);
  vertex(0,60);
  endShape();
  popMatrix();
  
  popMatrix();
    
  strokeFill(color(6, 109, 194));
  rect(-500,-100,1000,-1000);
  
  strokeFill(color(6, 109, 194));
  pushMatrix();
  translate(0,-250);
  for (int i = -500 ; i < width/rwidth+10;i++){
  
    rect(i*rwidth,amp*sin(freq*(t+i))+200,rwidth,-100); 
  }
  t += dt;
  
  pushMatrix();
  translate(0,-350);
  scene2down();
  popMatrix();
  
  popMatrix();
  
  chara  += charaChange;
  if(chara < -5.0){
    charaChange = charaChange * -1;
  }else if(chara > 5.0){
    charaChange = charaChange * -1;
  }
}

void scene2down(){

  strokeFill(color(0,0,0,30));
  rect(-500,-900,1000,300);
  strokeFill(color(0,0,0,30));
  rect(-500,-900,1000,250);
  strokeFill(color(0,0,0,30));
  rect(-500,-900,1000,200);
  strokeFill(color(0,0,0,30));
  rect(-500,-900,1000,150);
  
  pushMatrix();
  translate(-40,30);
  scale(0.8);
  strokeFill(color(0,0,0,100));
  triangle(-200,-150,-160,-200,-120,-160);
  
  strokeFill(color(0,0,0,100));
  rect(-400,60,-60,20);
  rotate(radians(angle2 - angleChange));
  
  strokeFill(color(0,0,0,100));
  triangle(350,-130,460,-100,420,-160);
  
  strokeFill(color(0,0,0,100));
  rect(100,-100,-20,-70);
  
  strokeFill(color(0,0,0,100));
  triangle(250,150,260,180,220,160);
  popMatrix();
  
  pushMatrix();
  rotate(radians(angle1 + angleChange));
  strokeFill(color(72, 255, 0));
  triangle(-200,-150,-160,-200,-120,-160);

  strokeFill(color(100, 251, 255));
  rect(-400,60,-60,20);

  strokeFill(color(255, 236, 0));
  triangle(350,-130,460,-100,420,-160);
  
  strokeFill(color(176, 0, 255));
  rect(100,-100,-20,-70);

  strokeFill(color(255, 71, 0));
  triangle(250,150,260,180,220,160);
  
  strokeFill(color(212, 132, 244));
  triangle(0,50,60,90,-70,120);
  
  popMatrix();
  
  angle1 += angleChange;
  angle2 -= angleChange;

}
