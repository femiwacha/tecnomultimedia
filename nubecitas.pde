//variable



void setup (){
 size(400,400);
 background (0, 0, 255);
 strokeWeight(1);
 textSize (32);


}

void draw(){
 
 
  
     
  println("x:");
  println(mouseX);
  println("y:");
  println(mouseY);
  
  /*nube 2*/
 
  fill (255);
  noStroke();
circle (70,65,50);
circle (45,85,50);
circle (95,85,50);
circle (70,90,50);
 fill (0);
text(" ü  ",50, 93);
        

/* nube 1 */
 fill (255);
  noStroke();
circle (311,43,50);
circle (286,63,50);
circle (336,63,50);
circle (311,68,50); 
 fill (0);
text("ü", 300, 65);
        

/* nube 3*/
 fill (255);
noStroke();
circle (200,153,50);
circle (175,173,50);
circle (225,173,50);
circle (200,178,50);
 fill (0);
text("ü", 190, 182);

/* nube 4*/
 fill (255);
noStroke();
circle (295,276,50);
circle (270,296,50);
circle (320,296,50);
circle (295,301,50);
 fill (0);
text("ü", 287, 300);

/* nube 5*/
 fill (255);
noStroke();
circle (31,290,50);
circle (6,310,50);
circle (56,310,50);
circle (31,315,50);
 fill (0);
text("ü", 20, 320);

/* nube 6*/
 fill (255);
noStroke();
circle (149,376,50);
circle (125,396,50);
circle (174,396,50);
circle (149,401,50);
 fill (0);
text("ü", 140, 400);


/* nube 7*/
 fill (255);
noStroke();
circle (360,392,50);
circle (335,412,50);
circle (385,412,50);
 fill (0);
text("ü", 350, 415);


/* nube 7 prueba de movimiento*/
/*noStroke();
circle (360,392,50);
stroke(1);
circle (335,412,50);
noFill();
circle (385,412,50);*/
}
