public class SelectionSort implements ArrayStructure {

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

  public void SelectionSortV() {
    //note: this version places greatest value at rightmost end,

    //maxPos will point to position of SELECTION (greatest value)
    int maxPos;
    for ( int pass = arr.length-1; pass > 0; pass-- ) {
      //System.out.println( "\nbegin pass " + (data.size()-pass) );//diag
      maxPos = 0;
      for ( int i = 1; i <= pass; i++ ) {
        //System.out.println( "maxPos: " + maxPos );//diag
        //System.out.println( data );//diag
        if ( arr[i] >  arr[maxPos] ) 
          maxPos = i;
      }
      int temp = arr[maxPos];
      arr[maxPos] = arr[pass];
      arr[pass] = temp;
      //System.out.println( "after swap: " +  data );//diag
    }
  }
}