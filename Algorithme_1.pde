int a;
int direction_a;
int direction_b;
int taille;
int b;
int mode;

void setup (){
  size(400, 600);
  taille = 20;
  background(203, 153, 201);
  a = 10;
  direction_a = 5;
  direction_b = 5;
  b = 10;
  mode = 0;
}
void draw(){
  if (mode % 2 == 0){
    if (a >= width){
      direction_a = -1*direction_a;
    }
    if (a <= 0){
      direction_a = -1*direction_a;
    }
    if (b >= height){
      direction_b = -1*direction_b;  
    }
    if (b <= 0){
      direction_b = -1*direction_b;
    }
  }
  if (mode % 2 == 1){
    if (a >= width){
      a = 1;
    }
    if (a <= 0){
      a = width;
    }
    if (b >= height){
      b = 1;
    }
    if (b <= 0){
      b = height;
    }
  }
  a = a + direction_a;
  b = b + direction_b;
  background(203, 153, 201);
  ellipse(a, b, taille, taille);
}

void mousePressed(){
  if (mouseButton == LEFT){
    a = mouseX;
    b = mouseY;
  }
}

void keyPressed() {
  if (key == 'a'){
    mode = mode + 1;
  }
}
