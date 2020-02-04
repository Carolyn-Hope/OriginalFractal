

void setup(){
  size(800,800);
}

void draw(){
  background(255);
  strokeWeight(2);
  stroke(100,0,255);
  translate(400,400);
  rotate((float)Math.PI/4);
  metaRhombus(-200,-200,400,4);



}

void metaRhombus(float x, float y, float len, int layers){
  noFill();
  rect(x, y, len, len);
  if(layers != 0){
    metaRhombus(x, y,len/3,layers - 1);
    metaRhombus(x + len * 2/3, y, len/3,layers - 1);
    metaRhombus(x, y + len * 2/3, len/3,layers - 1);
    metaRhombus(x + len * 2/3, y + len * 2/3, len/3,layers - 1);
  }

}
