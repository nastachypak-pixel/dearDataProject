
void setup() {
  size (1000, 1000);
}

void draw() {
  fill(255, 0, 0);
  drawHouse(100, 300, 1.0);
  drawHouse(300, 325, 0.5);
  drawHouse(500, 325, 1.5);
}

void drawHouse(float x1, float y1, float size) {

  float roofWidth = 100 * size;
  float roofHeight = 75 * size;

  float houseWidth = 100 * size;
  float houseHeight = 100 * size;

  float x2 = x1 + roofWidth/2;
  float y2 = y1 - roofHeight;

  float x3 = x1 + roofWidth;

  fill(255, 0, 0);
  triangle(x1, y1, x2, y2, x3, y1);

  fill(0, 255, 0);
  rect(x1, y1, houseWidth, houseHeight);

  float doorWidth = houseWidth * 0.35;
  float doorHeight = houseHeight * 0.5;

  float doorX = x1 + (houseWidth - doorWidth)/2;
  float doorY = y1 + houseHeight - doorHeight;

  fill(0, 0, 255);
  rect(doorX, doorY, doorWidth, doorHeight);
}