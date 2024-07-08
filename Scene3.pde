float charaaddX13 = -0.1;
float charaX13 = 0;
float charaaddY13 = -0.08;
float charaY13 = 0;

void scene3(){
  
  translate(width/2,height/2);
  scale(1,-1);

  fill(6, 109, 194);
  stroke(6, 109, 194);
  rect(-500,110,1000,-410);
  
  stroke(247, 239, 213);
  fill(247, 239, 213);
  landmass3();
  
  pushMatrix();
  
  translate(100,-50);
  
  pushMatrix();
  translate(0,-50);
  translate(charaX13 + charaaddX13, charaY13 + charaaddY13);
  charaX13 += charaaddX13;
  charaY13 += charaaddY13;
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
  triangle(10,120,30,120,20,115); 
  popMatrix();
  
  pushMatrix();
  translate(150,-50);
  translate(charaX13 + charaaddX13, charaY13 + charaaddY13);
  charaX13 += charaaddX13;
  charaY13 += charaaddY13;
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
  
  
  
  popMatrix();

}

void landmass3(){

  beginShape();
  vertex(500,100);
  bezierVertex(250,100,250,100,0,80);
  bezierVertex(300,50,200,-50,-500,-100);
  vertex(-500,-300);
  vertex(500,-300);
  vertex(500,100);
  endShape();



}
