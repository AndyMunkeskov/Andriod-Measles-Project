void quitButtonDraw() {
  fill(red);
  size(400, 400);
  textSize(128);
  text(" Quit ", 100,100);
  fill(purple);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  //
quitButtonHoverOver(); {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    quitButtonColour = purple; 
  } else {
    quitButtonColour = purple;}
  }}
