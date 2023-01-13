
void setup(){
  println("Donner un entier entre 10 et 20 : ");
}

void draw(){
}

void keyPressed(){
  println(keyCode-48);
  if ((keyCode-48) <= 20 && (keyCode-48) >= 10){
    println("OK");
  }
  else{
    println("Donner un entier entre 10 et 20 : ");
  }
}


//debut
//nombre entier
//ecrire ("donner un entier")
//lire (nombre)
//if (nombre > 3 ou nombre < 1) alors
//debut
//ecrire ("ok")
//fin
//sinon
//debut
//ecrire ("not ok")
//fin
//fin
