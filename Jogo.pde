int x;
int y;

void setup () {
  size (800, 600);
  rectMode (CENTER);
  x = 100;
  y = 100;
}

void draw () {
  background (#ff5690);
  if (keyPressed)
    switch (key) {
    case 'd':
      x = x + 10;
      break;
    case 'a':
      x = x - 10;
      break;
    case 'w':
      y = y - 10;
      break;
    case 's':
      y = y + 10;
    }
  rect (x, y, 100, 100);
  checkEdges ();
}

void checkEdges () {
  if (x> width || x <0) {
    x = x * -1;
  }
  if (y> height || y <0) {
    y = y * -1;
  }
}
