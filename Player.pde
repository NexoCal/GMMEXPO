import micycle.peasygradients.*;
import micycle.peasygradients.gradient.*;

PeasyGradients peasyGradients;
int uniframecounter = -900;
int framecounter1 = 0;
int framecounter2 = 0;
int framecounter3 = 0;
int framecounter4 = 0;
int framecounter5 = 0;
int framecounter6 = 0;
int framecounter7 = 0;
int framecounter8 = 0;
int framecounter9 = 0;
int framecounter10 = 0;

Gif queen;


void setup(){
  size(1000,600); //<>//
  frameRate(30);
  
  // Memuat GIF ikan dari file
  fishGif = new Gif(this, "pish.gif"); // Ganti "pish.gif" dengan nama file GIF ikan Anda
  fishGif.loop(); // Mulai loop animasi GIF

  queen = new Gif(this, "kidul.gif"); 
  queen.loop();
  // Inisialisasi posisi awal ikan
  xPosFish = -25; // Memulai dari bagian kiri tepi layar
  yPosFish = height / 2;
  
  // Inisialisasi posisi, ukuran, dan kecepatan setiap gelembung
  for (int i = 0; i < numBubbles; i++) {
    bubbleX[i] = random(width); // Posisi X acak di layar
    bubbleY[i] = height + random(200); // Posisi Y di bawah layar dengan variasi acak
    bubbleSize[i] = random(10, 30); // Ukuran acak antara 10 dan 30 piksel
    bubbleSpeed[i] = random(0.5, 2.0); // Kecepatan acak antara 0.5 dan 2.0 piksel per frame
  }
  
  for (int i = 0; i < numDrops; i++) {
    drops[i] = new Raindrop();
  }
}


