   color Color1, Color2;
void dibujarTriangulosOscuros(){
noStroke();
 Color1 = 20;
 //triangulos oscuros inferiores
  for (int x=0; x<cant; x++) {
    fill(Color1);
    triangle(400+x*tam, 0, 500+x*tam, 0, 450+x*tam, 50);
            for (int y=0; y<cant; y++) {
    triangle(400+y*tam, 200, 500+y*tam, 200, 450+y*tam, 250);
  }
}
 //triangulos oscuros superiores  
   for (int x=0; x<cant; x++) {
    triangle(400+x*tam, 200, 500+x*tam, 200, 450+x*tam, 150);
            for (int y=0; y<cant; y++) {
    triangle(400+y*tam, 400, 500+y*tam, 400, 450+y*tam, 350);
  } } }
  
  
  void dibujarTriangulosClaros(){
    noStroke();
    Color2 = color(238, 238, 238);
 //triangulos claros superiores    
    for (int x=0; x<cant; x++) {
               if( mousePressed ){
    Color2 = color( random(255),random(255),random(255));
  }
    fill(Color2);
    triangle(400+x*tam, 100, 500+x*tam, 100, 450+x*tam, 50);
        for (int y=0; y<cant; y++) {
    triangle(400+y*tam, 300, 500+y*tam, 300, 450+y*tam, 250);
  }
   } 
 //triangulos claros inferiores
     for (int x=0; x<cant; x++) {
         if( mousePressed ){
    Color2 = color( random(255),random(255),random(255));
  }
  fill (Color2);
    triangle(400+x*tam, 100, 500+x*tam, 100, 450+x*tam, 150);
        for (int y=0; y<cant; y++) {
    triangle(400+y*tam, 300, 500+y*tam, 300, 450+y*tam, 350); 
   }   } }
