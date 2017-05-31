class rArrSS {
  ArrayList<Integer> count;//counter array
  ArrayList<Rectangles[]> order;//array of frames
  Rectangles[] rawr;// frame
  int[] arr;// heights

  rArrSS(Rectangles[] roar) {// Constructor
    setArr();
    rawr = dupe(roar);

    count = new ArrayList<Integer>();//initializes the array
    order = new ArrayList<Rectangles[]>();// initializes the array

    order.add(dupe(rawr));// start frame
    count.add(-1);

    SelectionSortV();// sorts rawr
  }

  Rectangles[] dupe( Rectangles[] roar ) {//makes a copy of the "frame"
    Rectangles[] ret = new Rectangles[ roar.length];
    for (int x = 0; x < roar.length; x++) {
      ret[x] = roar[x].dupe();
    }
    return ret;
  }

  void SelectionSortV() {//Selection Sort
    int maxPos;
    for (int pass = rawr.length-1; pass >= 0; pass--) {
      maxPos = 0;
      for (int x = 0; x <= pass; x++) {
        if (rawr[x].getHeight() > rawr[maxPos].getHeight() ) {
          maxPos = x;
          order.add(dupe(rawr));// make a copy of the frame
          count.add(x);
        }
      }
      swap(rawr, pass, maxPos);// swap
    }
    
  }



  void draw(int x) {// draws frame
    for (int i  = 0; i < order.get(x).length; i++) {
      Rectangles r = order.get(x)[i];
      r.draw(i*3, 3, count.get(x) == i);
    }
  }



  void swap( Rectangles[] roar, int a, int b) {// swaps rectangles at a and b in roar
    Rectangles temp = roar[a];
    roar[a] = roar[b];
    roar[b] = temp;
  }
} 
