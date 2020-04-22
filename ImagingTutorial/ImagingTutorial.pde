PImage image;

void setup() {
  size(512, 512);
  image = loadImage("lenna.png");
}

void draw() {
  background(0);
  // width y height
  image(image, 0, 0);
}

void complementary() {
  // 1. cargar el arreglo de pixeles en pixels[]
  image.loadPixels();
  for (int i = 0; i < image.width * image.height; i++) {
    color c = image.pixels[i];
    // 2. leer: obtener las canales de color
    image.pixels[i] = color(255 - red(c), 255 - green(c), 255 - blue(c));
  }
  // 3. Actualizar
  image.updatePixels();
}

void keyPressed() {
  if (key == 'c')
    complementary();
}