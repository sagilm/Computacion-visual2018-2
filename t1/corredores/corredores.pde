PImage img, img2;
float offset = 0;
float offset2= 0;
float easing = 0.05;
float Xpos=98;
float Xmax=281;

void setup() {
  img = loadImage("eltunel.jpg");
  img2 = loadImage("corredor.png");
  size(557, 700);
  fill(205);
}
void draw() {
  image(img, 0, 0);
  float x = mouseX;
  float y = (-1.33*mouseX+620);
  if(y<255){
  y=255;}
  if (mouseX>280){
  x=280;}
  tint(255, 200);  // Display at half opacity
  image(img2, x, y);
}
void mouseClicked(){
print(mouseX+ " "+mouseY+ "\n");
}
