PImage img;
int quantNum = 1;
void setup() {
  img = loadImage("original 4.jpg");
  size(800, 400);
  img.resize(400, 400);
  image(img, 0, 0);
  img.filter(GRAY);
}
void draw() {
  img.loadPixels();
  for  (int y = 0; y < img.height - 1; y++) {
    for (int x = 0; x < img.width - 1; x++) {
      int index = x + y * img.width ;
      color pixel = img.pixels[index]; 

      float oldR = red(pixel);
      float oldG = green(pixel);
      float oldB = blue(pixel);

      float newR = round(quantNum * oldR/255.0) * (255.0/quantNum);
      float newG = round(quantNum * oldG/255.0) * (255.0/quantNum);
      float newB = round(quantNum * oldB/255.0) * (255.0/quantNum);

      img.pixels[index] = color(newR, newG, newB);

      float errR;
      float errG;
      float errB;

      errR = oldR - newR; 
      errG = oldG - newG; 
      errB = oldB - newB ; 

      color c = img.pixels[(x + 1) + y * img.width];

      float r = red(c);
      float g = green(c);
      float b = blue(c);

      r = r + errR * 7 / 16.0;
      g = g + errG * 7 / 16.0;
      b = b + errB * 7 / 16.0;

      img.pixels[(x + 1) + y * img.width] = color(r, g, b);
      if (x != 0) {
        c = img.pixels[(x - 1) + (y + 1) * img.width];

        r = red(c);
        g = green(c);
        b = blue(c);

        r = r + errR * 3 / 16.0;
        g = g + errG * 3 / 16.0;
        b = b + errB * 3 / 16.0;

        img.pixels[(x - 1) + (y + 1) * img.width] = color(r, g, b);
      }

      c = img.pixels[x + (y + 1) * img.width];

      r = red(c);
      g = green(c);
      b = blue(c);

      r = r + errR * 5 / 16.0;
      g = g + errG * 5 / 16.0;
      b = b + errB * 5 / 16.0;

      img.pixels[x + (y + 1) * img.width] = color(r, g, b);

      c = img.pixels[(x + 1) + (y + 1) * img.width];

      r = red(c);
      g = green(c);
      b = blue(c);

      r = r + errR * 1 / 16.0;
      g = g + errG * 1 / 16.0;
      b = b + errB * 1 / 16.0;

      img.pixels[(x + 1) + (y + 1) * img.width] = color(r, g, b);
    }
  }
  img.updatePixels();
  image(img, img.width, 0);
}
