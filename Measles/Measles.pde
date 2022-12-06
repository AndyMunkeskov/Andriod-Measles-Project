//Global Variables
int appWidth, appHeight;
int reset=1;
color resetWhite=#FFFFFF;
boolean nightMode;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, purple=#9100FA, red=#FF030B;
String title = "Start", footer="Quit";
PFont Quit;
//
void setup() {
  //Display & Orientation
  size(600, 400); 
  displayOrientation();
  appWidth = width;
  appHeight = height;
  //
  population();
  //Theme: i.e. Face (will work in portrait and landscape)
  faceSetup(); //Teacher Lesson
  //Background Image (could be in draw too)
}//End setup
//
void draw() {
  measlesDynamic();
    eyes(); 
  mouth(); 
  nose();
  fill(red);
  rect( quitButtonX, quitButtonY*3, quitButtonWidth, quitButtonHeight );
  fill(purple);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  textSize(32);
  fill(red);
  text(" Quit ", quitButtonX, 107);
  Quit = createFont("Harrington", 107);
}//End draw
//
void keyPressed() {
  //KeyBoard Shortcuts
  if ( key=='N' | key=='n') {
    if ( nightMode==false ) {
      nightMode = true;
    } else{
    }
  }
}//End keyPressed
//
void mousePressed() {
  OS_Start();
  //
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
}//End mousePressed
//
//End MAIN Program
