Walker[] cars = new Walker[100];
void setup(){
 size(400,400); 

   for (int i = 0; i < cars.length; i++) {
    cars[i] = new Walker((int)(Math.random()*246),(int)(Math.random()*246),(int)(Math.random()*246));
  }

}
void draw(){
 background(0);

for (int i = 0; i < cars.length; i++) {
  cars[i].walk();
  cars[i].show();
}

}

class Walker{
  int myX, myY;
  int myr,myg,myb;
  //constructor
  //initialize member variables
  Walker(int c, int o, int l){
    myX = 250;
    myY = 250;
    myr = c;
    myg = o;
    myb = l;
  }
  void walk(){
    if(mouseX > myX){
      myX = myX + (int)(Math.random()*4)-1;
    }
    else{
      myX = myX + (int)(Math.random()*4)-3;
    }
     if(mouseY > myY){
      myY = myY + (int)(Math.random()*4)-1;
    }
    else{
      myY = myY + (int)(Math.random()*4)-3;
    }
     
  }
  void show(){
    fill(myr,myg,myb);
    ellipse(myX, myY, 50, 50);
  }
}


 
