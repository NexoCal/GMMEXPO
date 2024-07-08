void landmass(){

  beginShape();
  vertex(500,-140);
  vertex(-300,-150);
  bezierVertex(100,-180,400,-200,-200,-250);
  vertex(100,-260);
  vertex(-400,-300);
  vertex(500,-300);
  vertex(500,-140);
  endShape();

}

void backland(){

  beginShape();
  vertex(500,-80);
  vertex(-100,-80);
  bezierVertex(0,-50,100,-50,80,-50);
  bezierVertex(160,-30,200,-30,300,-30);
  bezierVertex(380,-30,420,-10,500,-10);
  
  endShape();

}
