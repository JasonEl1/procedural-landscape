float h;
float slope;
boolean redo = true;

void setup() {
  size(1200, 600);

  background(#0000AA);

  stroke(#FFFFFF);
  strokeWeight(5);


  h = random(100, 600);
  slope = random(-10, 10);
}

void draw() {

  if (redo == true) {

    for (int i = 0; i<1201; i++) {

      line(i, h, i, 600);
      h = h + slope;

      slope = slope + random(-10, 10);
      slope = slope * random(-1,1);

      println(h);

      if (h>550 || h<50) {

        slope = slope * -1;
        
      }
    }
  }
  redo = false;
}
