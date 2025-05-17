//Sharon Chantal tatarsky haberman
//tp2 com5
//Legajo 119153/9

PImage img, ci2, ci3, ci4, ci5;
PFont fuente,fuente2;
int variable;
String pantalla;
String one, dos, tres, cuatro, cinco; //textos
int mov,mov2;
int segundos;


//BOTON
boolean button=false;
int x=500;
int y=440;
int w=150;
int h=150;

int alphaValue = 0;


//animación 2
int incremento=1;
int tam=0;

int dir = 1;
boolean detenido = false;

//animción 4
int tam2=64;

void setup() {
  size(640, 480);

  mov=height;
 mov2=height;
 
 fuente= loadFont("DavidLibre-Bold-48.vlw");
 textFont(fuente, 30);
  textSize(20);

  //loadimage
  img = loadImage("cienaños.jpg");
  ci2=loadImage("cien2.jpg");
  ci3=loadImage("cienaños3.jpg");
  ci4=loadImage("cien4.png");
  ci5=loadImage("cien5.jpg");

  //textis
  one="El libro narra la historia de la familia Buendia a lo largo de siete generaciones en el pueblo ficticio de Macondo,explorando temas de soledad, amor y el realismo magico.La novela se divide en 20 secuencias narrativas o capitulos que van en orden cronologico,dentro de cada capitulo el autor se permite retroceder y explicar otros sucesos pasados en el tiempo. ";
  dos=" los primeros capitulos hablan como se creo la fundacion de los Macondo y los sucesos magicos que rodean la aldea. Aparecen personajes  como Jose Arcadio Buendia y Ursula Iguaran,conocemos la infancia de la segunda generacion de fundadores Buendia. Jose Arcadio Buendia deja Riohacha en Colombia junto a su esposa Ursula despues de ser perseguido por otro personaje,Prudencio Aguilar.acampa una noche al borde de un rio, suenia con Macondo,una preciosa ciudad. al despertar  decide fundarla y crearla donde estaba durmiendo. ";
  tres="Se convierte en protagonista uno de los hijos de Jose Arcadio y Ursula Iguaran, el coronel Aureliano Buendia, quien se presenta como alguien guerrero y artista debido a su don especial para la poesia. Ademas, se trata de un personaje con muchas premoniciones que normalmente se cumplen. La apacible vida en la aldea se ve alterada a causa de las guerras civiles que llevan durante 20 anios acechando al pais. Aqui conoceremos como lo vive Aureliano y otros personajes.";
  cuatro="La guerra finaliza y aparece en la aldea la compania bananera con los que se inicia una nueva etapa en Macondo. La conflictividad social aumenta pero tambien la prosperidad, por desgracia todo acaba y desemboca en una terrible represion sangrienta. Conocemos aqui a los miembros de la ya cuarta generación de los Buendia estos son: Jose Arcadio Segundo y Aureliano Segundo.";
  cinco="En lo ultimos capitulos asistimos a la destruccion de la aldea de Macondo. Un diluvio biblico ataca la ciudad y se nos relata la decadencia y destruccion de ella: el final de las generaciones y los fundadores. Los ultimos Buendia van a convivir en un pueblo en ruinas hasta acabar por desaparecer, la estirpe se extinguira en un vastago con cola de cerdo. Aureliano Babilonia, el ultimo descendiente, lograra descifrar las profecias que un gitano dejo escritas sobre Macondo y su destruccion. La profecia se cumple en el mismo momento en que se lee el escrito.";


  pantalla ="inicio";
}

void draw () {


  background(0);
  fill(200);
  text(segundos, 400, 50);

  if (pantalla==("inicio")) {
    fill(250, 0, 0);

    //imagen  1
    image(img, 0, 0, 640, 480);

    //texto
    fill(224, 10, 170);
    textAlign(CENTER);
    textAlign(CENTER, TOP);
    text(one, 100, mov, 440, 400);
    if (mov>100) {
      mov -=2;
    }
  } else if (pantalla==("two")) {
    
    fuente2=loadFont("DavidCLM-Medium-38.vlw");
    textFont(fuente2,20);
    
    fill(250,0,0);
    //imagen 2
    image(ci2, 0, 0, 640, 480);
    //texto
    fill(59, 201, 214, 160);

    rect(100, 90, 450, 360);

    fill(255,88,0);
    textAlign(CENTER);
    textAlign(CENTER, TOP);
    text(dos, 100, mov2, 440, 300);
    if (mov2>150){
      mov2-=2;
    }
   mov2 += +dir ;
  
  if (mov2 >150 || mov2 < 90) { //animación 2
    dir *= -1; 
    
    }
  } else if (pantalla==("three")) {
    textFont(fuente, 20);
    fill(300, 0, 0);
    //imagen 3
    image(ci3, 0, 0, 640, 480);
    //texto
    fill(300, 0, 0);
    textAlign(CENTER);
    textAlign(CENTER, TOP);
    text(tres, mov, 80, 350, 400);

    if (!detenido) {
      mov += dir;


      if (mov + 350 >= 640) {
        dir = -1;
      }

      if (mov <= 320 - 175 && dir == -1) { //animación 3
        detenido = true;
        mov = 320 - 175;
      }
    }
  } else if (pantalla==("four")) {
    fill(300);
    //imagen 4
    image(ci4, 0, 0, 640, 480);
    //texto
    fill(68, 150, 50);
    textAlign(CENTER);
    textSize(tam2);
    text(cuatro, 100, mov, 440, 400);
    if (mov>100) {
      mov --;
    }
    
    if (tam2 > 20) { //animación 4
    tam2--;
  }
    
    
  } else if (pantalla==("five")) {
    fill(300, 0, 0);
    //imagen 5
    image(ci5, 0, 0, 640, 480);
    //texto
    fill(300, 0, 0);
    textAlign(CENTER);
    textAlign(CENTER, TOP);
    fill(255, alphaValue); 
    text(cinco, 100, mov, 440, 400);
    if (mov>100) {
      mov --;
    }
  if (alphaValue < 255) { //animación 5
      alphaValue += 2;
  }
    if (button) {
      fill(0, 200, 0);
      stroke(0);
    } else {
      fill(70, 0, 100);
      stroke(0, 255, 0);
    }
    rect(x, y, w, h);
    fill(255);
    text("REINICIAR", 570, 443);




    //movimiento pantallas
  }

  if (frameCount%60== 0) {
    segundos++;
  }

  if (segundos<5) {
    pantalla = "inicio";
  } else if (segundos>=5 && segundos<=10) {
    pantalla = "two";
  } else if (segundos>=10 && segundos<=20) {
    pantalla = "three";
  } else if (segundos>=20 && segundos<=27) {
    pantalla = "four";
  } else if (segundos>=27 && segundos<=36) {
    pantalla = "five";
  }
}

void mousePressed() {
  if (pantalla == "five" && (mouseX > x) && (mouseY< x + w )&&
    (mouseY>y) && (mouseY < y+h && mousePressed)) {
    //boton
    pantalla = "inicio";
    segundos = 0;
    mov=height;
    mov2=height;
    
    dir = 1;
    detenido = false;
    alphaValue = 0;
  }
}
