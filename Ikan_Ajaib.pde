import gifAnimation.*;

Gif fishGif; // Variabel untuk menyimpan gambar GIF ikan
float xPosFish, yPosFish;
float amplitude = 50; // Amplitudo gelombang
float frequency = 0.01; // Frekuensi gelombang
float angle = 0;

int numBubbles = 50; // Jumlah gelembung diperbanyak menjadi 50
float[] bubbleX = new float[numBubbles]; // Array posisi X gelembung
float[] bubbleY = new float[numBubbles]; // Array posisi Y gelembung
float[] bubbleSize = new float[numBubbles]; // Array ukuran gelembung
float[] bubbleSpeed = new float[numBubbles]; // Array kecepatan gelembung




//void draw() {
//  // Gambar latar belakang dengan warna biru
//  background(0, 119, 190); // Warna biru laut
  
//  // Menggambar gelembung
//  for (int i = 0; i < numBubbles; i++) {
//    // Gerakkan gelembung ke atas
//    bubbleY[i] -= bubbleSpeed[i];
    
//    // Menggambar gelembung
//    noStroke();
//    fill(255, 200); // Warna putih transparan
//    ellipse(bubbleX[i], bubbleY[i], bubbleSize[i], bubbleSize[i]);
    
//    // Jika gelembung mencapai atas layar, kembalikan ke bawah dengan posisi acak
//    if (bubbleY[i] < -bubbleSize[i]) {
//      bubbleY[i] = height + random(200); // Posisi Y di bawah layar dengan variasi acak
//      bubbleX[i] = random(width); // Posisi X acak di layar
//      bubbleSize[i] = random(10, 30); // Ukuran acak antara 10 dan 30 piksel
//      bubbleSpeed[i] = random(0.5, 2.0); // Kecepatan acak antara 0.5 dan 2.0 piksel per frame
//    }
//  }
  
//  // Menghitung posisi y ikan berdasarkan gelombang sinusoidal
//  yPosFish = height / 2 + amplitude * sin(angle);
  
//  // Gambar ikan dengan menggunakan GIF yang sudah dimuat
//  image(fishGif, xPosFish, yPosFish, 250, 150);
  
//  // Gerakkan ikan dengan mengubah posisi x
//  xPosFish += 0.5; // Kecepatan horizontal ikan
  
//  // Membuat ikan memantul saat mencapai tepi layar
//  if (xPosFish > width + 25) {
//    xPosFish = -25; // Reset posisi ikan ke kiri layar setelah keluar layar
//  }
  
//  // Update sudut untuk gelombang sinusoidal
//  angle += frequency;
//}

//void stop() {
//  bgMusic.close();
//  minim.stop();
//  super.stop();
//}
