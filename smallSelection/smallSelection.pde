int[] arr;
int largestInt = 0;
float boxWidth;
float boxHeight;
int firstBox = 0;
int secondBox = 0;
int a = firstBox;
int b = secondBox;
int arrSize;
int i = 1;
boolean swapping = false;
boolean last = false;
int maxPos;
int pass;
float c;


void setup() {
  frameRate(1);
  background(0);
  size(600, 600);

  arrSize = (int) ((Math.random() * 5) + 5);
  boxWidth = (width - (50 + 2*arrSize)) / arrSize;
  boxHeight = height/10;
  System.out.println("array size = " + arrSize);
  arr = new int[arrSize];
  for (int i =0; i < arrSize; i++) {
    int toAdd = (int)(Math.random() * width);
    arr[i] = toAdd;
    fill(225);
    rect(25 + boxWidth*i + i*2, height/2 - boxHeight/2, boxWidth, boxHeight);
    fill(0);
    textSize(15);
    text(Integer.toString(toAdd), 25 + boxWidth*i + i*3, height/2 - boxHeight/2, boxWidth, boxHeight);
    pass = arrSize - 1;
  }
}
  
 /* //maxPos will point to position of SELECTION (greatest value)
   int maxPos;
   for( int pass = data.size()-1; pass > 0; pass-- ) {
   maxPos = 0;
   for( int i = 1; i <= pass; i++ ) {   
   if ( data[i] > data[maxPos] )
   maxPos = i;
   }
   data.set( maxPos, ( data.set( pass, data.get(maxPos) ) ) );
   }
   }//end selectionSort
   */
  
 void draw() {
 for (int p = 0; p < arrSize; p++){
    fill(0);
    text(Integer.toString(arr[p]), 25 + boxWidth*p + p*3, height/2 - boxHeight/2, boxWidth,boxHeight);
  }
  System.out.println("i" + i);
  System.out.println("maxpos " + maxPos);
    System.out.println("pass " + pass);
  if (pass > 0){
  if (i < pass){
    if (arr[i] > arr[maxPos]){
     maxPos = i;
    }
    
  i += 1;
  }
  System.out.println("swapping " + i + " with " + maxPos);
    int temp = arr[maxPos];
    arr[maxPos] = arr[i];
    arr[i] = temp;
    firstBox = maxPos;
    a = firstBox;
    secondBox = i;
    b = secondBox;
   swapping = true;
  pass -= 1;
  }
 

    if (swapping){
      fill(0);
      rect(25 + boxWidth*firstBox + firstBox*2, height/2 - boxHeight/2, boxWidth, boxHeight);
      rect(25 + boxWidth*secondBox + secondBox*2, height/2 - boxHeight/2, boxWidth, boxHeight);
      fill(225,0,0);
      rect(25 + boxWidth*a + a*2, 400, boxWidth, boxHeight);
      rect(25 + boxWidth*b + b*2, 150, boxWidth, boxHeight);
      a += 1;
    }
    if (a != secondBox + 1) {
      fill(225,0,0);
      c = 25 + boxWidth*a + 2*a;
      rect(c, 400, boxWidth, boxWidth);
      rect(c, 150, boxWidth, boxHeight);
      if (c <= 25 + boxWidth*secondBox + secondBox*2){
      c = c + 0.25;
      }
      a += 1; 
      b -= 1;
    }
     else {
      fill(225);
      rect(25 + boxWidth*firstBox + firstBox*2, height/2 - boxHeight/2, boxWidth, boxHeight);
      rect(25 + boxWidth*secondBox + secondBox*2, height/2 - boxHeight/2, boxWidth, boxHeight);
      delay(1000);
    }             
    swapping = false;
  }