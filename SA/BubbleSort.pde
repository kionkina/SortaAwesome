public class BubbleSort implements ArrayStructure {

  public int[] arr;

  public void setup() {
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

  public void display() {
    for (int x = 0; x < arr.length; x++) {
      fill(275);
      rect(x, height - arr[x], 1, arr[x]);
    }
  }


  public void sort() {
  }

  public void BubbleSortV() {

    for ( int passCtr = 1; passCtr < arr.length; passCtr++ ) {
      //System.out.println( "commencing pass #" + passCtr + "..." );

      //iterate thru first to next-to-last element, comparing to next
      for ( int i = 0; i < arr.length-1; i++ ) {

        //if element at i > element at i+1, swap
        if ( arr[i] > arr[i+1] ) {
          int temp = arr[i];
          arr[i] = arr[i+1];
          arr[i+1] = temp;
        }
        //System.out.println(data); //diag: show current state of list
      }
    }
  }
}