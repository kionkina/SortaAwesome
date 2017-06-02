int counter;
rArr rects;
int[] arr;
boolean sorted;

void setup() {
  frameRate(3);
  counter = 0;
  size(600, 600);
  background(0);
  setArr();
  Rectangles[] temp = new Rectangles[width/3];
  for (int x = 0; x < temp.length; x++) {
    temp[x] = new Rectangles( x*200, height - arr[x], 200, arr[x], 255 );
  }
  rects = new rArr( temp ); //
}

void draw() {
  if (!isSorted( rects )) {
    background(0);
    rects.drawB();
    shuffle(rects);
  }

}


boolean isSorted( rArr roar) {
  for (int i = 0; i < roar.rawr.length - 1; i++) {
    if (roar.rawr[i].getHeight() > roar.rawr[i+1].getHeight()) {
      return false;
    }
  }
  return true;
}

void shuffle( rArr roar ) {
  Rectangles tmp;
  int swapPos;
  for ( int i = 0; i < roar.rawr.length; i++ ) {
    tmp = roar.rawr[i];
    swapPos = i + (int)( (roar.rawr.length - i) * Math.random() );
    swap( roar, i, swapPos );
  }
}

void swap( rArr roar, int a, int b) {
  Rectangles temp = roar.rawr[a];
  roar.rawr[a] = roar.rawr[b];
  roar.rawr[b] = temp;
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