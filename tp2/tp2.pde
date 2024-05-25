PFont fuente;
PImage foto1, foto2, foto3;
float posX, posY;
int estado;
float opacidadTexto = 255;
int contador;
String texto1, texto2, texto3;

void setup() {
  size(640, 480);
  
  texto1= "La persistencia de la memoria es un famoso cuadro del pintor\nSalvador Dalí pintado en 1931. Realizado mediante la técnica del\nóleo sobre lienzo, es de estilo surrealista y sus medidas son\n 24 x 33 cm.";
  texto2= "La obra fue exhibida en la primera exposición individual de Dalí en la\nGalerie Pierre Colle de París, del 3 al 15 de junio de 1931.\nHoy se conserva en el Museo de Arte Moderno de Nueva York, donde\nllegó en 1934.";
  texto3="Salvador Dalí es conocido por sus impactantes y oníricas imágenes\nsurrealistas. Sus habilidades pictóricas se suelen atribuir a la\ninfluencia y admiración por el arte renacentista. La persistencia de la\nmemoria es una de sus pinturas más conocidas.";
  
  fuente = loadFont("ArialNarrow-Bold-32.vlw");
  textFont(fuente);
  
  foto1 = loadImage("data/foto1.png");
  foto2 = loadImage("data/foto2.png");
  foto3 = loadImage("data/foto3.png");
  
  estado = 1;
  contador = 0;
  posX = 0;
  posY = 320;
}


void draw(){
println("estado="+estado);

if ( estado == 1 ) {
  image( foto1, 0, 0, width, 375);
  fill(0, 0, 190);
  rect(0, 375, width, height);
  fill(255);
  textSize(23);
  text (texto1, 5, 400);
  
  contador++;
   if ( contador>=200 ) {
      estado++;
      contador = 0;
   }
} else if ( estado == 2 ) {
  image( foto1, 0, 0, width, 375);
  fill(0, 0, 190);
  rect(0, 375, width, height);
  fill (255, opacidadTexto);
  textSize(23);
  text (texto1, 5, 400);
  
  opacidadTexto-=3;
    if (opacidadTexto<=0) {
      estado = 3;
      contador = 0;
      posX = 20;
      posY = 320;
      opacidadTexto = 255;
    }
} else if (estado == 3 ) {
  
  image( foto2, 0, 0, width, 375);
  fill(0, 0, 190);
  rect(0, 375, width, height);
  fill(255);
  textSize(23);
  text (texto2, 5, 400);
  
  contador++;
  if ( contador>=200 ) {
  estado++;
  contador = 0;
    }
} else if ( estado == 4 ) {
    image( foto2, 0, 0, width, 375);
  fill(0, 0, 190);
  rect(0, 375, width, height);
  fill (255, opacidadTexto);
  textSize(23);
  text (texto2, 5, 400);
  
  opacidadTexto-=3;
  if (opacidadTexto<=0) {
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
      opacidadTexto = 255;
}
} else if (estado == 5 ) {
  
 image( foto3, 0, 0, width, 375);
 fill(0, 0, 190);
 rect(0, 375, width, height);
 fill(255);
 textSize(23);
 text (texto3, 5, 400);
  
  contador++;
  if ( contador>=200 ) {
  estado++;
  contador = 0;
    }
} else if ( estado == 6 ) {
    image( foto3, 0, 0, width, 375);
  fill(0, 0, 190);
  rect(0, 375, width, height);
  fill (255, opacidadTexto);
  textSize(23);
  text (texto3, 5, 400);
  
  opacidadTexto-=3;
  if (opacidadTexto<=0) {
      estado = 7;
      contador = 0;
      posX = 20;
      posY = 320;
      opacidadTexto = 255;
}
} else if ( estado == 7 ) {
    background(0, 0, 190);
    if ( mouseX>245 && mouseX<245+150
      && mouseY >160 && mouseY<160+80 ) {
      fill(0, 255, 0);
    } else {
      fill(200);
    }
    rect( 245, 160, 150, 80);
    fill(255);
    text("Reiniciar", 280, 205);
}
} 
void mousePressed() {
  if ( estado==7) {
    if ( mouseX>245 && mouseX<245+150
      && mouseY >160 && mouseY<160+80 ) {
      estado = 1;
    }
  } else {
    estado++;
    contador = 0;
    posX = 20;
  }
}
