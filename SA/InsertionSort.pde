public class InsertionSort implements ArrayStructure {

  boolean small; 

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

  public void InsertionSortV() {
    for ( int partition = 1; partition < arr.length; partition++ ) {
      //partition marks first item in unsorted region

      //diag:
      //System.out.println( "\npartition: " + partition + "\tdataset:");
      //System.out.println( data ); 

      //traverse sorted region from right to left
      for ( int i = partition; i > 0; i-- ) {

        // "walk" the current item to where it belongs
        // by swapping adjacent items
        if ( arr[i] <  arr[i-1] ) {
          //diag:
          System.out.println( "swap indices "+(i-1)+" & "+i+"..." );
          int temp = arr[i];
          arr[i] = arr[i-1];
          arr[i-1] = temp;
        } else 
        break;
      }
    }
  }
}