import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
int appWidth, appHeight;
int reset=1;
color resetWhite=#FFFFFF;
boolean OS_on=false, splashScreenStart=false;
boolean nightMode;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, purple=#9100FA, red=#FF030B;
String title ="Start", footer="Quit";
PFont Quit;
//
void setup() {
  //Display & Orientation
  //size(600,400); //Remind you of Display Geometry
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song1 = minim.loadFile("../Audio/Dramatic.mp3");//able to pass absolute path, file name and extension, and
  effect1 = minim.loadFile("../Audio/Bonk.mp3");
  size(600, 400); 
  displayOrientation();
  appWidth = width;
  appHeight = height;
  println("\t\t\tWidth="+width, "\tHeight ="+height);
  println("Display monitor:", "\twidth:"+displayWidth, "\theight:"+displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="display orientation", instruct="turn your phone or it no workie :(";
  //
  if ( appWidth < appHeight ) { // Declaring Landscape and square
    println(instruct);
  } else {
    println("Display: Good to Go");
    if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor Display
      appWidth=0;
      appHeight=0;
      println("STOP, is broken! ;(");
      if ( appWidth==0 || appHeight==0 ) exit();
      if ( appWidth!=0 && appHeight!=0 ) println("Display: Good to Go");
    } else {
      //Empty ELSE
    }
  }
  //
  population();
  
  faceSetup(); 
}//End setup
//
void draw() {
  if ( OS_on==true && splashScreenStart==false ) splashScreen(); //OS Level Mouse Click
  if ( splashScreenStart==true ) homeScreen();
//
  measlesDynamic();
  eyes(); 
  mouth(); 
  nose();
  fill(red);
  rect( quitButtonX, quitButtonY*3, quitButtonWidth, quitButtonHeight );
  textSize(32);
  fill(purple);
  text("Reset", quitButtonX, 107);
  fill(purple);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  textSize(32);
  fill(red);
  text(" Quit ", quitButtonX, 107);
  Quit = createFont("Harrington", 107);
}//End draw
//
void keyPressed() {
    if ( OS_on==true && key==' ' ) {
    splashScreenStart = true;
}//if ( key=='P' || key=='p' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  if ( key=='P' || key=='p' ) {//Play Pause Stop Button
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()-song1.length()*1/5 ) {
     song1.pause();
    } else {
      song1.play();
    }
  }//End Play Pause STop Button
  int loopNum = 2; //Local Variable plays once and loops twice
  if ( key=='L' || key=='l' ) song1.loop(loopNum-1); //Parameter is Parameter is number of repeats
  if ( key=='I' || key=='i' ) song1.loop(-1); //Parameter is for infinite loops
  if ( key=='F' || key=='f' ) song1.skip(1000); //skip forward 1 second (1000 milliseconds)
  if ( key=='B' || key=='b' ) song1.skip(-1000); //skip backwards 1 second, notice negative, (1000 milliseconds)
  if ( key=='M' || key=='m' ) {//MUTE Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End MUTE Button
  if ( key=='S' || key=='s' ) {//STOP Button
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind(); //Cue SONG to play from beginning
    } else {
      song1.rewind(); //Not playing means song is paused or song position is at the end of the file
    }
 }//End STOP Button
}//End PLayMusic Buttons
void mousePressed() {
  OS_on();
  //
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  //
  if (mousePressed)
     effect1.play();
     effect1.rewind();
}//End mousePressed
//
//End MAIN Program
