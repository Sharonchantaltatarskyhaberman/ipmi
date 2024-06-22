//Alumna Sharon Chantal Tatarsky Haberman
//Comisión 1 Trabajo N°3
// legajo 19153/9
//BOTON



int cant=10;
int tam;
int i;
PImage F32;

void setup() {
  size(800,400);
  background(255);
  //loadimage
   F32 = loadImage("F32.jpg");
   tam=width/cant;
}

void draw() {
  image(F32,0,0,400,400);
  //cuadrados
 
  for(int x=0;x<cant;x++){
    for(int y=0;y<cant;y++){
      float dista= dist(mouseX,mouseY,x*tam,y*tam);
      float tono =dista*400/dist(width,height,0,0);
      fill(246,255,0,tono);
      rect(x*tam,y*tam,tam,tam);
    }
 
  //fill(246,255,0);
  //for(int i=400; i<=800; i+=30){
    //rect(i,0,i,height);
  }
}
