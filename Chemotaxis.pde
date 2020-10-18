Bacteria[] colony; 
void setup()   
 {     
   size(300,300);
   colony = new Bacteria[3];
   for(int i = 0; i < colony.length; i++)_
   {
     colony[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   background(0);
   for(int i = 0; i < colony.length; i++)
   {
     colony[i].show();
     colony[i].walk();
   }
 }  
 class Bacteria{     
   int myX, myY, myColor; 
   Bacteria(int i){
     myX = (int)(Math.random()*300)+100;
     myY = (int)(Math.random()*300)+100;
     myColor = color(0,255,0);
 }   
 void walk(){
   myX = myX + (int)(Math.random()*3)-1;
   myY = myY + (int)(Math.random()*3)-1;
 }
 void show(){
   fill(myColor);
   ellipse(myX,myY,50,50);
   }
 }
