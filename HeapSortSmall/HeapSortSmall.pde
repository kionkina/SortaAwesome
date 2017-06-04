ArrayList<Integer>  arr;
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


  
  static int log(int x, int base)
  { return (int) (Math.log(x) / Math.log(base)); }
  
  private void swap( int pos1, int pos2 ) 
  {  arr.set( pos1, arr.set( pos2, arr.get(pos1) ) ); }
  


void setup() {
  System.out.println("i " + i);
  frameRate(60);
  noStroke();
  background(0);
  size(600, 600);
  arrSize = (int) ((Math.random() * 1) + 15 );
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

  if (i == arrSize) {
    rootY= height/10 - boxHeight/2 + 80;
    rootX = width/2;
    levelX = rootX;
    levelY = rootY;
    node(rootX + 20, rootY, arr.get(0), 0, false);
    for (int p = 1; p < arr.size(); p++) {
      if (p% 2 != 0){
        odd = true;
      }
      else { odd = false; }
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
       // if (p == 2){
         // levelX += 160;
        //}
       if ( p == Math.pow(2, level -1) + 1){
         levelX += 250/level;
        } 
        else {
        levelX += 400/level + 10;
      }
      }
      node(levelX, levelY, arr.get(p),level, odd);
    }
  }
}


//void drawChild(int myX, int myY){















//-------------------------- HEAPSORT CODE--------------------------------------------------
/*
  public void heapSortV() {
 //PART 1: HEAPIFY THE ENTIRE ARRAY
 //we will order it as a max-heap
 //because the partition will shrink from the right, and the right should have the largest element at the end
 int part = 0; //defines the outer upper bound of heap partition (i.e., heap = [0, partition])
 //while the entire thing isn't part of the heap:
 int index  = 0;
 while (part < rawr.length) {
 //index keeps track of where the thing that was most recently added to the heap is
 index = part;
 //until the index'd thing is in the right level of the heap:
 //note: this keeps going until arr[index] is greater because this is a max-heap
 while (rawr[index].getHeight() > rawr[(index-1)/2].getHeight()) {
 //promote the child by swapping with it's parent
 order.add(dupe(rawr));
 count.add(part);
 swap(rawr, index, (index-1)/2);
 index = (index-1)/2;
 }
 part+=1;
 }
 int counter = part;
 part-=1; //partition grew one too much, quick fix
 index = 0;//reuse it cuz why not
 //at this point, the array should be formatted as a max-heap
 //and part will equal the index of the last item, and we have to decrease it until it's back to 0
 while (part > 0) {
 swap(rawr, 0, part);
 part-=1;
 //at this point, the max item is in the right spot
 //now, you just have to reheapify:
 index = 0;
 int maxChild = maxChildPos(rawr, index, part);
 //until you reach a leaf or a point where the maxchild is smaller than the number at index:
 while (maxChild != -1 && rawr[index].getHeight() < rawr[maxChild].getHeight()) {
 //swap with the biggest child unless it's bigger than it (caught by while):
 order.add(dupe(rawr));
 count.add(counter);
 swap(rawr, index, maxChild);
 //update index to be where minChild is
 index=maxChild;
 //update midChild accordingly
 maxChild = maxChildPos(rawr, index, part);
 counter++;
 }
 }
 order.add(dupe(rawr));
 count.add(counter);
 }
 
 public int maxChildPos(Rectangles[] roar, int pos, int part) {
 //3 cases:
 //1. has less than 2 children in the heap:
 if (((pos*2)+2) > part) {
 //1a. has exactly one child:
 if (((pos*2)+1) <= part) {
 //returns the pos of the only child (ie the leftmost)
 return (pos*2)+1;
 //1b. else, there is no left child, return -1:
 }
 return -1;
 }
 //2. 2 children:
 //if the right child is greater, return the right child
 if (roar[(pos*2)+2].getHeight() > roar[(pos*2)+1].getHeight()) {
 return (pos*2)+2;
 }
 //else, the left child is greater, so return it
 return (pos*2)+1;
 }
 */
//--------------------------------------------------------------------------------------------------------------
void keyPressed() { //reset button
  if (keyCode == 'R' || keyCode == 'r') { // if R is pressed
    setup();// resets
  }
}