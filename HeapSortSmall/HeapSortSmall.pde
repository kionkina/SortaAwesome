ArrayList<Integer> arr;
int arrSize;
int boxWidth;
int boxHeight;
int rootY;
int rootX;
float levelX;
float levelY;
boolean filling;
int i;
boolean odd;
int part;
int index;
boolean swapping;
int maxChild;
theSort arr1;
int counter = 0;


static int log(int x, int base)
{ 
  return (int) (Math.log(x) / Math.log(base));
}
void setup() {

  System.out.println("i " + i);
  frameRate(2);
  noStroke();
  background(0);
  size(600, 600);
  arrSize = (int) ((Math.random() * 6) + 5 );
  //nodes = new int[arrSize][2];
  boxWidth = (width - ((2*arrSize) + 100)) / arrSize;
  boxHeight = height/15;
  System.out.println("array size = " + arrSize);
  // ---------------- arr is populated -------------------------
  arr = new ArrayList(arrSize);
  while (i != arrSize) {
    int toAdd = (int)(Math.random() * width);
    arr.add((Integer)toAdd);
    System.out.println("adding " + toAdd);

    fill(225);
    rect(50 + boxWidth*i + i*3, height/10 - boxHeight/2, boxWidth, boxHeight);
    fill(0);
    textSize(15);
    text(Integer.toString(toAdd), 50 + boxWidth*i + i*3, height/10 - boxHeight/2, boxWidth, boxHeight);
    i += 1;
    System.out.println(i);
  }
  
  arr1 = new theSort(arr);
  arr1.heapSortV();
  
  if (i == arrSize) {
    rootY= height/10 - boxHeight/2 + 80;
    rootX = width/2;
    levelX = rootX;
    levelY = rootY;
    node(rootX + 20, rootY, arr.get(0), 0, false);
    for (int p = 1; p < arr.size(); p++) {
      if (p% 2 != 0) {
        odd = true;
      } else { 
        odd = false;
      }
      float level = log(p, 2) + 1;
      System.out.println(p + " " + log(p, 2));
      int loganswer = (int)Math.pow(2, level) - 1;
      if (loganswer == p) {
        System.out.println(" 2^ " + level + " - 1" + "==" + loganswer);
        System.out.println("index " + p + " new level.");
        System.out.println ("level =" + level);
        levelY = rootY + 70*level;
        levelX = rootX - 80*level;
      } else {
        if ( p == Math.pow(2, level -1) + 1) {
          levelX += 250/level;
        } else {
          levelX += 400/level + 10;
        }
      }
      node(levelX, levelY, arr.get(p), level, odd);
    }
  }
  part = 0;
  index = 0;
  swapping = false;
}


//-------------------------- HEAPSORT CODE--------------------------------------------------


void draw() {
  if (counter < arr1.order.size())
  display( arr1.order.get(counter));
  counter++;
}


  void display(int[] arr) {
  //---------------------------------------display---------------------
  background(0);
  noStroke();
  for (int i = 0; i < arr.length; i++){
   fill(225);
    rect(50 + boxWidth*i + i*3, height/10 - boxHeight/2, boxWidth, boxHeight);
    fill(0);
    textSize(15);
    text(Integer.toString(arr[i]), 50 + boxWidth*i + i*3, height/10 - boxHeight/2, boxWidth, boxHeight);
  }
  
  
  node(rootX + 20, rootY, arr[0], 0, false);
  for (int p = 1; p > part && p < arr.length; p++) {
    if (p% 2 != 0) {
      odd = true;
    } else { 
      odd = false;
    }
    float level = log(p, 2) + 1;

    int loganswer = (int)Math.pow(2, level) - 1;
    if (loganswer == p) {

      levelY = rootY + 70*level;
      levelX = rootX - 80*level;
    } else {
      // if (p == 2){
      // levelX += 160;
      //}
      if ( p == Math.pow(2, level -1) + 1) {
        levelX += 250/level;
      } else {
        levelX += 400/level + 10;
      }
    }
    node(levelX, levelY, arr[p], level, odd);
  }
}




//the array is sorted, but just return a reference for increased usefulness

public int maxChildPos( int pos, int part) {
  //3 cases:
  //1. has less than 2 children in the heap:
  if (((pos*2)+2) > part) {
    //1a. has exactly one child:
    if (((pos*2)+1) <= part) {
      //returns the pos of the only child (ie the leftmost)
      return (pos*2)+1;
      //1b. else, there is no left child, return -1:
    }
    else {
    return -1;
    }
  }
  //2. 2 children:
  //if the right child is greater, return the right child
 else if (arr.get((pos*2)+2) >= arr.get(pos*2)+1) {
    return (pos*2)+2;
  }
  //else, the left child is greater, so return it
  return (pos*2)+1;
}


private void swap( int pos1, int pos2 ) 
{  
   int a = arr.get(pos1);
   int b = arr.get(pos2);
   arr.set(pos1, b);
   arr.set(pos2, a);
  System.out.println("swapping " + pos1 + "and " + pos2);
}



//--------------------------------------------------------------------------------------------------------------
void keyPressed() { //reset button
  if (keyCode == 'R' || keyCode == 'r') { // if R is pressed
    setup();// resets
  }
}