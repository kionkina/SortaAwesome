int rect1X, rect1Y;      // Position of square button
int rect2X, rect2Y; 
int rect3X, rect3Y;
int rect4X, rect4Y;
int rect5X, rect5Y;
int recW = 300;
int recH = 100;
color rectColor, rect2Color, rect3Color;
color fillcolor;
boolean Over1 = false;
boolean Over2 = false;
boolean Over3 = false;
boolean Over4 = false;
boolean Over5 = false;
int state; // determines which sort will be demonstrated
boolean setup = true;
BubbleSortLarge bubL;
SelectionSortLarge selL;
InsertionSortLarge insL;
InsertionSortSmall insS;
SelectionSortSmall selS;
BubbleSortSmall bubS;

void setup() {
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
  rect4X = (width - recW)/2;
  rect4Y = (height - (2*recH + recH/2))/2;
  rect5X = rect4X;
  rect5Y =  (height - (2*recH + recH/2))/2 + 2*recH/2 + recH/2;
  System.out.println(rect1Y);
}


void draw() {

  //
  if (state == 0) {
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


    makeText("Bubble Sort", rect1X + recW/4 - 10, rect1Y + recH/2 + 10, 0);
    makeText("Selection Sort", rect2X + recW/4 - 10, rect2Y + recH/2 + 10, 0);
    makeText("Insertion Sort", rect3X + recW/4 - 10, rect3Y + recH/2 + 10, 0);
  }


  if (state == 1 || state == 4 || state == 7) {

    update();
    background(0);

    if (Over4) {
      fill(fillcolor);
    } else {
      fill(rect2Color);
    }
    stroke(255);
    rect(rect4X, rect4Y, recW, recH);

    if (Over5) {
      fill(fillcolor);
    } else {
      fill(rect2Color);
    }
    stroke(255);

    rect(rect5X, rect5Y, recW, recH);

    makeText("Small Scale", rect4X + recW/4, rect4Y + recH/2, 0);
    makeText("Large Scale", rect5X + recW/4, rect5Y + recH/2, 0);
  }

  if (state == 2) {
    if (setup) {
      bubS = new BubbleSortSmall();
      setup = false;
    } else {
      bubS.drawBS();
    }
  }

  if (state == 3) {
    if (setup) {
      bubL = new BubbleSortLarge();
      setup = false;
    } else {
      bubL.drawBL();
    }
  }

  if (state==5) {
    if (setup) {
      selS = new SelectionSortSmall();
      setup = false;
    } else {
      selS.drawSS();
    }
  }

  if (state==6) {
    if (setup) {
      selL = new SelectionSortLarge();
      setup = false;
    } else {
      selL.drawSL();
    }
  }

  if (state==8) {
    if (setup) {
      insS = new InsertionSortSmall();
      setup = false;
    } else {
      insS.drawIS();
    }
  }

  if (state==9) {
    if (setup) {
      insL = new InsertionSortLarge();
      setup = false;
    } else {
      insL.drawIL();
    }
  }

  //stroke(0);
}

void makeText(String s, int x, int y, int col) {
  fill(color(col));
  text(s, x, y);
}

void update() {
  if (state == 0) {
    if ( OverRect(rect1X, rect1Y) ) {
      Over1 = true;
      Over2 = false;
      Over3 = false;
    } else if ( OverRect(rect2X, rect2Y) ) {
      Over2 = true;
      Over1 = false;
      Over3 = false;
    } else if ( OverRect(rect3X, rect3Y) ) {
      Over3 = true;
      Over2 = false;
      Over1 = false;
    } else {
      Over1 = false;
      Over2 = false;
      Over3 = false;
    }
  }
  if (state != 0) {  
    if (OverRect(rect4X, rect4Y)) {
      Over4 = true;
      Over5 = false;
    } else if (OverRect(rect5X, rect5Y)) {
      Over4 = false;
      Over5 = true;
    } else {
      Over4 = false;
      Over5 = false;
    }
  }
}

void mouseClicked() {
  if (Over1) {
    state = 1;
  }
  if (Over2) {
    state = 4;
  }
  if (Over3) {
    state = 7;
  }

  if (Over4) {
    state += 1;
  }

  if (Over5) {
    state += 2;
  }
}
//returns true if the mouse is on the respective rectangle
boolean OverRect(int x, int y) {
  return mouseX >= x && mouseX <= x+recW &&
    mouseY  >= y && mouseY <= y +  recH;
}

void keyPressed() { //reset button
  if (keyCode == 'R' || keyCode == 'r') { // if R is pressed
    setup = true;// resets
  }
}