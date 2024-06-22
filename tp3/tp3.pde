PImage ilusionref;
int cant = 8;
int tam;
void setup(){
  size(800,400);
    background(68,68,68);
  ilusionref = loadImage("ilusion.png");
 image(ilusionref,0,0,400,400); 
 tam = width/cant;
}
void draw(){
  dibujarTriangulosClaros();
  dibujarTriangulosOscuros();
}
