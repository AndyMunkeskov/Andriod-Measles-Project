void population() {
  //
  float centerX = appWidth * 1/2;
  float centerY = appHeight * 1/2;
  //
  int smallerDimension;
  smallerDimension = ( landscape==true ) ? appHeight : appWidth; //ternary operator
  //
  rectFaceX = centerX - smallerDimension*1/2;
  rectFaceY = appHeight * 0;
  rectFaceWidth = smallerDimension;
  rectFaceHeight = smallerDimension;
  faceX = centerX;
  faceY = centerY;
  faceDiameter = smallerDimension;
  //
  mouthX1 = (270, 220, 190, 190);
  mouthY1 = smallerDimension*3/4;
  mouthX2 = (630, 220, 190, 190);
  mouthY2 = mouthY1;
  mouthOpen = smallerDimension*1/4;
} //End population
//
//End Population Subprogram
