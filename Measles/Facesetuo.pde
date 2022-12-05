float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
//
void faceSetup() {
  //Face: inscribing a cirlcle in a square (i.e. logical rectangle)
  //Start from center of display
  fill( 252, 210, 125);
  rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
} //End faceSetup
//
//End Face Subprogram
