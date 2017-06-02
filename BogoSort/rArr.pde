class rArr {
  ArrayList<Integer> count;
  ArrayList<Rectangles[]> order;
  Rectangles[] rawr;
  int[] arr;

  rArr(Rectangles[] roar) {// Constructor
    setArr();
    rawr = dupe(roar);

  }

  void BogoSortV() {
    int counter = 0;
    while (!(isSorted(rawr)) || counter > 60) {
      shuffle(rawr);
      counter++;
      order.add(dupe(rawr));
      count.add(counter);
    }
    order.add(dupe(rawr));
  }
     
  Rectangles[] dupe( Rectangles[] roar ) {
    Rectangles[] ret = new Rectangles[ roar.length];
    for (int x = 0; x < roar.length; x++) {
      ret[x] = roar[x].dupe();
    }
    return ret;
  }




  void drawB() {
    for (int i  = 0; i < rawr.length; i++) {
      rawr[i].draw(i*200, 200, false);
    }
  }

  void shuffle( Rectangles[] roar ) {
    Rectangles tmp;
    int swapPos;
    for ( int i = 0; i < roar.length; i++ ) {
      tmp = roar[i];
      swapPos = i + (int)( (roar.length - i) * Math.random() );
      swap( roar, i, swapPos );
    }
  }

  void swap( Rectangles[] roar, int a, int b) {
    Rectangles temp = roar[a];
    roar[a] = roar[b];
    roar[b] = temp;
  }

  boolean isSorted( Rectangles[] roar) {
    boolean ret = true;
    for (int i = 0; i < roar.length - 1; i++) {
      if (roar[i].getHeight() > roar[i+1].getHeight()) {
        ret = false;
      }
    }
    return ret;
  }
}