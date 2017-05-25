public class InsertionSort implements ArrayStructure {

  public int[] arr;

  public void display() {
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
        if ( arr[i].compareTo( arr[i-1] ) < 0 ) {
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