class rArrBS {
  ArrayList<Integer> count; //counter array
  ArrayList<Rectangles[]> order;// array of frames
  Rectangles[] rawr;// frame
  int[] arr; // heights

  rArrBS(Rectangles[] roar) {// Constructor
    setArr();
    rawr = dupe(roar);

    count = new ArrayList<Integer>();//initializes the array
    order = new ArrayList<Rectangles[]>();//initializes the array

    order.add(dupe(rawr));// start frame
    count.add(-1);

    BubbleSortV(); // sorts rawr
  }

  Rectangles[] dupe( Rectangles[] roar ) { // makes a copy of the "frame"
    Rectangles[] ret = new Rectangles[ roar.length];
    for (int x = 0; x < roar.length; x++) {
      ret[x] = roar[x].dupe();
    }
    return ret;
  }

  void BubbleSortV() { // Bubble Sort
    for (int passCtr = 0; passCtr < rawr.length; passCtr++) {
      for (int x = 0; x < rawr.length - 1; x++) {
        if (rawr[x].getHeight() > rawr[x+1].getHeight() ) {
          swap(rawr, x, x+1);
          order.add(dupe(rawr)); // adds frame after swap
          count.add(x);
        }
      }
    }
  }

  void draw(int x) { // draws frame
    for (int i  = 0; i < order.get(x).length; i++) {
      Rectangles r = order.get(x)[i];
      r.draw(i*4, 4, count.get(x) == i);
    }
  }



  void swap( Rectangles[] roar, int a, int b) { // swaps rectangles at a and b in roar
    Rectangles temp = roar[a];
    roar[a] = roar[b];
    roar[b] = temp;
  }
} 
