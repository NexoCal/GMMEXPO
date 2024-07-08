int numDrops = 600; // Number of raindrops
Raindrop[] drops = new Raindrop[numDrops]; // Array to store raindrops



class Raindrop {
  float x, y; // Position of the raindrop
  float len; // Length of the raindrop
  float yspeed; // Speed of the raindrop

  Raindrop() {
    x = random(width+10);
    y = random(-500, -50); // Start the drops off-screen
    len = random(30, 40); // Random length for each drop
    yspeed = random(4, 10); // Random speed for each drop
  }

  void fall() {
    y = y + yspeed;
    yspeed = yspeed + 0.05; // Gravity effect

    if (y > height+100) {
      y = random(-200, -100);
      yspeed = random(4, 10);
    }
  }

  void show() {
    stroke(68, 122, 217); // Blue color for raindrop
    line(x, y, x, y + len);
  }
}
