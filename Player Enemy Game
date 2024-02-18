int [] x = new int[10];
int [] y = new int[10];
int [] speedx = new int[10];
int [] speedy = new int[10];
int s = 20;
int ex = round(random(width));
int ey = round(random(height));
int hx, hy;
int speedox;
int speedoy;
int score = 4;
void setup() {

  size(500, 500);
  for (int i=0; i<x.length; i++) {
    x[i] = floor(random(10));
    y[i] = floor(random(10));
    speedx[i] = floor(random(10));
    speedy[i] = floor(random(10));
  }
}

void draw() {

  background(0);
  fill (255, 255, 20);
  //player
  ellipse(ex, ey, s, s);
  fill (0, 255, 20);
  //helper
  ellipse(hx, hy, s, s);
  textSize(30);
  text("Score = "+score, 360, 40);
  //makes the enemy squares move around
  for (int i =0; i<x.length; i++) {
    fill(255);
    rect(x[i], y[i], s, s);
    x[i] = x[i]+speedx[i];
    y[i] = y[i]+speedy[i];

    //boxes move around

    if (x[i]<0) speedx[i]= 1;
    else if (x[i]>450) speedx[i]=-1;
    if (y[i]<0) speedy[i]=1;
    else if (y[i]>450) speedy[i]=-1;

    //boxes follow player
    if (x[i]<ex-20) x[i] = x[i]+1;
    if (x[i]>ex-20) x[i] = x[i]-1;
    if (y[i]<ey-20) y[i] = y[i]+1;
    if (y[i]>ey-20) y[i] = y[i]-1;

    //helper follows player
    if (hx < ex - 55) speedox = 1;
    if (hx > ex - 55) speedox = -1;
    if (hy < ey - 55) speedoy = 1;
    if (hy > ey - 55) speedoy = -1;

    hx = hx + speedox;
    hy = hy + speedoy;

    //helper touches the boxes and they go off the screen
    if (x[i] > hx && x[i] < hx + 30 && y[i] > hy && y[i] < hy + 30) {
      x[i] = 1000;
    }
    if (x[i] > ex && x[i] < ex + 20 && y[i] > ey && y[i] < ey + 20) {
      score = score-1;
    }
    if (score<=0) {
      exit();
    }
  }
}
//moves the player around
void keyPressed() {
  if (keyCode == LEFT && ex>(0+(s/2))) {
    ex = ex-20;
  }
  if (keyCode == RIGHT && ex<(500-(s/2))) {
    ex = ex+20;
  }
  if (keyCode == UP && ey>(0+(s/2))) {
    ey = ey-20;
  }
  if (keyCode == DOWN && ey<(500-(s/2))) {
    ey = ey+20;
  }
}
