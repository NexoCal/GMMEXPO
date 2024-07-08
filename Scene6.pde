void scene6(){
  
  PVector v1 = new PVector(0,500);
  PVector v2 = new PVector(0,-100);
  
  Gradient sky = new Gradient(color(53,53,53), color(127, 127, 127));
  peasyGradients = new PeasyGradients(this);
  
  peasyGradients.linearGradient(sky, v2 ,v1);
  
  translate(width/2,height/2);
  scale(1,-1);

  pushMatrix();
  scale(1,-1);
  rotate(radians(-10));
  translate(-500,-300);
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
  }
  popMatrix();
  
  pushMatrix();
  strokeFill(color(50, 50, 50));
  translate(-300,400);
  beginShape();
  
  vertex(0,0);
  vertex(300,0);
  vertex(300,-100);
  vertex(600,-100);
  vertex(600,-200);
  vertex(-200,-200);
  vertex(-200,-100);
  vertex(0,-100);
  vertex(0,0);
  
  endShape();
  popMatrix();
  
  pushMatrix();
  strokeFill(color(60, 60, 60));
  translate(200,350);
  beginShape();
  
  vertex(0,0);
  vertex(300,0);
  vertex(300,-100);
  vertex(600,-100);
  vertex(600,-200);
  vertex(-200,-200);
  vertex(-200,-100);
  vertex(0,-100);
  vertex(0,0);
  
  endShape();
  popMatrix();
  
  pushMatrix();
  strokeFill(color(94, 94, 94));
  translate(-500,300);
  beginShape();
  
  vertex(0,-20);
  vertex(300,-20);
  vertex(300,-100);
  vertex(600,-100);
  vertex(600,-200);
  vertex(-200,-200);
  vertex(-200,-100);
  vertex(0,-100);
  vertex(0,-20);
  
  endShape();
  popMatrix();





}
