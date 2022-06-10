//https://www.youtube.com/watch?v=ZqYy8n2M9x0
int i =0;
void setup (){
size (800,800);
rectMode (RADIUS);
noStroke();
}

void draw(){
translate (width/2, height/2);
background (255,0,0);
dibujarIlusion();
}

void dibujarIlusion (){
for (i=0; i<40; i++){
  rotate (map (mouseX,0,width, PI/20,PI/10));
  translate (0, map(mouseX, 0, height,0,10));
  if (i%2==0) fill (0);
  else
  fill (random (0,255), random (0,10), random (0,10));
  float radio=(width/3)- i*6.8;
  rect (0,0,radio,radio);}
}

void keyPressed() {
background(255,0,0);
i=0;
mouseX=0;
rotate (0);
}
  
void mousePressed(){
if(mousePressed==true){
fill (10,255,10);
}
dibujarIlusion();}
