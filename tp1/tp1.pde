// Braian Bailate
// comision 1
PImage fondo;

void setup(){
  size(800,400);
  fondo = loadImage("silly_cat.png");
}

void draw(){
  background(120,100,120);
  image(fondo, 0, 0, 400, 400);
  fill(140);
  noStroke();
  rect(700,170,800,800);
  fill(70);
  triangle(730,170,730,340,900,170);
  fill(180);
  rect(515,191,214,300);
  fill(140);
  rect(512, 107, 220, 103);
  rect(670,340,60,90);
  fill(140);
  triangle(595, 110, 490, 40, 512, 120);
  triangle(650, 110, 710, 20, 732, 107);
  fill(199);
  quad(522,210,522,550,722,340, 722, 210);
  fill(170);
  quad(518,210,584,266,656,266,726,210);
  stroke(20);
  strokeWeight(4);
  fill(170,200,100);
  circle(578,196,35);
  circle(660,196,35);
  fill(230);
  noStroke();
  quad(568,253,584,266,656,266,673,253);
  quad(568,253,594,245,644,245,673,253);
  fill(200,100,100);
  triangle(600,245,636,245,618,257);
  fill(70);
  triangle(576,115,661,115,618,190);
  strokeWeight(6);
  stroke(70);
  line(570,128,593,166);
  line(667,128,643,166);
  noStroke();
  fill(210);
  quad(722,245,722,340,668,400,552,400);
  quad(682,290,575,290,526,400,600,400);
  fill(25);
  ellipse(578,196,8,25);
  ellipse(660,196,8,25);
  fill(210);
  triangle(506,66,514,113,563,113);
  triangle(707,44,730,113,664,113);
  fill(160);
  triangle(800,290,800,400,742,400);
  println(mouseX);
  println(mouseY);
}
