// https://www.youtube.com/watch?v=doegp58Gw-g
ArrayList<Integer> x = new ArrayList<Integer>() , y = new ArrayList<Integer>();
int w=30, h=30, blocks=20, direction=2, foodx =15, foody =15, fc1 =255, fc2= 255, fc3= 255,speed=8;
int[]x_direction={0, 0, 1, -1}, y_direction={1, -1, 0, 0, };
boolean gameover=false;
int cronometro = millis();
String estado;

void setup(){
  size (600, 600);
  textAlign(CENTER);
  x.add(0);
  y.add(15);
  estado = "inicio";
 cronometro =0;
}
void draw(){
 if ( estado.equals("inicio") ) {
 background( 90, 255, 0 );
  textSize (30);
   fill (255);
    text( "BIENVENIDX\n presione la barra espaciadora\n para continuar", width/2, height/2 ); 
 } else if ( estado.equals("instrucciones") ) {
    background( 49, 135, 2  ); 
    if (dist (mouseX, mouseY, width/2, 550)< 20){ 
      fill (0);
    }else{ fill (255);
    }ellipseMode (RADIUS);
    ellipse ( width/2, 550, 20 , 20);
  fill (255);
  text( estado, width/2, height/2-200 );  
  text (" En este juego tenes que comer la\n mayor cantidad de frutas\n posible en menos de un minuto. \n Para eso podes moverte hacia\n  la izquierda, la derecha, \n ariba o abajo.", width/2, height/2 -100);
 fill (20);
  text (" apreta el boton para continuar", width/2, height/2+200 );  
} 
  else if ( estado.equals("juego")){
    cronometro++;
    background (0);
 fill (61, 255, 0 );
 for (int i= 0; i< x.size(); i++) rect(x.get(i)*blocks, y.get(i)*blocks, blocks, blocks);
  ellipseMode(CENTER);
  fill(fc1, fc2, fc3);
 ellipse(foodx*blocks+10, foody*blocks+10, blocks, blocks); 
 textAlign(LEFT);
 textSize(25);
 fill(255);
 text("Comida: "+ x.size(), 10,10, width- 20, 50); 
if(frameCount%speed==0){
  x.add(0, x.get(0) + x_direction[direction]);
  y.add(0, y.get(0) + y_direction[direction]); 
 if(x.get(0) < 0 || y.get(0)<0 || x.get(0)>=w ||y.get(0)>=h) gameover=true;
 for(int i= 1; i<x.size(); i++)
 if(x.get(0)==x.get(i)&& y.get(0)== y.get(i)) gameover= true;
 if(x.get(0)==foodx && y.get(0)== foody){
  if (x.size()%5==0 &&speed>=2) speed -=1; //incremento de velocidad
    foodx = (int) random(0,w);
   foody = (int) random(0,h);
   fc1= (int) random(255);fc2= (int) random(255);fc3= (int) random(255);
  }else{
  x.remove(x.size()-1);
  y.remove(y.size()-1);
 } 
 }
  println ("cronometro:");
    println (cronometro/60); 
 if (estado .equals ("juego") && ( cronometro >= 60*60 ) ){
estado = "perder";
    }
  }else if (estado .equals ("perder")){     //pantalla de perdiste
  fill(255, 206, 60);
  textSize(30);
  textAlign (CENTER);
  text ("GAME OVER\n Tu puntaje es: " + x.size()+ "\n Apreta flecha izquierda \n para volver", width/2, height/3);
if(keyCode==LEFT){
x.clear();
y.clear();
x.add(0);
y.add(15);
direction=2;
speed=8;
gameover=false;
cronometro = 0;
}
}else if (estado .equals ("ganar")){  
   fill(255, 206, 60);
  textSize(30);
  textAlign (CENTER);
  text ("GANASTE\n Tu puntaje es: " + x.size()+ "\n Apreta flecha izquierda \n para volver", width/2, height/3);
if(keyCode==LEFT){
x.clear();
y.clear();
x.add(0);
y.add(15);
direction=2;
speed=8;
gameover=false;
cronometro = 0;
  }
 }
}
  void mousePressed() {
  //evento que cambia de instrucciones a jugando
  if ( estado.equals("instrucciones") && dist (mouseX, mouseY, width/2, 550) < 20){
    estado = "juego";
  }
 }
void keyPressed(){
  if ( estado.equals("inicio") && key == ' ' ) {
    estado = "instrucciones";                  }
  if ( estado.equals("perder") && key == CODED) {
    if ( keyCode == LEFT ) {
    if ( estado.equals("perder") || estado.equals("ganar") ) {
      reiniciar();
    }
   }
  }
   
  int newdir=keyCode == DOWN? 0:(keyCode== UP?1:(keyCode == RIGHT?2:(keyCode == LEFT?3:-1)));
  if (newdir != -1) direction = newdir;  
 }
 void reiniciar() {
  estado = "inicio";
  cronometro = 0;
x.clear();
y.clear();
x.add(0);
y.add(15);
direction=2;
speed=8;
gameover=false;  
}
