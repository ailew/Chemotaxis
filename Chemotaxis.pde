Amugus [] crew= new Amugus[(int)(Math.random()*15)+1];
Amugus sus= new Amugus();

void setup(){
  size(1000,1000);
  for(int i =0; i<crew.length; i++){
  crew[i]= new Amugus();
}
}
void draw(){
  background(0);
  for(int i =0; i<crew.length;i++){
    crew[i].show();
    crew[i].move();
  }       
}    

class Amugus{
  int x,y;
   Amugus(){
    x=(int)(Math.random()*1000)-1;;
    y=(int)(Math.random()*1000)-1;;
  } 
  void move(){
    x += (int)(Math.random()*5)-2;
    y+= (int)(Math.random()*5)-2;
    if(x<0)
    x=1;
    if(x>1000)
    x=999;
    if(y<0)
    y=1;
    if(y>1000)
    y=999;
    if(mouseX>x)
    x+=(int)(Math.random()*5)-1;
    else   
    x+=(int)(Math.random()*5)-3;
    if(mouseY>y)
    y+=(int)(Math.random()*5)-1;
    else
    y+=(int)(Math.random()*5)-3;
  }
  
  void show(){
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    noStroke();
    //legs
    ellipse(x-55,y+50,100,250);
    ellipse(x+55,y+50,100,250);
    // head
    ellipse(x,y,200,250);
    stroke(0,0,0);
    //back
    beginShape();
    curveVertex(x-80,y-55);
    curveVertex(x-80,y-55);  
    curveVertex(x-130,y-40);
    curveVertex(x-130,y+70);
    curveVertex(x-80,y+95);
    curveVertex(x-80,y+95);  
    endShape();
  
  //ellipse(x-100,y+20,60,150);
    //face
  fill(173,216,230);
  ellipse(x+30,y-50,150,100);

  }
}
