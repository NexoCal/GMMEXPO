int sun1 = 0;
int sun1add = 20;

int ocean1 = 0;
int ocean1add = 50;

int backland1 = 0;
int backland1add = 100;

int landmass1 = 0;
int landmass1add = 100;

int scene1mover = 0;
int scene1adder = 200;
void scene1(){
  
  translate(width/2,height/2);
  scale(1,-1);
  
  if(uniframecounter > 290){
    translate(scene1mover + scene1adder,0);
    scene1mover += scene1adder;
  }
  
  if (framecounter1 > 2){
  pushMatrix();
  translate(0,400);
  translate(0,-sun1 + sun1add);
  strokeFill(color(255, 240, 166));
  circle(-300,150,80);
  
  strokeFill(color(255, 255, 167));
  circle(-300,150,70);
  popMatrix();
  if (sun1 <= 400){
  sun1 += sun1add;
  }
  }
  if (framecounter1 > 4){
  pushMatrix();
  translate(-1000,0);
  translate(ocean1 + ocean1add,0);
  fill(6, 109, 194);
  stroke(6, 109, 194);
  rect(-500,-80,1000,-300);
  popMatrix();
  
  if (-ocean1 > -950){
  ocean1 += ocean1add;
  }
  }
  
  if (framecounter1 > 6){
  pushMatrix();
  translate(1000,0);
  translate(-backland1 + backland1add,0);
  stroke(247, 239, 213);
  fill(247, 239, 213);
  backland();
  popMatrix();
  
  if (-backland1 >= -800){
  backland1 += backland1add;
  }
  }
  
  
  if (framecounter1 >8){
  pushMatrix();
  translate(800,0);
  translate(-landmass1 + landmass1add, 0);
  fill(255, 241, 196);
  stroke(245, 232, 191);
  landmass();
  popMatrix();
  
  if (-landmass1 >= -800){
  landmass1 += landmass1add;
  }
  }
}
