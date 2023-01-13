int rows = 6;
int cols = 7;
int [][] t = new int [rows][cols];
int tour = 0;

void initialisation(){ 
// permet de mettre des 0 à l'intérieur de la matrice
  for (int i = 0; i < rows; i = i + 1){
    for (int j = 0; j < cols; j = j + 1){
      t [i][j] = 0;
    }
  }
}

void affichageConsole(){
  println("-------------------------------------------------");
// affiche dans la console la matrice
  for (int i = 0; i < rows; i = i + 1){
     for (int j = 0; j < cols; j = j + 1){
       print(t[i][j]);
     }
  println();
  }
}

void setup(){
  size (700, 600);
  background(253, 63, 146);
  initialisation();
  affichageConsole();
}

void draw(){
  for (int i = 0; i < rows; i = i + 1){
    for (int j = 0; j < cols; j = j + 1){ 
      if (t[i][j] == 0){
        fill(255);
        ellipse(50+100*j, 50+100*i, 100, 100);
      }
      if (t[i][j] == 1){
        fill(0, 0, 255);
        ellipse(50+100*j, 50+100*i, 100, 100);
      }
      if (t[i][j] == 2){
        fill(255, 0, 0);
        ellipse(50+100*j, 50+100*i, 100, 100);
      }
    }
  }
  if (victoire_en_colonne() || victoire_en_ligne() || victoire_en_diagonal_montante() || victoire_en_diagonal_descendante()){
    fill(0);
    textSize(35);
    text("Gagner ! ", 300 , height/2);
  }
}

void mousePressed(){

  int i = 0;
  if ((int) (mouseX/100) >= 0 && (int) (mouseX/100) < cols){
    while ( i < rows && t[i][(int) (mouseX/100)] == 0){
      i = i + 1;
    }
    if (i != 0){
      tour = tour + 1;
      if (tour%2 == 0){
        t[i-1][(int) (mouseX/100)] = 1;
      }
      if (tour%2 == 1){
        t[i-1][(int) (mouseX/100)] = 2;
      }
    }
  }
  affichageConsole();
}

boolean victoire_en_colonne(){ 
  for (int j = 0; j < cols; j = j + 1){
    for (int i = 0; i < rows-3; i = i + 1){
      if (t[i][j] != 0 && t[i][j] == t[i+1][j] && t[i+1][j] == t[i+2][j] && t[i+2][j] == t[i+3][j]){
        return true; 
      }
    }
  }
  return false;
}

boolean victoire_en_ligne(){ 
  for (int i = 0; i < rows; i = i + 1){
    for (int j = 0; j < cols-3; j = j + 1){
      if (t[i][j] != 0 && t[i][j] == t[i][j+1] && t[i][j+1] == t[i][j+2] && t[i][j+2] == t[i][j+3]){
        return true; 
      }
    }
  }
  return false;
}

boolean victoire_en_diagonal_montante(){ 
  for (int i = 3; i < rows; i = i + 1){
    for (int j = 0; j < cols-3; j = j + 1){
      if (t[i][j] != 0 && t[i][j] == t[i-1][j+1] && t[i-1][j+1] == t[i-2][j+2] && t[i-2][j+2] == t[i-3][j+3]){
        return true; 
      }
    }
  }
  return false;
}

boolean victoire_en_diagonal_descendante(){ 
  for (int i = 0; i < rows-3; i = i + 1){
    for (int j = 0; j < cols-3; j = j + 1){
      if (t[i][j] != 0 && t[i][j] == t[i+1][j+1] && t[i+1][j+1] == t[i+2][j+2] && t[i+2][j+2] == t[i+3][j+3]){
        return true; 
      }
    }
  }
  return false;
}

void keyPressed(){
  int i = 0;
  if (keyCode >= 48 && keyCode < (48+cols)){
    while ( i < rows && t[i][keyCode-48] == 0){
      i = i + 1;
    }
    if (i != 0){
      tour = tour + 1;
      if (tour%2 == 0){
        t[i-1][keyCode-48] = 1;
      }
      if (tour%2 == 1){
        t[i-1][keyCode-48] = 2;
      }
    }
  }
  affichageConsole();
}
