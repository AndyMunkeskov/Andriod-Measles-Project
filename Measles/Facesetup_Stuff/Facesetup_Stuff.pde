float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
//
void facesetup() {
  //Face: inscribing a circle in a square (i.e logical rectangle)
  //start from center of display
  rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight); //logical rectangle
  ellipse (faceX, faceY, faceDiameter, faceDiameter);
} //End facesetup
