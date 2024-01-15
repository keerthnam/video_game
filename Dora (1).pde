PImage dora;
PImage map;
PImage swiper;
float x = 140;
float y = 170;
float x3 = 300;
float y3 = 240;
float score = 0;
float health = 5;
float speedx, speedy;

void setup() {
  size(1280, 960);
  map = loadImage("map.png");
  dora = loadImage("dora.png");
  swiper = loadImage("swiper.png");
  speedx = 6;
  speedy = 6;
}

void draw() {
  background(255);
  image(dora, mouseX-50, mouseY-50, 200, 240);
  image(map, x, y, 100, 120);
  image(swiper, x3, y3, 100, 100);
  if (dist(mouseX, mouseY, x, y) < 50) {
    score = score+1;
    x = int (random(1280));
    y = int (random(960));
  }
  if (dist(mouseX, mouseY, x3, y3) < 50) {
    health = health-1;
    x3 = int (random(1280));
    y3 = int (random(960));
  }

  if (health<=0) {
    //fill(255);
    //rect(198,105,550,100);
    fill(255);
    background(0);
    textSize(100);
    text("Haha you lost ", 300, 300);
    text("Your score was: "+score, 300, 400);
  }
  x = x+speedx;
  y = y+speedy;

  if (x > 1180) speedx = -6;
  if (x < 0) speedx = 6;
  if (y > 840) speedy = -6;
  if (y < 0) speedy = 6;

  fill(0);
  textSize(50);
  text("Score: "+score, 200, 200);
  text("Health: "+health, 500, 200);
  if (x3<mouseX-50) x3 = x3+5;
  if (x3>mouseX-50) x3 = x3-5;
  if (y3<mouseY-50) y3 = y3+5;
  if (y3>mouseY-50) y3 = y3-5;

  //y3 = int (random(960));

}
