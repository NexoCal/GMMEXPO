float charaaddX1 = -0.5;
float charaX1 = 0;
float charaaddY1 = -0.3;
float charaY1 = 0;
float charaaddX2 = 0.5;
float charaX2 = 0;

float charaaddX12 = -0.5;
float charaX12 = 0;
float charaaddY12 = -0.3;
float charaY12 = 0;

float move9 = 0;
float mover9 = 30;
float move92 = 0;
float mover92 = 30;

void scene9(){
  
  translate(width/2,height/2);
  scale(1,-1);
  
  if (framecounter9 > 240){
  pushMatrix();
  if(move92 < 700){
    translate(0,-700);
  }
  
  
  if (-move92 > -700){
    translate(0, move92 + mover92);
    move92 += mover92;
  
  }
  
  
  strokeFill(color(245, 232, 191));
  rect(-500,-80,1000,-410);
  
  pushMatrix();
  scale(1.2);
  translate(0,-110);
  if (charaX2 > 10){
    charaX2 = 0;
  }else{
    translate(0, charaX2 + charaaddX2);
    charaX2 += charaaddX2;
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
  triangle(-10,120,10,120,0,125); 
  popMatrix();
  
  pushMatrix();
  translate(0,-50);
  strokeFill(color(70, 70, 70));
  pushMatrix();
  scale(0.9);
  translate(20,-70);
  masses();
  translate(510,0);
  masses();
  popMatrix();
  
  
  strokeFill(color(80, 80, 80));
  pushMatrix();
  translate(0,-100);
  masses();
  translate(510,0);
  masses();
  popMatrix();
  popMatrix();
  popMatrix();
  
  }else{
  
  pushMatrix();
    if (framecounter9 > 200){
      translate(0,-move9 + mover9 );
      move9 += mover9;
    
    }
  pushMatrix();
  strokeFill(color(255, 240, 166));
  circle(-300,150,80);
  
  strokeFill(color(255, 255, 167));
  circle(-300,150,70);
  popMatrix();
    
  strokeFill(color(6,109,194));
  rect(-500,-80,1000,-410);
  
  strokeFill(color(245, 232, 191));
  landmass9();
  
  pushMatrix();
  translate(-70,-190);
  translate(charaX1 + charaaddX1, charaY1 + charaaddY1);
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
  triangle(-20,120,0,120,-10,125); 
  popMatrix();
  
  pushMatrix();
  translate(-100,-150);
  scale(1.8);
  boatlol9();
  popMatrix();
  
  pushMatrix();
  translate(120,-240);
  if (framecounter9 > 120){
  translate(charaX12 + charaaddX12, charaY12 + charaaddY12);
  charaX12 += charaaddX12;
  charaY12 += charaaddY12;
  }
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
  
  charaX1 += charaaddX1;
  charaY1 += charaaddY1;
  
  popMatrix();
  
  }
  
  
  
  



}
