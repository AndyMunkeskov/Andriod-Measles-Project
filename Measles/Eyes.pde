float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter, eyediameter1;
//
void eyes() {
  leftEye();
  rightEye();
} //End eyes
//
void leftEye() {
  loadImage("Images/Eye.png");
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  fill(black);
  ellipse(leftEyeX, leftEyeY, eyediameter1, eyediameter1);
  fill(white);
} //End leftEye
//
void rightEye() {
  //rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  loadImage("Images/Eye.png");
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  fill(black);
  ellipse(rightEyeX, rightEyeY, eyediameter1, eyediameter1);
  
  } //End rightEye
//End Eyes Subprogram
