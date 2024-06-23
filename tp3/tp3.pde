//Bailate Braian -- Comision 1  
//tp3 --
/* hubo un inconveniente con el video 
   debido al bajo rendimiento de la laptop 
   con la que trabajo, mil disculpas */


//variables utilizadas
PImage img;
int q = 18;
float dec = 24.7;
int s = 600;

void setup() {
  size(800, 400);
  img = loadImage("op_art.jpg");
}

void draw() {
  background(255);
  image(img, 0, 0, width/2, height);

  //circulos rojos
  redCircle();

  //circulos azules
  blueCircles(width/2, height/2-10, 0, 3, s, width/2);
  blueCircles(width/2, height, 0, height/2+5.5, s, width/2);
  blueCircles(width, height/2-10, 0, 3, width, s+5.5);
  blueCircles(width, height-10, height, height/2+5.5, width, s+5.5);

}

void mousePressed() {  //utilizado para disminuir el tamaño
                      // de los circulos al hacer click
  if (q>=8) {
    q-=2;
  }

  if (dec>=14.7) {
    dec-=3;
  }
}

void keyPressed() {   //utilizado para reestablecer los valores
  if (key == 'z') {  // originales del tamaño de los circulos
    q = 18;         //  al presionar la tecla 'z'
    dec = 24.7;
  }
}

/*=======================================================*/

void redCircle() {
  for (float c = width/2+3; c<=width-10; c+=dec) {
    for (float d = 5.5; d<=height-10; d+=dec) {
      noStroke();
      fill(255, 0, 0);
      ellipse(c+q/2, d+q/2, q, q);
    }
  }
}

/*==============================*/

void blueCircles(float x1, float y1, float z1, float a1, float b1, float c1) {
  for (float c = c1; c<=b1-10; c+=dec) {
    for (float d = a1; d<=y1; d+=dec) {
      float distan = dist(mouseX, mouseY, 600, 200);   //se utilizo 'dist' para jugar con la opacidad de
      float tono = distan*255/dist(600, 200, x1, z1); // los circulos azules, aunque no salio como esperaba
      noStroke();
      fill(0, 0, 255, tono);
      ellipse(c+q/2, d+q/2, q, q);
    }
  }
}
