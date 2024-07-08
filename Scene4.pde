float dt3 = 0.05;
float freq3 = 0.9;
float freq3a = 0.5;

float boatmove = 0;
float boatmover = 1;

void scene4(){
  
  translate(width/2,height/2);
  scale(1,-1);
  
  fill(6, 109, 194);
  stroke(6, 109, 194);
  pushMatrix();
  translate(0,-250);
  for (int i = -500 ; i < width/rwidth+10;i++){
  
    rect(i*rwidth,amp*sin(freq3a*(t+i))+200,rwidth,-100); 
  }
  t += dt3;
  popMatrix();
  


  pushMatrix();
  translate(180,-60);
  translate(600,0);
  if(boatmove <= 600){
   translate(-boatmove + boatmover, 0);
   boatmove += boatmover;
   if (boatmove >= 500){
     boatmover = 0.1;
   }
  }
  scale(0.9);
  strokeFill(color(244, 209, 175));
  rect(-50,200,100,-200);
  
  strokeFill(color(255, 255, 255));
  rect(-50,100,100,-100);
  strokeFill(color(194, 74, 74));
  rect(-50,100,25,-100);
  strokeFill(color(194, 74, 74));
  rect(50,100,-25,-100);
  strokeFill(color(194, 74, 74));
  rect(-50,50,100,-25);
  strokeFill(color(0,0,0));
  rect(-50,200,100,-20);
  strokeFill(color(123, 72, 35));
  triangle(-10,120,-30,120,-20,125); 
  popMatrix();
  
  pushMatrix();
  translate(80,-50);
  translate(600,0);
  if(boatmove <= 600){
   translate(-boatmove + boatmover, 0);
   boatmove += boatmover;
  }
  strokeFill(color(244, 209, 175));
  rect(-50,200,100,-200);
  
  strokeFill(color(255, 255, 255));
  rect(-50,100,100,-100);
  strokeFill(color(155, 181, 125));
  rect(-50,100,25,-100);
  strokeFill(color(155, 181, 125));
  rect(50,100,-25,-100);
  strokeFill(color(60,34,0));
  rect(-50,200,100,-20);
  strokeFill(color(123, 72, 35));
  triangle(-20,120,0,120,-10,115); 
  popMatrix();
  

  fill(6, 109, 194);
  stroke(6, 109, 194);
  rect(-500,-80,1000,-300);

  pushMatrix();
  translate(600,0);
  if(boatmove <= 600){
   translate(-boatmove + boatmover, 0);
   boatmove += boatmover;
  }
  boatlol();
  popMatrix();
  fill(6, 109, 194);
  stroke(6, 109, 194);
  pushMatrix();
  translate(0,-300);
  for (int i = -500 ; i < width/rwidth+10;i++){
  
    rect(i*rwidth,amp*sin(freq3*(t+i))+200,rwidth,-100); 
  }
  t += dt3;
  popMatrix();

}

void boatlol(){

  beginShape();
  strokeFill(color(90, 56, 12));
  vertex(0,0);
  bezierVertex(0,0, 70,-40 , 300,-20);
  bezierVertex(300,-20, 300,-50 , 250,-100);
  vertex(90,-160);
  bezierVertex(90,-160, -20,-60 ,0,0);
  endShape();
  beginShape();
  strokeFill(color(70, 44, 9));
  vertex(0,0);
  bezierVertex(0,0, -20,-20 ,-50,-30);
  bezierVertex(-50,-30, -50,-80 ,90,-160);
  bezierVertex(90,-160, -20,-60 ,0,0);
  endShape();

}