void draw(){
  
  PVector v1 = new PVector(0,350);
  PVector v2 = new PVector(0,-100);
  
  Gradient sky = new Gradient(color(40, 119, 247), color(147, 212, 250));
  peasyGradients = new PeasyGradients(this);
  
  peasyGradients.linearGradient(sky, v2 ,v1);
  
  //PVector v1 = new PVector(0,500);
  //PVector v2 = new PVector(0,-100);
  
  
  //peasyGradients = new PeasyGradients(this);
  
  //peasyGradients.linearGradient(sky, v2 ,v1);
  
  
  
  if (uniframecounter < 300 && uniframecounter > 0){
    scene1();
    framecounter1++;
  }else if (uniframecounter > 300 && uniframecounter < 600){
    pushMatrix();
    translate(width/2,height/2);
    scale(1,-1);

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
  framecounter2++;
  popMatrix();
  }else if (uniframecounter > 600 && uniframecounter < 900){
  scene3();
  }else if (uniframecounter > 900 && uniframecounter < 1200){
  scene4();
  }else if (uniframecounter > 1200 && uniframecounter < 1500){
    background(0, 119, 190); // Warna biru laut
  for (int i = 0; i < numBubbles; i++) {
    // Gerakkan gelembung ke atas
    bubbleY[i] -= bubbleSpeed[i];
    
    // Menggambar gelembung
    noStroke();
    fill(255, 200); // Warna putih transparan
    ellipse(bubbleX[i], bubbleY[i], bubbleSize[i], bubbleSize[i]);
    
    // Jika gelembung mencapai atas layar, kembalikan ke bawah dengan posisi acak
    if (bubbleY[i] < -bubbleSize[i]) {
      bubbleY[i] = height + random(200); // Posisi Y di bawah layar dengan variasi acak
      bubbleX[i] = random(width); // Posisi X acak di layar
      bubbleSize[i] = random(10, 30); // Ukuran acak antara 10 dan 30 piksel
      bubbleSpeed[i] = random(0.5, 2.0); // Kecepatan acak antara 0.5 dan 2.0 piksel per frame
    }
  }
  
  // Menghitung posisi y ikan berdasarkan gelombang sinusoidal
  yPosFish = height / 2 + amplitude * sin(angle);
  
  // Gambar ikan dengan menggunakan GIF yang sudah dimuat
  image(fishGif, xPosFish, yPosFish, 250, 150);
  
  // Gerakkan ikan dengan mengubah posisi x
  xPosFish += 0.5; // Kecepatan horizontal ikan
  
  // Membuat ikan memantul saat mencapai tepi layar
  if (xPosFish > width + 25) {
    xPosFish = -25; // Reset posisi ikan ke kiri layar setelah keluar layar
  }
  
  // Update sudut untuk gelombang sinusoidal
  angle += frequency;
  }else if (uniframecounter > 1500 && uniframecounter < 1800){
  scene6();
  }else if (uniframecounter > 1800 && uniframecounter < 2100){
  scene7();
  }else if (uniframecounter > 2100 && uniframecounter < 2700){
  pushMatrix();
  sky = new Gradient(color(53,53,53), color(127, 127, 127));
  peasyGradients = new PeasyGradients(this);
  
  peasyGradients.linearGradient(sky, v2 ,v1);
  
  
  strokeFill(color(33, 52, 67));
  
  pushMatrix();
  translate(width/2,height/2);
  scale(1,-1);
  translate(0,-300);
  
  for (int i = -500 ; i < width/rwidth+10;i++){
  
    rect(i*rwidth,amp6aa*sin(freq6aa*(t6aa+i))+200,rwidth,-100); 
  }
  t6aa += dt6aa;
  popMatrix();
  
   pushMatrix();
  strokeFill(color(36, 59, 77));
  
  translate(width/2,height/2);
  scale(1,-1);
  
  translate(0,-330);
  for (int i = -500 ; i < width/rwidth+10;i++){
  
    rect(i*rwidth,amp6a*sin(freq6a*(t6a+i))+200,rwidth,-100); 
  }
  t6a += dt6a;
  popMatrix();
    
  image(queen,0,0);
  
  strokeFill(color(37, 64, 86));
  pushMatrix();
  translate(width/2,height/2);
  scale(1,-1);
  translate(0,-350);
  for (int i = -500 ; i < width/rwidth+10;i++){
  
    rect(i*rwidth,amp6*sin(freq6*(t6+i))+200,rwidth,-100); 
  }
  t6 += dt6;
  popMatrix();
  
  pushMatrix();
  translate(width/2,height/2);
  scale(1,-1);
  strokeFill(color(37, 64, 86));
  rect(-500,-180,1000,-300);
  popMatrix();
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(radians(-10));
  translate(-500,-300);
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
  }
  popMatrix();
  
  
  
  
  popMatrix();
  }else if (uniframecounter > 2700 && uniframecounter < 3200){
  scene9();
  framecounter9++;
  }else if (uniframecounter > 3200 && uniframecounter < 3500){
  scene10();
  }
  
  
  
  
  

  

  
  uniframecounter++;
}

void strokeFill(color x){
  fill(x);
  stroke(x);
}

void landmass9(){

  beginShape();
  
  vertex(-500,-100);
  bezierVertex(-500,-100,-350,-200,0,-150);
  bezierVertex(0,-150,250,-250,500,-200);
  vertex(500,-300);
  vertex(-500,-300);
  vertex(-500,-100);
  
  
  endShape();
}

void boatlol9(){
  
  strokeFill(color(90, 56, 12));
  beginShape();
  vertex(0,0);
  bezierVertex(0,0,40,-30,200,50);
  bezierVertex(200,50,200,0,190,-10);
  vertex(60,-60);
  bezierVertex(60,-60,20,-60,0,0);
  endShape();
  
  strokeFill(color(70, 44, 9));
  beginShape();
  vertex(0,0);
  vertex(120,50);
  vertex(200,50);
  bezierVertex(200,50,40,-30,0,0);
  endShape();

}

void masses(){

  beginShape();
  vertex(-500,0);
  vertex(-400,0);
  vertex(-400,30);
  vertex(-300,30);
  vertex(-300,-20);
  vertex(-200,-20);
  vertex(-200,10);
  vertex(-100,10);
  vertex(-100,30);
  vertex(0,30);
  vertex(0,-300);
  vertex(-500,-300);
  vertex(-500,0);
  endShape();

}
