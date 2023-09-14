//sclaes porejct htign
void setup(){
  size(800,800);
  noLoop();
}

void draw(){
  for(int iWannaGoHome = 100; iWannaGoHome < 701; iWannaGoHome += 200){
    for(int whenDoesThisClassEnd = 100; whenDoesThisClassEnd < 701; whenDoesThisClassEnd += 200){
      scale(whenDoesThisClassEnd, iWannaGoHome);
    }
  }
}

void scale(int x, int y){
  //determines whether mr chan is angry, sad, or neutral
  int eyebrow = (int)(Math.random() * 3) - 1;
  //determines whether mr chan is smiling, frowning, or neutral
  int mouth = (int)(Math.random() * 3);
  //determines if golden mr chan
  int golden = (int)(Math.random() * 100);
  int r = 0;
  int g = 0;
  if(golden < 1){
    r = 255;
    g = 215;
  }
  
  //face
  fill(241,194,125);
  ellipse(x, y, 100, 100);
  
  //eyes
  fill(r,g,0);
  ellipse(x-20,y-13,12,12);
  ellipse(x+20,y-13,12,12);
  
  //nose
  noFill();
  line(x-4,y-3,x-6,y+8);
  beginShape();
  curveVertex(x-6,y+8);
  curveVertex(x-6,y+8);
  curveVertex(x-8,y+11);
  curveVertex(x-7,y+12);
  curveVertex(x-5,y+13);
  curveVertex(x,y+11);
  curveVertex(x,y+11);
  endShape();
  
  //hair
  fill(r,g,0);
  translate(x-53,y-40);
  rotate(-PI/7);
  rect(0,0,55,20);
  rotate(PI/7);
  translate(53-x, 40-y);
  
  translate(x-3, y-65);
  rotate(PI/7);
  rect(0,0,55,20);
  rotate(-PI/7);
  translate(3-x, 65-y);
  
  //eyebrows
  translate(x-35,y-25);
  rotate(eyebrow * PI/9);
  rect(0,0,30,3);
  rotate(eyebrow * -PI/9);
  translate(35-x, 25-y);
  
  translate(x+35, y-22);
  rotate(eyebrow * -PI/9 + PI);
  rect(0,0,30,3);
  rotate(eyebrow * PI/9 + PI);
  translate(-x-35, 25-y);
  
  //mouth
  System.out.println(mouth);
  noFill();
  if(mouth != 2){
    arc(x, y+25, 40, 10, PI/10 + PI * mouth, PI * 9/10 + PI * mouth);
  } else {
    line(x-20,y+25,x+20,y+25);
  }
}
