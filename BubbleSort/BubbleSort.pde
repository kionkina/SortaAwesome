int counter;
rArr rects;
int[] arr;

void setup() {
  frameRate(500);
  counter = 0;
  size(600, 600);
  background(0);
  setArr();
  Rectangles[] temp = new Rectangles[width/4];
  for (int x = 0; x < temp.length; x++) {
    temp[x] = new Rectangles( x*4, height - arr[x], 4, arr[x], 255 );
  }
  rects = new rArr( temp ); //
}

void draw() {
  if (counter == rects.order.size() ) {
    background(0);
    rects.draw(counter-1);
  } else {
    background(0);
    rects.draw(counter);
    counter++;
  }
}


void sort() {
}

void setArr() { // makes an array with randomized rectangle heights
  arr = new int[width];
  double scale = height/ width;
  for (int x = 0; x < arr.length; x++) {
    arr[x] = (int) (x*scale);
  }
  int randomIndex;
  for ( int i = arr.length-1; i > 0; i-- ) {
    //pick an index at random
    randomIndex = (int)( (i+1) * Math.random() );
    //swap the values at position i and randomIndex
    int temp = arr[i];
    arr[i] = arr[randomIndex];
    arr[randomIndex] = temp;
  }
}

void keyPressed() {
  if (keyCode == DELETE) {
    setup();
  }
}