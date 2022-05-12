float posicionActualX=0;
float posicionAnteriorX=0;
void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  if (frameCount%30==0) {
    posicionActualX=random(0, width);
  }

  float ubicacionX= lerp(posicionAnteriorX, posicionActualX,  0.01);
  posicionAnteriorX=ubicacionX;
  ellipse (posicionActualX, 100, 50, 50);

  ellipse (ubicacionX, 200, 50, 50);
}
