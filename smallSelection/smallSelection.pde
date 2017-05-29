int[] arr;
float boxWidth;
float boxHeight;
int firstBox = 0;
int secondBox = 0;
int arrSize;
int i;
int maxPos;
int pass;



void setup() {
  frameRate(1);
  background(0);
  size(600, 600);

  arrSize = (int) ((Math.random() * 5) + 6);
  boxWidth = (width - (50 + 2*arrSize)) / arrSize;
  boxHeight = height/10;
  System.out.println("array size = " + arrSize);
  arr = new int[arrSize];
  for (int i =0; i < arrSize; i++) {
    int toAdd = (int)(Math.random() * width);
    arr[i] = toAdd;
    fill(225);
    rect(25 + boxWidth*i + i*3, height/2 - boxHeight/2, boxWidth, boxHeight);
    fill(0);
    textSize(14);
    text(Integer.toString(toAdd), 25 + boxWidth*i + i*3, height/2 - boxHeight/2, boxWidth, boxHeight);
    pass = arrSize - 1;
   
  }
   i = 1;
   maxPos = 0;
}
  
  /*//maxPos will point to position of SELECTION (greatest value)
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
  System.out.println("maxPos = " + maxPos );
  System.out.println("i" + i);
  System.out.println("maxpos " + maxPos);
  System.out.println("pass " + pass);

  if (pass > 0){
    if (i <= pass){
    if (arr[i] > arr[maxPos]){
     maxPos = i;
    } 

  } 
        i += 1;
  if (i == pass + 1){
  System.out.println("swapping " + i + " with " + maxPos);
 // textSize(25);
  //fill(225);
  //text("swapping " + i +" and " + maxPos, 25, 200);
    int oldMax = arr[maxPos];
    int oldI = arr[i - 1];
    arr[i - 1] = oldMax;
    arr[maxPos] = oldI;
   maxPos = 0;
    pass -= 1;
    i = 1;
  }
  }



  //---------------------------------NUMBER DISPLAY MAINTANANCE------------------------------------------------------
  stroke(0, 102, 204);
  strokeWeight(3);
  fill(0);
  rect(25, 10, 150, 40);  
  textSize(20);
  fill(255);
  text("MaxPos: " + Integer.toString(maxPos), 45, 37); 
  
  
  noStroke();
  fill(0, 102, 204);
  rect(25 +boxWidth+(boxWidth + 3)*(pass), width/2 - boxHeight*2, 3, boxHeight*4);
  fill(0);
  rect(25 +boxWidth+((boxWidth + 3)*(pass + 1)), width/2 - boxHeight*2, 3, boxHeight*4);
  if(pass == 0){ 
  fill(0); 
  rect(25 +boxWidth+((boxWidth + 3)*pass), width/2 - boxHeight*2, 3, boxHeight*4);
  }
  noStroke();
  for (int p =0; p < arrSize; p++) {  
   
    if (p > pass ||( pass == 0 && p == 0))  {
    fill(138, 225,0);
   }  
    else if(p == maxPos){ fill(127,255,212);}
    else {fill(225);}
    
    rect(25 + boxWidth * p + 3*p, height/2 - boxHeight/2, boxWidth, boxHeight);
    fill(0);
    textSize(14);
    text(Integer.toString(arr[p]), 25 + boxWidth*p + p*3, height/2 - boxHeight/2, boxWidth, boxHeight);
   }
 //-------------------------parition maintenance-------------------------------------------------------------
 }
  
/*
  fill(0, 102, 204);
  rect(25, width/2 - boxHeight*2, 3, boxHeight*4);
  fill(0);
  rect(25 +boxWidth+boxWidth + 3, width/2 - boxHeight*2, 3, boxHeight*4);
  */