rArr rects;
int[] arr;

private static int[] merge( int[] a, int[] b ) {

  int[] retArr = new int[ a.length + b.length ];

  //init position markers for each input array
  int aPos = 0;
  int bPos = 0;

  int pos = 0; //position marker for return array

  while( aPos < a.length && bPos < b.length ) {
      if ( a[aPos] < b[bPos] ) {
    retArr[pos] = a[aPos];
    aPos++;
      }
      else {
    retArr[pos] = b[bPos];
    bPos++;
      }
      pos++;
  }
  //at least one input array has been exhausted
  if ( bPos >= b.length )
      for( ; pos < retArr.length; pos++ ) {
    retArr[pos] = a[aPos]; 
    aPos++;
      }
  else
      for( ; pos < retArr.length; pos++ ) {
    retArr[pos] = b[bPos]; 
    bPos++;
      }

  return retArr;
}//end merge()

public static int[] sort( int[] arr ) {

  //if dataset is 1 element, then dataset is sorted
  if ( arr.length <= 1 ) 
      return arr;

  //else, halve dataset and recurse on each half
  int leftLen = arr.length / 2;
  int[] leftHalf = new int[ leftLen ];
  int[] rightHalf = new int[ arr.length - leftLen ];

  for( int i=0; i<arr.length; i++ ) {
      if ( i < leftLen )
    leftHalf[i] = arr[i];
      else
    rightHalf[ i-leftLen ] = arr[i];
  }

  return merge( sort(leftHalf), sort(rightHalf) );
}