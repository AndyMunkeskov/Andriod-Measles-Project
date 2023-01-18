PFont Harrington;
//
void textSetup() {
  //Asignment 2: Minimum Expectation = one font
  //
  //Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  Harrington = createFont("Harrington", 55); //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
}//End Void Text Setup
//
void quitButtonText () {
  //rect( startX, startY, startWidth, startHeight );
  color ink = (nightMode==true) ? #467D00 : purple ;
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 34; //Change the number until it fits
  textFont(Harrington, size); 
  String quitButton = "Quit";
  text( quitButton, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  noFill(); //Reset
};
//
//End Text Subprogram
