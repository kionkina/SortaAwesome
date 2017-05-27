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

    InsertionSortV();
  }

  Rectangles[] dupe( Rectangles[] roar ) {
    Rectangles[] ret = new Rectangles[ roar.length];
    for (int x = 0; x < roar.length; x++) {
      ret[x] = roar[x].dupe();
    }
    return ret;
  }

  void InsertionSortV() {
    for (int x = 1; x < rawr.length; x++) {
      int y = x;
      Rectangles r = rawr[x];
      for (y = x; y > 0 && (rawr[y-1].getHeight() > r.getHeight()); y--) {
        rawr[y] = rawr[y-1];
        order.add(dupe(rawr));
        count.add(y);
      }
      rawr[y] = r;
      order.add(dupe(rawr));
      count.add(y);
    }

    Rectangles[] temp = order.remove( order.size() - 1);
    order.add(dupe(temp));
    order.add(dupe(temp));
    count.add(-1);
  }

  void draw(int x) {
    for (int i  = 0; i < order.get(x).length; i++) {
      Rectangles r = order.get(x)[i];
      r.draw(i*3, 3, count.get(x) == i);
    }
  }



  void swap( Rectangles[] roar, int a, int b) {
    Rectangles temp = roar[a];
    roar[a] = roar[b];
    roar[b] = temp;
  }
} 