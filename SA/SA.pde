int rect1X, rect1Y;      // Position of square button
int rect2X, rect2Y; 
int rect3X, rect3Y; 
int recW = 300;
int recH = 100;
color rectColor, rect2Color, rect3Color;
color fillcolor;
boolean Over1 = false;
boolean Over2 = false;
boolean Over3 = false;
int state; // determines which sort will be demonstrated

void setup(){
background(color(0));
textSize(32);
text("Sorta Aweseome Visualizer", 120, 100); 
fill(0, 50, 153);
  size(600, 600);
  rectColor = color(50);
  rect2Color = color(50);
  rect3Color = color(50);
  fillcolor = color(255);
 
 //locates 
  rect1X = (width - recW)/2;
  rect1Y = (height - recH*3 + 20*2) / 2  ;
  rect2X = rect1X;
  rect2Y = rect1Y + recH +  20;
  rect3X = rect2X;
  rect3Y = rect2Y + recH + 20;
  System.out.println(rect1Y);
}
 
 
void draw() {

  update();
  

  if (Over1) {
 
    fill(fillcolor);
 
  } else {
  
        fill(rectColor);
  }
  stroke(255);
  rect(rect1X, rect1Y, recW, recH);
  
 


  if (Over2) {

       fill(fillcolor);

  } else {

        fill(rect2Color);
  }
  stroke(255);
  rect(rect2X, rect2Y, recW, recH);
  
  if (Over3) {

     fill(fillcolor);

  } else {
    
    
    fill(rect3Color);   
  }
  stroke(255);
  rect(rect3X, rect3Y, recW, recH);
      
      
 makeText("Bubble Sort",rect1X + recW/4 - 10, rect1Y + recH/2 + 10, 0);

 makeText("Selection Sort",rect2X + recW/4 - 10, rect2Y + recH/2 + 10, 0);
 makeText("Insertion Sort",rect3X + recW/4 - 10 , rect3Y + recH/2 + 10, 0);
         
 
  //stroke(0);
}

void makeText(String s, int x, int y, int col) {
   fill(color(col));
    text(s, x, y);
}

void update() {
  if ( OverRect(rect1X, rect1Y) ) {
    Over1 = true;
    Over2 = false;
    Over3 = false;
  } 
  else if ( OverRect(rect2X, rect2Y) ) {
    Over2 = true;
    Over1 = false;
    Over3 = false;
  }
  else if ( OverRect(rect3X, rect3Y) ) {
    Over3 = true;
    Over2 = false;
    Over1 = false;
  } 
  else {
    Over1 = false;
    Over2 = false;
    Over3 = false;
  }
}

void mousePressed() {
  if (Over1) {
    state = 1;
  }
  if (Over2) {
    state = 2;
  }
  if (Over3) {
    state = 3;
  }
}
//returns true if the mouse is on the respective rectangle
boolean OverRect(int x, int y) {
   return mouseX >= x && mouseX <= x+recW &&
       mouseY  >= y && mouseY <= y +  recH;
}


  
  
  
  