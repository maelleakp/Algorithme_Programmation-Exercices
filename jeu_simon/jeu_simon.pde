int cx, cy; 
int [] tableau;

float distance (int x, int y, int cx, int cy){
  float a = sqrt ((x - cx)*(x - cx) + (y - cy)*(y - cy));
  return a;
}


void setup(){
  size(400, 400);
  cx = width / 2;
  cy = height / 2;
  background(125);
  strokeWeight(4);
  fill(0, 0, 255);
  arc(cx, cy, width, height, 0, HALF_PI);
  fill(255,0,0);
  arc(cx, cy, width, height, HALF_PI, PI);
  fill(255,255,0);
  arc(cx, cy, width, height, PI, PI+HALF_PI);
  fill(0,255,0);
  arc(cx, cy, width, height, PI+HALF_PI , 2*PI);
  line(cx, 0, cx, height);
  line(0, cy, width, cy);
  fill(0);
  ellipse(200, 200, 200, 200);
  fill(255);
  textSize(40);
  text ("Niveau 1", 125, 210);
  tableau = new int[4];
}

void draw(){
}

void mousePressed(){
    int x = mouseX;
    int y = mouseY;
    if (distance(x, y, cx, cy) <= 100){
      println("dans le cercle noir");
    }
    else {
      println ("pas dans le cercle");
    }
    for (int i = 0; i < 4; i = i + 1){
      tableau[i] = (int)random(1, 4);
      if (tableau[i] == 1){
        fill(0, 0, 260);
        arc(cx, cy, width, height, 0, HALF_PI);
      }
      if (tableau[i] == 2){
        fill(260,0,0);
        arc(cx, cy, width, height, HALF_PI, PI);
      }
      if (tableau[i] == 3){
        fill(260,260,0);
        arc(cx, cy, width, height, PI, PI+HALF_PI);
      }
      if (tableau[i] == 4){
        fill(0,260,0);
        arc(cx, cy, width, height, PI+HALF_PI , 2*PI);
      }
    } 
}
