float beginX1 = 158.0;  // Initial x-coordinate
float beginY1 = 65.0;// Initial y-coordinate
float beginX2 = 221.0;
float beginY2 = 64.0;
float beginX3 = 168.0;
float beginY3 = 195.0;
float beginX4 = 108.0;
float beginY4 = 195.0;

float endX1 = 459.0;   // Final x-coordinate
float endY1 = 135.0;   // Final y-coordinate
float endX2 = 481.0;
float endY2 = 196.0;
float endX3 = 340.0;
float endY3 = 196.0;
float endX4 = 318.0;
float endY4 = 135.0;

float distX1;          // X-axis distance to move
float distY1;          // Y-axis distance to move
float distX2;
float distY2;
float distX3;
float distY3;
float distX4;
float distY4;


float x1 = 168.0;        // Current x-coordinate
float y1 = 55.0;        // Current y-coordinate
float x2 = 221.0;
float y2 = 64.0;
float x3 = 168.0;
float y3 = 195.0;
float x4 = 108.0;
float y4 = 195.0;

float step = 0.007;    // Size of each step along the path
float pct = 0.0;      // Percentage traveled (0.0 to 1.0)
float exponent = 2;   // Determines the curve
PImage img;

void setup() {
  img = loadImage("mesas.jpg");
  size(560, 316);
  noStroke();
  distX1 = endX1 - beginX1;
  distY1 = endY1 - beginY1;
  distX2 = endX2 - beginX2;
  distY2 = endY2 - beginY2;
  distX3 = endX3 - beginX3;
  distY3 = endY3 - beginY3;
  distX4 = endX4 - beginX4;
  distY4 = endY4 - beginY4;
}

void draw() {
  image(img, 0, 0);
  fill(0, 2);
  pct += step;
  if (pct < 1.0) {
    x1 = beginX1 + (pct * distX1);
    y1 = beginY1 + (pct * distY1);
    x2 = beginX2 + (pct * distX2);
    y2 = beginY2 + (pct * distY2);
    x3 = beginX3 + (pct * distX3);
    y3 = beginY3 + (pct * distY3);
    x4 = beginX4 + (pct * distX4);
    y4 = beginY4 + (pct * distY4);
  }
  fill(255);
  quad(x1, y1
      ,x2,y2,
      x3,y3
      ,x4,y4);
  //ellipse(x, y, 20, 20);
}
