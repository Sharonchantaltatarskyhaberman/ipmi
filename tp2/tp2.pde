//Sharon Chantal Tatarsky Haberman
//Comisión1 Trabajo N°2
//Legajo 119153/9
PFont fuente;
String pantalla;
int segundos;
PImage okko, okko2, okko3, okko4;

String esc, dos, tres, cuatro;
int mov;

//BOTON
boolean button=false;
int x=500;
int y=440;
int w=150;
int h=150;

int alphaValue = 0;

void setup() {
  size(640, 480);

  mov=height;

  fuente = loadFont("DejaVuSans-Bold-30.vlw");
  textFont(fuente, 30);
  pantalla ="titulo";
  textSize(30);
  esc="OK KO seamos heroes! Creador y director: Ian jones Quartey,sub directores:Toby jones,Dve Tennat,Kristy Reed,Aaron Brewer,Brian Sheesley,Antonio Gonella. ";
  dos=" Producción: Laura Allen,Becky Jang,Allie Splain,Adam hazem. Diseño de personajes: Daniel Hynes, Damon Moran,Julia Srednicki,Nicollete Wood,Brandon Wu.";
  tres="Diseño de fondos:Ryan Cecil Smith,Emily Walus,Kali Ciesemier,Jessica Yost.Animatics: Nick Veith,Max Collins,Anna Craig,Supervisores:Tony Tedfort";
  cuatro="Estudios de animación Cartoon Network  ¡Gracias por ver esté show!";
  //loadimage
  okko = loadImage("okko.jpg");
  okko2 = loadImage("okko2.jpg");
  okko3 = loadImage("okko3.jpg");
  okko4 = loadImage("okko4.jpg");

}
void draw() {
  background(0);
  fill(200);
  text(segundos, 400, 50);
  if (pantalla.equals("inicio")) {
    fill(250,0,0);
    //imagen
    image(okko, 0, 0, 640, 480);
    //movimiento
    textAlign(TOP, CENTER); 
    textAlign(CENTER);
    text(esc, 100, mov, 440, 400);
    if (mov>100) {
      mov --;
    }
    //segunda pantalla
  } else if (pantalla.equals("dos")) {
    fill(150,76,130);
    //imagen
    image(okko2, 0, 0, 640, 480);
    //movimiento
    textAlign(TOP, CENTER); 
    textAlign(CENTER);
    text(dos, 100, mov, 440, 400);
    if (mov>100) {
      mov --;
    }
    //tercera pantalla
  } else if (pantalla.equals("tres")) {
    fill(0,70,155);
    //imagen
    image(okko3, 0, 0, 640, 480);
    //movimiento
    textAlign(TOP, CENTER); 
    textAlign(CENTER);
    text(tres, 100, mov, 440, 400);
    if (mov>100) {
      mov --;
    }
    //final pantalla
  } else if (pantalla.equals("final")) {
    //imagen
    image(okko4, 0, 0, 640, 480);
    //movimiento
    textAlign(TOP, CENTER); 
    textAlign(CENTER);
    fill(255, alphaValue); // color alpha
    text(cuatro, 100, mov, 440, 400);
    if (mov > 100) {
      mov --;
    }
    if (alphaValue < 255) { //Transparencia+
      alphaValue += 2;
    }
    //botón 
    fill(120, 0, 180);
    noStroke();
    rect(x, y, w, h);
    fill(255);
    text("reiniciar", 570, 475);
  }

  if (frameCount%60== 0) {
    segundos++;
  }
  if (segundos<5) {
    pantalla = "inicio";
  } else if (segundos>=5 && segundos<=6) {
    pantalla = "dos";
  } else if (segundos >=6 && segundos <=8) {
    pantalla = "tres";
  } else {
    pantalla = "final";
  }
}
void mousePressed() {
  if ((mouseX > x) && (mouseY< x + w )&&
    (mouseY>y) && (mouseY < y+h && mousePressed)){
    if (button){
      button=false;
    } else {
      button=true;
      pantalla = "inicio";
      segundos = 0;
      mov=height;
    }
  }
}
