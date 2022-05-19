//importante: Para usar este codigo tenes que desplazar el mouse de izquierda a derecha sobre los botones grises ubicados en la parte inferior del cuadro
PFont fuenteNueva;
PImage cielo;
int radius1 =10;

void setup(){
size (400, 400);
textSize (100); 
textAlign(CENTER);
//declaracion fuente
fuenteNueva= createFont ("Men_In_Black_Credits.ttf",100);
cielo = loadImage("cielo.jpeg");
ellipseMode(RADIUS);
}

void draw(){
background(0);
image (cielo, 0, 0);
textFont(fuenteNueva);
fill(255,255,255,50);

//botones
ellipse(28,375,10,10); //1
ellipse(85,375,10,10); //2
ellipse(141,375,10,10); //3
ellipse(197,375,10,10); //4
ellipse(252,375,10,10); //5
ellipse(308,375,10,10); //6
ellipse(364,375,10,10); //7

//boton diapo1
if (dist (mouseX, mouseY, 28, 375) <radius1) {
fill(255);
textAlign (LEFT);
textFont(fuenteNueva);
textSize (200);
text ("COLOMBIA", 100,176);
text ("PICTURES", 100,286);
textSize (100); 
text ("presents", 144,317);}

//boton diapo2
if (dist (mouseX, mouseY, 85, 375) <radius1) {
fill(255);
textAlign(CENTER);
textSize (200);
text ("AMBLIN", 200,176);
text ("ENTRETEINMENT",200,286);
textSize (100); 
text ("production", 200,317);
text ("an", 200,78); }
  
//boton diapo 3
if (dist (mouseX, mouseY, 141, 375) <radius1) {
fill(255);
textAlign(CENTER);
textSize (150);
text ("Mac DONALD", 200,176);
textSize (200);
text ("PARKES",200,286);
textSize (100); 
text ("production", 200,317);
text ("in association with", 200,97); }
  
//boton diapo 4
if (dist (mouseX, mouseY, 197, 375) <radius1) { 
fill(255);
textAlign(CENTER);
textSize (200);
text ("BARRY", 200,176);
text ("SONNEFELD",200,286);
textSize (100); 
text ("film", 200,317);
text ("a", 200,78); }
    
//boton diapo 5
if (dist (mouseX, mouseY, 252, 375) <radius1) { 
fill(255);
textAlign(CENTER);
textSize (200);
text ("TOMY", 200,176);
text ("LEE",200,260);
text ("JHONES",200,350);
textSize (100); 
text ("starring", 200,78); }

 //boton diapo 6
if (dist (mouseX, mouseY, 308, 375) <radius1) {
fill(255);
textAlign(CENTER);
 textSize (200);
text ("WILL", 200,176);
text ("SMITH",200,286); }

 //boton
if (dist (mouseX, mouseY, 364, 375) <radius1) {
fill(255);
textAlign(CENTER);
textSize (200);
text ("MEN", 200,140);
text ("IN",200,240);
text ("BLACK",200,340); }

//mouse
println ("x:");
println (mouseX);
println ("y:");
println (mouseY);

}
