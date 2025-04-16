//Tatarsky Haberman Sharon Chantal
// TP1 comision 5
PImage img;
void setup(){
  size(800,400);
  background(50,20,50);
img=loadImage("jovenperla.jpg");
}
//cara

void draw(){
  
  img.resize (400,400);
  image (img,5,5);
  
  //cuello
  fill (231,232,170);
rect(600,260,69,60);

//sombra cuello
fill(130,100,100);
rect(600,270,69,30);
  
  //extension paño
fill(250,218,151);
triangle (780,400,520,70,690,180);

//cara
stroke(1);
  fill (231,232,170);
ellipse (600,150,215,300);
//sombra cara
noStroke();
fill(130,100,100);
ellipse (660,170,90,180);

//oreja
stroke(1);
fill (231,232,170);
ellipse(700,180,55,64);//oreja
//oreja sombra
fill(130,100,100);
noStroke();
ellipse(718,180,19,45); //oreja adentro
//detalles oreja
stroke(1);
fill (45,15,15);
ellipse(700,180,28,54); //oreja adentro
fill (100,120,105);
circle(700,240,40); //aro
fill (270,270,300);
circle(690,235,20); //brillo izquierda
line(700,220,700,200);
fill(230,220,200);
ellipse(700,254,20,10);//brillo abajo



//oojos
stroke(1);
fill (300,300,300);
ellipse (520,150,70,40);
ellipse (620,155,70,40);
//pestañas ojo1
line(520,130,490,100);
line(529,129,520,110);
line(539,135,530,110);
//pestañas ojo2
line(640,138,680,110);
line(610,137,620,110);
line(620,135,640,110);


//cornea
fill (100,100,100);
ellipse(520,150,30,30);
ellipse (620,155,30,30);

//pupilas
fill (0,0,0);
ellipse(525,150,10,15);
ellipse(625,155,10,15);

//brillo
fill  (300,300,300);
ellipse(518,150,10,6);
ellipse(618,155,10,6);

//nariz
stroke(1);
fill(300,30,30);
line (550,200,560,100); //linea central
line(550,200,576,205);//abajo
line(560,200,560,100);//derecha


//dientes
fill(300,300,300);
ellipse(555,240,10,13);
ellipse(565,240,10,13);

//boca
noStroke();
fill(219,80,66);
circle(555,230,15);
circle(565,230,15);
ellipse(563,250,25,10);



//cuerpo
stroke(1);
fill(198,157,90);
triangle(500,330,760,280,550,440); //capucha


//sombras
noStroke();
fill(86,66,40);
triangle(530,330,760,286,550,420);//sombra triangulo


//pecho
stroke(1);
fill(198,157,90);
rect(510,380,200,100);

//brazo
stroke(1);
fill(198,157,90);
ellipse(686,390,120,150);
//sombra brazo
noStroke();
fill(86,66,40);
ellipse(710,390,70,120);//sombra ellipse
rect(584,380,40,20);//sombra cuadrado

//paño
fill(60,50,180);
ellipse (600,59,205,90);
fill(250,218,151);
ellipse (600,19,150,50);
//sombras paño
fill(10,10,100);
ellipse (660,69,80,44); //azul
fill(200,108,101);
ellipse (640,22,60,30); //beige
}
