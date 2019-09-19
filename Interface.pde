import controlP5.*;
ControlP5 cp5;
ControlP5 cp51;
ControlP5 cp52;

void setup()
{
  size(500,700);
  background(255);
   smooth(2);
  cp5 = new ControlP5(this);
  PImage[] btnImages = {loadImage("stop before.jpg"),loadImage("stop after.jpg"), loadImage("stop after.jpg")};
  cp5.addButton("Stop").setImages(btnImages).setSize(50, 50).updateSize().setPosition(75,35);
 // cp51 = new ControlP5(this);
  PImage[] btnImages1 = {loadImage("call.jpg"),loadImage("call.jpg"), loadImage("call.jpg")};
  cp5.addButton("Call").setImages(btnImages1).setSize(50, 50).updateSize().setPosition(200,35);
 // cp52 = new ControlP5(this);
  PImage[] btnImages2 = {loadImage("cancel.jpg"),loadImage("cancel.jpg"), loadImage("cancel.jpg")};
  cp5.addButton("Cancel").setImages(btnImages2).setSize(50, 50).updateSize().setPosition(300,45);
  
  PImage[] btnImages3 = {loadImage("5 before.jpeg"),loadImage("5 after.jpeg"), loadImage("5 after.jpeg")};
  cp5.addButton("5").setImages(btnImages3).setSize(50, 50).updateSize().setPosition(200,130);
  
  PImage[] btnImages4 = {loadImage("4 before.jpeg"),loadImage("4 after.jpeg"), loadImage("4 after.jpeg")};
  cp5.addButton("4").setImages(btnImages4).setSize(50, 50).updateSize().setPosition(200,210);

  PImage[] btnImages5 = {loadImage("3 before.jpeg"),loadImage("3 after.jpeg"), loadImage("3 after.jpeg")};
  cp5.addButton("3").setImages(btnImages5).setSize(50, 50).updateSize().setPosition(200,290);
  
  PImage[] btnImages6 = {loadImage("2 before.jpeg"),loadImage("2 after.jpeg"), loadImage("2 after.jpeg")};
  cp5.addButton("2").setImages(btnImages6).setSize(50, 50).updateSize().setPosition(200,370);
  
  PImage[] btnImages7 = {loadImage("1 before.jpeg"),loadImage("1 after.jpeg"), loadImage("1 after.jpeg")};
  cp5.addButton("1").setImages(btnImages7).setSize(50, 50).updateSize().setPosition(200,450);
  
  PImage[] btnImages8 = {loadImage("g before.jpeg"),loadImage("g after.jpeg"), loadImage("g after.jpeg")};
  cp5.addButton("G").setImages(btnImages8).setSize(50, 50).updateSize().setPosition(200,530);
  
  PImage[] btnImages9 = {loadImage("door close.jpeg"),loadImage("door close.jpeg"), loadImage("door close.jpeg")};
  cp5.addButton("Door Close").setImages(btnImages9).setSize(50, 50).updateSize().setPosition(75,610);
  
  PImage[] btnImages10 = {loadImage("bell.jpeg"),loadImage("bell.jpeg"), loadImage("bell.jpeg")};
  cp5.addButton("Bell").setImages(btnImages10).setSize(50, 50).updateSize().setPosition(200,610);
  
  PImage[] btnImages11 = {loadImage("door open.jpeg"),loadImage("door open.jpeg"), loadImage("door open.jpeg")};
  cp5.addButton("Door Open").setImages(btnImages11).setSize(50, 50).updateSize().setPosition(300,610);
}
void draw()
{
  background(255);  
  fill(0);
  text("Elevator",370,280);  
  
}
void controlEvent(CallbackEvent event) {
  if (event.getAction() == ControlP5.ACTION_CLICK) {
    switch(event.getController().getAddress()) {
    case "/1":
      println("1st Floor");        
      frameRate(1);
      text("1st floor",370,330);  
      break;
      
    case "/2":
      println("2nd Floor");                         
      frameRate(1);
      text("2nd Floor",370,330);  
      break;
      
    case "/3":
      println("3rd Floor");                        
      frameRate(1);
      text("3rd Floor",370,330);  
      break;
      
    case "/4":
      println("4th Floor");                        
      frameRate(1);
      text("4th Floor",370,330);  
      break;
      
    case "/5":
      println("5th Floor");                        
      frameRate(1);
      text("5th Floor",370,330);  
      break;
      
    case "/G":
      println("Ground Floor");                         
      frameRate(1);
      text("Ground Floor",370,330);  
      break;
      
      case "/Call":
      println("Calling 911");     
      frameRate(1);
      text("Calling 911",370,380);   
      break;
      
    case "/Cancel":
      println("Cancelling Call");     
      frameRate(1);
      text("Cancelling Call",370,380);   
      break;
      
      case "/Stop":
      println("Stopping!");      
      frameRate(1);
      text("Stopping!",370,380);   
      break;
      
    case "/Door Open":
      println("Opening Door");                        
      frameRate(1);
      text("Opening the Door",370,380);   
      break;
      
    case "/Door Close":
      println("Closing Door");                        
      text("Closing the Door",370,380);   
      break;
      
      case "/Bell":
      println("Ringing Bell...");                        
      text("Ringing Bell...",370,380);   
      break;
    }
  }
}
