
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Varibles
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" varible holding extensions WAV, AIFF, AU, SN, MP3
//
void setup () {
  //size(600,400); //Remind you of Display Geometry
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song1 = minim.loadFile("../");//able to pass absolute path, file name and extension, and
  song1.play(); //Parameter is milli-seconds from the start of audio file to start playing
}
