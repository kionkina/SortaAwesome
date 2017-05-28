int[] arr;
int largestInt = 0;
float boxWidth;
float boxHeight;
int firstBox = 0;
int secondBox = 0;
int a = firstBox;
int b = secondBox;
int z = 0;
int arrSize;
int partition = 1;
int i = partition;
boolean swapping = false;
boolean last = false;
int old;

void setup(){
  frameRate(1);
  background(0);
  size(600, 600);
  arrSize = (int) ((Math.random() * 5) + 5);
  boxWidth = (width - (50 + 2*arrSize)) / arrSize;
  boxHeight = height/10;
  System.out.println("array size = " + arrSize);
  arr = new int[arrSize];
  for (int i =0; i < arrSize; i++){
    int toAdd = (int)(Math.random() * width);
    arr[i] = toAdd;
    fill(225);
    rect(25 + boxWidth*i + i*2, height/2 - boxHeight/2, boxWidth,boxHeight);
    fill(0);
    textSize(15);
    text(Integer.toString(toAdd), 25 + boxWidth*i + i*3, height/2 - boxHeight/2, boxWidth,boxHeight);
  }

  
}

void sort(){
   for ( int partition = 1; partition < arr.length; partition++ ) {
      for ( int i = partition; i > 0; i-- ) {

        if ( arr[i] <  arr[i-1] ) {
         fill(225);
        System.out.println( "swap indices "+(i-1)+" & "+i+"...");
      
          int temp = arr[i];
          arr[i] = arr[i-1];
          arr[i-1] = temp;
       
      } else 
        break;
      }
    }
}

void draw(){
    
stroke(165, 30, 225);
strokeWeight(5);
rect(25,10, 150, 40);  
textSize(20);
fill(255);
text("Partition: " + Integer.toString(partition), 45, 37); 

 System.out.println("partition = " + partition );
 
 
 //-----------------------------------comparisons-------------------------------------------------
 stroke(0);
 fill(165, 30, 225);
 strokeWeight(1);
 if (i > 0){
 rect(25 +(boxWidth + 3)*(i), width/2 - boxHeight/2 + 100, boxWidth, 10);
 old = i;
 rect(25 +(boxWidth + 3)*(i - 1), width/2 - boxHeight/2 + 100, boxWidth, 10);
 fill(0);
 rect(25 + (boxWidth + 3)*(old), width/2 - boxHeight/2 + 100, boxWidth, 10);
 rect(25 +(boxWidth + 3)*(old - 1), width/2 - boxHeight/2 + 100, boxWidth, 10);
 }
 
 
 
  //-------------------------parition maintenance-------------------------------------------------------------

  fill(225, 0, 0);
  rect(25 +boxWidth+(boxWidth + 3)*(partition), width/2 - boxHeight*2, 3, boxHeight*4);
  fill(0);
  rect(25 +boxWidth+((boxWidth + 3)*(partition - 1 )), width/2 - boxHeight*2, 3, boxHeight*4);

 //-----------------------------------------------------------------------------------------------------------
if (partition < arrSize){
  if (i > 0){
   if (arr[i] < arr[i - 1] && !swapping){
     
      System.out.println("swapping" + Integer.toString(i-1) + "and" + i);
      int temp = arr[i];
          arr[i] = arr[i-1];
          arr[i-1] = temp;
      firstBox = i - 1;
      secondBox = i;
      swapping = true;
    }
  if (i-1 <= 0){
  partition += 1;
  i = partition;
  }
  else {
    i -= 1;
  }
}
}

          
//-----------------------------------------SWAP----------------------------------------------------------
if (swapping){
  stroke(253,130,0);
  strokeWeight(2);
  fill(225);
  rect(25 + boxWidth*firstBox + firstBox*3, height/2 - boxHeight/2, boxWidth,boxHeight);
  fill(0);
  text(Integer.toString(arr[firstBox]), 25 + boxWidth*firstBox + firstBox*3, height/2 - boxHeight/2, boxWidth,boxHeight);
  fill(225);
  stroke(253,130,0);
  strokeWeight(2);
  rect(25 + boxWidth*secondBox + secondBox*3, height/2 - boxHeight/2, boxWidth,boxHeight);
  fill(0);
  text(Integer.toString(arr[secondBox]), 25 + boxWidth*secondBox + secondBox*3, height/2 - boxHeight/2, boxWidth,boxHeight);
  swapping = false;
                        }
                       
//------------------------------------------------------------------------------------------------------
}


/*-----------------------------------------USE FOR SELECTION SORT----------------------------------------------------------
          if(swapping){
            if ( a == firstBox){
             fill(0);
             rect(25 + boxWidth*firstBox + firstBox*2, height/2 - boxHeight/2, boxWidth,boxHeight);
             rect(25 + boxWidth*secondBox + secondBox*2, height/2 - boxHeight/2, boxWidth,boxHeight);
             fill(50);
             rect(25 + boxWidth*a + a*2, 400, boxWidth, boxHeight);
             rect(25 + boxWidth*b + b*2, 150, boxWidth, boxHeight);
             a += 1;
            }
             if (a != secondBox + 1){
             fill(50);
             rect(25 + boxWidth*a + 2*a, 400, boxWidth,boxHeight);
             rect(25 + boxWidth*b + 2*b, 150, boxWidth,boxHeight);
             fill(0);
             rect(25 + boxWidth*(a - 1) + 2*(a - 1), 400, boxWidth,boxHeight); 
             rect(25 + boxWidth*(b + 1) + 2*(b + 1), 150, boxWidth,boxHeight); 
             a += 1; 
             b -= 1;
              }
            else{
            fill(0);
            rect(25 + boxWidth*(a-1) + 2*(a-1), 400, boxWidth,boxHeight);
            rect(25 + boxWidth*(b+1) + 2*(b+1), 150, boxWidth,boxHeight);
            fill(225);
            rect(25 + boxWidth*firstBox + firstBox*2, height/2 - boxHeight/2, boxWidth,boxHeight);
            rect(25 + boxWidth*secondBox + secondBox*2, height/2 - boxHeight/2, boxWidth,boxHeight);     
            }             
            swapping = false;
           // delay(10000);
          }
         */


  
  
  

    
    
    
    
    
    