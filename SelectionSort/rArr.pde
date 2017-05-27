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

    SelectionSortV();
  }

  Rectangles[] dupe( Rectangles[] roar ) {
    Rectangles[] ret = new Rectangles[ roar.length];
    for (int x = 0; x < roar.length; x++) {
      ret[x] = roar[x].dupe();
    }
    return ret;
  }

  void SelectionSortV() {
    int maxPos;
    for (int pass = rawr.length -1; pass > 0; pass--) {
      maxPos = 0;
      for (int x = 1; x <= pass; x++) {
        if (rawr[x].getHeight() > rawr[maxPos].getHeight() ) {
          maxPos = x;
          order.add(dupe(rawr));
          count.add(maxPos);
        }
        
      }
      swap(rawr, pass, maxPos);
    }
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