void setup() {
  size(500, 500);  
  background(5, 31, 100); 
  noLoop(); //stops the draw() function from repeating
}

void draw() {
  for (int y = 15; y < 550; y+=25)
    for(int x = 0; x < 550; x+=25)
      scale(x,y);
}

// x = 55
// y = 40

void scale(int x, int y) {
  noStroke(); 
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256)); 
  triangle(x - 25, y, x - 10, y + 30, x, y); // (bottom) 
  triangle(x - 10, y - 30, x - 25, y, x, y);  // (top)
  triangle(x - 5, y - 13, x - 5, y + 15, x + 15, y - 2); // (right)
  triangle(x - 15, y - 13, x - 15, y + 15, x - 35, y - 2);  // (left) 
}

