
void setup() {
  size(800, 800);
  background(#0978bd); //dark blue for pattern two
}

void draw() {

  //pattern one draws rectangles of increasing strokeWeight with every line
  /*
  for (int h=0; h<height; h+=50) {
   for (int w=0; w<width; w+=50) {
   pattern_one(w, h);
   
   }
   }
   */

  //pattern two draws a pattern of purple squares with blue stroke
  /*
  for (int h=0; h<height; h+=100) {
   for (int w=0; w<width; w+=100) {
   pattern_two(w,h);
   }
   }
   
   */




  //pattern three draws 500 rectangles of random strokeWeight and stroke color before the screen is cleared. The process repeats.
  /*pattern_three();
   
   if (frameCount % 500 == 0){
   background(#0978bd);
   }
   */

  //pattern four draws rectangles whose height and width is proportional to the left corner of the rectangle
  /*pattern four
   for (int h=0; h<height; h+=100) {
   for (int w=0; w<width; w+=100) {
   pattern_four(w,h);
   }
   }
   */

  //pattern five creates rectangles that go down the the length of the window and have different colors
  //pattern five
  /*for (int w = 0; w<width; w+=50) {
   pattern_five(w);
   }
   */
   //pattern six is a fairly simple gradient pattern
   /*pattern six
  for (int h=0; h<height; h+=50) {
    for (int w=0; w<width; w+=50) {
      pattern_six(w, h);
    }
  }
  */
}

void pattern_one(float x, float y) {
  strokeWeight(y/20);
  rect(x, y, 50, 50);
}

void pattern_two(float x, float y) {

  stroke(#01aef0);//light blue
  strokeWeight(30);
  fill(#9e238e);//purple
  rect(x, y, 100, 100);
}

void pattern_three() {
  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);

  float weight = random(0, 20);
  float x = random(0, width);
  float y = random(0, height);

  stroke(r, g, b);
  strokeWeight(weight);
  rect(x, y, 50, 50);
}

void pattern_four(float x, float y) {
  strokeWeight(3);
  fill(160, 0, 150, 25);//purple
  float width1= x / 10;
  float height1 = y / 10;
  rect(x, y, width1, height1);
}

void pattern_five(float x) {
  fill(255-(x/2), 255-(x/3), 255-(x/4)); //chooses color based on x position
  strokeWeight(0);

  float width1 = width - (x*2); //makes a large rectangle on the outside, and smaller ones when getting closer to the center

  if (width1>0) { //if width1 is greater than 0, draw the rectangle
    rect(x, 0, width1, height);
  }

  //draws a line down the middle to try to create a mirror effect
  strokeWeight (4);
  stroke(105, 165, 195);
  line(0, 398, 800, 398);
}

void pattern_six(float x, float y) {
  strokeWeight(2);
  stroke(120,145,170);
  fill(255-(x/5), 255-(x/3), 255-(x/2));
  rect(x,y,50,50);
}