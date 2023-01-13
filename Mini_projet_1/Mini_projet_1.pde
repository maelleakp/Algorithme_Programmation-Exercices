PImage grenouille;
PImage voiture;
float x_grenouille;
float y_grenouille;
int taille;
int x_voiture;
int y_voiture;
int vitesse;
int couleur_route;
int score;


void setup(){
  size (400, 600);
  background (143, 188, 143);
  couleur_route = #808080;
  grenouille = loadImage("th.jpeg");
  voiture = loadImage("th3.jpeg");
  taille = 25;
  x_grenouille = (width / 2) - taille / 2;
  y_grenouille = height - taille;
  x_voiture = 0;
  y_voiture = 403;
  vitesse = 3;
  score = 0;
}


void draw(){
  fill(couleur_route);
  rect (0, 400, 400, 60);
  stroke(155);
  line(0, 430, 400, 430);
  fill(135, 206, 250);
  rect (0, 100, 400, 50);
  
  image(voiture, x_voiture, y_voiture, 25, 25);
  if (x_voiture >= width){
    x_voiture = 1;
  }

  x_voiture = x_voiture + vitesse;
  
  if (y_grenouille < 400 - taille){
    //score ++;
    print (score);
    y_grenouille = 100;
    textSize(30);
    fill(0);
    text ("Score = 1", 125, height/2);
  }
  
  if ((y_grenouille >= y_voiture && y_grenouille <= y_voiture + 25) && (x_grenouille >= x_voiture && x_grenouille <= x_voiture + 50)){
    y_grenouille = height - taille;;
    textSize(30);
    fill(0);
    text ("Perdu...", 125, height/2);
  } 
  
  image(grenouille, x_grenouille, y_grenouille, taille, taille);
  
}

void mousePressed(){
  if (mouseButton == LEFT){
    y_grenouille = y_grenouille - 10;
  }
  if (mouseButton == RIGHT){
    y_grenouille = y_grenouille + 10;
  }
  background(143, 188, 143);
}
