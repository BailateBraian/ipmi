// Bailate Braian
//tp2 - comision 1

float y = 520;
float y2 = 500;
float y3 = 200;
String in;
PImage img1, img2, img3;
PFont f;
int pant;
int seg;

void setup(){
  size(640, 480);
  f = loadFont("ComicS.vlw");
  textFont(f, 28);
  img1 = loadImage("logo.png");
  img2 = loadImage("toh1.png");
  img3 = loadImage("toh2.png");
  pant = 1;
  in = "The Owl House es una serie creada por \n Dana Terrace y fue emitida por Disney \n Channel desde el 20 de enero de 2020 \n hasta el 8 de abril de 2023";
}

void draw(){
  background(35, 23, 10);
  if(pant == 1) {
    image(img1, 40, 15, 560, 320);
    text(in, 30, y);
  }if(y>330){
    y--;
  }else if(pant == 2) {
    image(img2, 0, -20, 770, 500);
    fill(20);
    textFont(f, 20);
    text("The Owl house nos narra la historia de Luz Noceda \n quien descubre un portal hacia \n otro reino, en donde conoce \n a una bruja llamada Eda junto \n a su temible y adorable \n compañero King", 20, y2);
  }if (y2> 40){
    y2--;
  }else if(pant == 3) {
    background(0, 0, 30);
    image(img3, 7, -10, 625, 500);
    fill(200);
    text("Luz, a pesar de no poseer ningun tipo de magia, \n se integra a una escuela de magia y demonios llamada Hexside, \n en donde hace amigos con los cuales vive grandes aventuras", 50, y3);
  }if(y3<380) {
    y3++;
  }else if (pant == 4) {
    background(0);
    rect(280, 260, 80, 40);
    text("pulse aqui para reiniciar", 220, 220);
  }
    if(frameCount%60 == 0) {
      seg++;
    }
  if (seg <=4){
    pant = 1;
  }else if (seg>4 && seg<=8){
    pant = 2;
  }else if (seg>8 && seg <= 12) {
    pant = 3;
  }else{
    pant = 4;
  }
}

void mousePressed(){
  if(mouseX>=280 && mouseX<=360 && mouseY>=260 && mouseY<=300){
   pant = 1;
   seg = 0;
   y = 520;
   y2 = 480;
   fill(255);
   textFont(f, 28);
  }
}
