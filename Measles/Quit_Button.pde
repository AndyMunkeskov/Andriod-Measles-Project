void quitButtonDraw() {
  fill(purple);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
//
quitButtonHoverOver(); {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    quitButtonColour = purple; 
  } else {
    quitButtonColour = purple;}
  }}
