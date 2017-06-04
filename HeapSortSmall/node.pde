float ex;
float why;

void node(float x, float y, int num, float level, boolean odd) {
  ex = x;
  why = y;

  if (level > 0) {
    
      strokeWeight(1);
    if (odd) {
      stroke(225);
      line(x, y, x + 70/level + 40, y - 70);
    } else {
      stroke(225);
      line(x, y, x - 200/level, y - 70);
    }
  }
  strokeWeight(5);
  stroke(138,138,225);
  fill(225);
  ellipse(x, y, 50, 50); 
  fill(0);
  text(Integer.toString(num), x - 17, y + 10);
}