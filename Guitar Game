int x = 50;
int y = 100;
int x2 = 150;
int y2 = 100;
int x3 = 450;
int y3 = 100;
int score = 1;
int sped1 = 4;
int sped2 = 3;
int screen = 1;
int count = 250;

void setup() {
  size(640, 480);
}
void draw() {
  if (screen == 1) {
    background(0);
    text("Score: "+score, 430, 50);
    textSize(50);
    if (y > 380|| y2 > 380) {
      fill(0, 255, 0);
    } else {
      fill(255, 0, 0);
    }
    if (score >= 25) {
      screen = 2;
    }

    rect(0, 380, 640, 100);
    fill(255);
    rect(100, 0, 5, 480);
    rect(200, 0, 5, 480);
    rect(300, 0, 5, 480);
    rect(400, 0, 5, 480);
    fill(0);
    text("A", 30, 440);
    text("S", 130, 440);
    text("D", 230, 440);
    text("F", 330, 440);

    y = y + sped1;
    fill(255);
    ellipse(x, y, 50, 50);

    y2 = y2 + sped2;
    fill(255);
    ellipse(x2, y2, 50, 50);

    if (y2 > 480) {
      y2 = 0;

      if (random(10) < 5) {
        x2 = 150;
      } else {
        x2 = 350;
      }
    }

    if (y > 480) {
      y = 0;

      if (random(10) < 5) {
        x = 50;
      } else {
        x = 250;
      }
    }
  } else if (screen == 2) {
    score = 0;
    background(0);
    textSize(70);
    text("Good Job", 175, 200);
    text("Next Level", 175, 300);
    text("Ready in 5..4..3..2..1", 25, 400);
    count = count-1;
    if (count <= 0) {
      screen = screen+1;
    }
  } else if (screen == 3) {
    background(0);
    text("Score: "+score, 505, 50);
    textSize(35);
    if (y > 380|| y2 > 380 || y3 > 380) {
      fill(0, 255, 0);
    } else {
      fill(255, 0, 0);
    }

    rect(0, 380, 640, 100);
    fill(255);
    rect(100, 0, 5, 480);
    rect(200, 0, 5, 480);
    rect(300, 0, 5, 480);
    rect(400, 0, 5, 480);
    rect(400, 0, 5, 480);
    rect(500, 0, 5, 480);
    fill(0);
    text("A", 30, 440);
    text("S", 130, 440);
    text("D", 230, 440);
    text("F", 330, 440);
    text("G", 430, 440);

    y = y + sped1;
    fill(255);
    ellipse(x, y, 50, 50);

    y2 = y2 + sped2;
    fill(255);
    ellipse(x2, y2, 50, 50);

    y3 = y3 + 4;
    fill(255);
    ellipse(x3, y3, 50, 50);

    if (y3 > 480) {
      y3 = 0;

      if (y2 > 480) {
        y2 = 0;
      }

      if (random(10) < 5) {
        x2 = 150;
      } else {
        x2 = 350;
      }
    }

    if (y > 480) {
      y = 0;

      if (random(10) < 5) {
        x = 50;
      } else {
        x = 250;
      }
    }
    if (score >= 50) {
      screen = screen+1;
    } else if (screen == 4) {
      background(0);
      textSize(70);
      text("Good Job", 175, 200);
      text("You Won", 175, 300);
      text("Your Score Was: "+score, 150, 400);
    }
  }
}
void keyPressed() {
  if (y < 430||y2 < 430||y3 < 430) {
    if (((key == 'a' && x == 50) || (key == 'd' && x == 250)) || ((key == 's' && x2 == 150) || (key == 'f' && x2 == 350)|| (key == 'g' && x3 == 450))) {
      score = score+1;
    } else {
      score = score-1;
    }
  } else score = score-1;
}
