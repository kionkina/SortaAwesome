public class SelectionSort implements ArrayStructure {

  public int[] arr;

  public void display() {
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
        if ( arr[i].compareTo( arr[maxPos] ) > 0 )
          maxPos = i;
      }
      int temp = arr[maxPos];
      arr[maxPos] = arr[pass];
      arr[pass] = temp;
      //System.out.println( "after swap: " +  data );//diag
    }
  }
}