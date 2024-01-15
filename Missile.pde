ArrayList<Integer> initialx = new ArrayList<Integer>();
ArrayList<Integer> initialy = new ArrayList<Integer>();
ArrayList<Integer> triggerx = new ArrayList<Integer>();
ArrayList<Integer> triggery = new ArrayList<Integer>();

ArrayList<Integer> ex = new ArrayList<Integer>();
ArrayList<Integer> ey = new ArrayList<Integer>();

ArrayList<Integer> x = new ArrayList<Integer>();
ArrayList<Integer> y = new ArrayList<Integer>();
ArrayList<Integer> z = new ArrayList<Integer>();

int [] p = new int[100];
int [] s = new int[100];

void setup() {

  size(500, 500);
  for (int i=0; i<p.length; i++) {
    p[i] = floor(random(400));
    s[i] = floor(random(500));
  }
}

void draw() {

  background(0);

  for (int q = 0; q<initialx.size(); q++) {
    //2 ellipses for explosion
    fill(93, 126, 240);
    ellipse(initialx.get(q), initialy.get(q), 20, 20);
    fill(252, 3, 198);
    ellipse(triggerx.get(q), triggery.get(q), 10, 10);

    //makes the pink trigger ball go to the explosion site where mouse is clicked
    if (triggerx.get(q)<initialx.get(q)) {
      triggerx.set(q, triggerx.get(q)+1);
    }
    if (triggerx.get(q)>initialx.get(q)) {
      triggerx.set(q, triggerx.get(q)-1);
    }
    if (triggery.get(q)<initialy.get(q)) {
      triggery.set(q, triggery.get(q)+1);
    }
    if (triggery.get(q)>initialy.get(q)) {
      triggery.set(q, triggery.get(q)-1);
    }

    //checks if trigger ball is on the explosion site, if true, it explodes
    if (dist(initialx.get(q), initialy.get(q), triggerx.get(q), triggery.get(q))<10) {
      x.add(initialx.get(q));
      y.add(initialy.get(q));
      z.add(5);
      initialx.remove(q);
      initialy.remove(q);
      triggerx.remove(q);
      triggery.remove(q);
    }
  }

  //makes the squares float around the screen, resets when they go off the screen
  for (int i =0; i<p.length; i++) {
    fill(255);
    rect(p[i], s[i], 10, 10);
    p[i] = p[i]+2;
    if (p[i]>500) p[i]= 1;


    for (int q = 0; q<initialx.size(); q++) {

      //checks to see if the trigger ball hits any squares along the way, if it does, they explode
      if ((dist(triggerx.get(q), triggery.get(q), p[i]+10, s[i]+10)<50)) {
        x.add(p[i]);
        y.add(s[i]);
        z.add(5);
        Explosion(p[i], s[i], 5);
        p[i] = -1000;
      }
    }
  } //makes the explosion happen, the values are inputted from the arraylists
  for (int i = 0; i<x.size(); i++) {
    Explosion(x.get(i), y.get(i), z.get(i));
    if (z.get(i) < 200) {
      z.set(i, z.get(i)+5);
    }
  }
}
// takes values for where explosion will happen
void mousePressed() {
  initialx.add(mouseX);
  initialy.add(mouseY);
  triggerx.add(int(random(500)));
  triggery.add(0);
}

//makes the explosion happen and is colourful
void Explosion(int x, int y, int z) {
  if (z < 75) {
    noStroke();
    fill(247, 244, 161);
    ellipse(x, y, z+140, z+140);
    fill(246, 250, 12);
    ellipse(x, y, z+120, z+120);
    fill(252, 223, 33);
    ellipse(x, y, z+100, z+100);
    fill(247, 201, 62);
    ellipse(x, y, z+80, z+80);
    fill(250, 187, 50);
    ellipse(x, y, z+60, z+60);
    fill(245, 143, 42);
    ellipse(x, y, z+40, z+40);
    fill(245, 106, 42);
    ellipse(x, y, z+20, z+20);
    fill(250, 50, 50);
    ellipse(x, y, z, z);
  }
}
