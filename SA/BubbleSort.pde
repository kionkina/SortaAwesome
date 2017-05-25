public class BubbleSort implements ArrayStructure {

  public int[] arr;

  public void display() {
  }


  public void sort() {
  }

  public void BubbleSortV() {

    for ( int passCtr = 1; passCtr < arr.length; passCtr++ ) {
      //System.out.println( "commencing pass #" + passCtr + "..." );

      //iterate thru first to next-to-last element, comparing to next
      for ( int i = 0; i < arr.length-1; i++ ) {

        //if element at i > element at i+1, swap
        if ( arr[i].compareTo(arr[i+1] ) > 0 ) {
          int temp = arr[i];
          arr[i] = arr[i+1];
          arr[i+1] = temp;
        }
        //System.out.println(data); //diag: show current state of list
      }
    }
  }
}