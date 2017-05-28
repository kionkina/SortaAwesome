class rArr {
  ArrayList<Integer> count;
  ArrayList<Rectangles[]> order;
  Rectangles[] rawr;
  int[] arr;

  rArr(Rectangles[] roar) {// Constructor
    setArr();
    rawr = dupe(roar);

    count = new ArrayList<Integer>();
    order = new ArrayList<Rectangles[]>();

    order.add(dupe(rawr));
    count.add(-1);

    BubbleSortV();
  }

  Rectangles[] dupe( Rectangles[] roar ) {
    Rectangles[] ret = new Rectangles[ roar.length];
    for (int x = 0; x < roar.length; x++) {
      ret[x] = roar[x].dupe();
    }
    return ret;
  }

  void BubbleSortV() {
    for (int passCtr = 0; passCtr < rawr.length; passCtr++) {
      for (int x = 0; x < rawr.length - 1; x++) {
        if (rawr[x].getHeight() > rawr[x+1].getHeight() ) {
          swap(rawr, x, x+1);
          order.add(dupe(rawr));
          count.add(x);
        }
      }
    }
  }

  void draw(int x) {
    for (int i  = 0; i < order.get(x).length; i++) {
      Rectangles r = order.get(x)[i];
      r.draw(i*4, 4, count.get(x) == i);
    }
  }



  void swap( Rectangles[] roar, int a, int b) {
    Rectangles temp = roar[a];
    roar[a] = roar[b];
    roar[b] = temp;
  }
} 