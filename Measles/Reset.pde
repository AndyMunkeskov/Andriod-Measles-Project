void resetButtonDraw(){
  fill(red);
  rect( quitButtonX, quitButtonY*3, quitButtonWidth, quitButtonHeight );
  textSize(32);
  fill(purple);
  text("Reset", quitButtonX, 107);
}
