class Rectangles {
  float x;
  float y;
  float w;
  float h;
  color c;

  Rectangles( float ex, float why, float with, float hight, color culur) {
    x = ex;
    y = why;
    w = with;
    h = hight;
    c = culur;
  }

  void draw(int ex, int with, boolean chosen) {
    if (chosen) {
      fill(60,87,164);
    }
    else {
      fill(96, 168, 196);
    }
    stroke(c);
    rect(ex, y, with, h);
  }

  float getHeight() {
    return h;
  }

  void setHeight(float high) {
    h = high;
  }

  Rectangles dupe() {
    return new Rectangles(x, y, w, h, c);
  }
}