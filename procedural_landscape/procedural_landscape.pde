float h;
float slope;
boolean redo = true;

void setup() {
  size(1200, 600);

  stroke(#696969);
  strokeWeight(6);

}

void draw() {

  if (redo == true) {
    
    background(#B1D5ED);
    h = random(100, 600);
    slope = random(-10, 10);

    for (int i = 0; i<1201; i++) {

      line(i, h, i, 600);
      h = h + slope;

      slope = slope + random(-10, 10);
      slope = slope * random(-1,1);


      if (h>550 || h<50) {

        slope = slope * -1;
        
      }
    }
  }
  redo = false;
}

void keyPressed(){
  
 redo=true;
  
}
void keyReleased(){
  
 redo=false; 
  
}
