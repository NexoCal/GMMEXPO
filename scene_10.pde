import ddf.minim.*; // Mengimpor library Minim

Minim minim;
AudioPlayer player;

float waveOffsetY = 0;
float waveSpeed = 10;
float sunX = 800, sunY = 100;
float waveAmplitude = 7; // Menurunkan ketinggian gelombang secara keseluruhan
float yoff = 0.5;
float anglea = 0;
float yoffIncrement = 0.05;  // Mengurangi kecepatan perubahan yoff
int startTime;
int displayDuration = 20000; // Durasi untuk teks dalam milidetik (20 detik)
int fadeInDuration = 1000; // Durasi animasi fade-in dalam milidetik
float alpha1 = 0;
float alpha2 = 0;
boolean text1Displayed = false;
boolean text2Displayed = false;
float treeMovementSpeed = 0.005; // Kecepatan pergerakan pohon
float treeOffset = 0;



void scene10() {
  // Menampilkan gambar latar belakang di seluruh layar
  drawBackground();

  // Gambar laut bergelombang
  drawWavySea();
  
  // Gambar matahari dengan efek glow
  drawSun(sunX, sunY);

  // Gambar awan di latar belakang
  drawClouds();

  // Pasir pantai
  fill(244, 164, 96);
  noStroke();
  rect(0, height * 3 / 4, width, height / 4);
  
  // Menghitung posisi X untuk pergerakan pohon
  float treeX1 = 50;  // Posisi pohon kelapa di sebelah kiri
  float treeX2 = width - 50;  // Posisi pohon kelapa di sebelah kanan

  // Menggambar pohon kelapa
  drawPalmTree(treeX1, height - 165, angle);
  drawPalmTree(treeX2, height - 165, -angle); // Gambar pohon kelapa sebelah kanan
  angle = 10 * sin(radians(frameCount));
  
  // Perbarui offset untuk animasi gelombang
  waveOffsetY += waveSpeed; // Menggunakan waveSpeed untuk kecepatan pergerakan gelombang

  // Tampilkan teks jika durasi belum melebihi 20 detik
  if (millis() - startTime < displayDuration) {
    if (!text1Displayed && millis() - startTime > 0) {
      alpha1 = min(255, (millis() - startTime) / (float)fadeInDuration * 255);
      if (millis() - startTime > fadeInDuration) {
        text1Displayed = true;
      }
    } else {
      alpha1 = 255;
    }
    if (!text2Displayed && millis() - startTime > 2000) { // Teks kedua muncul setelah 2 detik
      alpha2 = min(255, ((millis() - startTime) - 2000) / (float)fadeInDuration * 255);
      if (millis() - startTime > 2000 + fadeInDuration) {
        text2Displayed = true;
      }
    } else if (text2Displayed) {
      alpha2 = 255;
    }
  }

  // Display the text at the end to ensure it's on top
  displayText(alpha1);
  displayText2(alpha2);
}

void drawBackground() {
  background(135, 206, 235); // Latar belakang biru langit
  fill(255, 223, 186); // Warna pasir
  noStroke();
  rect(0, height * 3 / 4, width, height / 4); // Menambahkan pasir pantai
}

void drawWavySea() {
  // Gelombang utama
  fill(0, 119, 190);
  beginShape();
  float xoff = 0;
  for (float x = 0; x <= width; x += 10) {
    float y = map(noise(xoff, yoff), 0, 2, height / 2, height / 2 + 50);
    vertex(x, y);
    xoff += 0.10;  // Meningkatkan kecepatan perubahan gelombang
  }
  yoff += yoffIncrement;  // Mengurangi kecepatan perubahan yoff
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
}

void drawPalmTree(float x, float y, float angle) {
  pushMatrix();
  translate(x, y);
  rotate(radians(angle));
  stroke(139, 69, 19); // Warna batang pohon kelapa
  strokeWeight(10);
  line(0, 0, 0, -100); // Batang pohon
  fill(34, 139, 34); // Warna daun kelapa
  noStroke();
  for (int i = 0; i < 5; i++) {
    ellipse(0, -100, 50, 100);
    rotate(radians(72)); // Menyebarkan daun dalam lingkaran
  }
  popMatrix();
}

// Gambar matahari dengan efek glow
void drawSun(float x, float y) {
  // Menggambar matahari seperti di gambar yang diberikan
  noStroke();
  fill(255, 204, 0);
  ellipse(x, y, 80, 80);

  fill(255, 204, 0, 128);
  ellipse(x, y, 100, 100);

  fill(255, 204, 0, 64);
  ellipse(x, y, 120, 120);
}

// Gambar awan dengan lebih realistis
void drawClouds() {
  drawCloud(200, 100);
  drawCloud(400, 150);
  drawCloud(600, 80);
  drawCloud(850, 120);
}

void drawCloud(float x, float y) {
  // Menggambar awan seperti di gambar yang diberikan
  noStroke();
  fill(255);

  ellipse(x, y, 60, 40);
  ellipse(x + 30, y - 10, 50, 30);
  ellipse(x + 60, y, 60, 40);
  ellipse(x + 30, y + 10, 50, 30);
}

void displayText(float alpha) {
  fill(255, alpha);
  textSize(32);
  textAlign(CENTER, CENTER);
  text("Semenjak itu masyarakat mulai sadar", width / 2, height * 6.5 / 8);
}

void displayText2(float alpha) {
  fill(255, alpha);
  textSize(32);
  textAlign(CENTER, CENTER);
  text("dan menjaga ekosistem laut. TAMATT", width / 2, height * 8.7 / 10);
}
