float measleX, measleY, measleDiameter;
color measlesColour;
//
void measlesDynamic() {
  //
  //Population Code, must stay here
  measleDiameter = random(faceDiameter*1/60, faceY*1/20);
  float measleRadius = measleDiameter * 1/3;
  measleX = random(faceDiameter*0+faceY+faceX-measleRadius ); //use smallerDimension
  measleY = random(faceDiameter*0+faceY+faceX-measleRadius);
  //Night Mode
  measlesColour = ( nightMode==true ) ? color( 156, random( 0 ), 170) : color( 255, random(35), random(0) ) ;
  //
  noStroke();
  fill(measlesColour);
  ellipse( measleX, measleY, measleDiameter, measleDiameter );
  fill(resetWhite);
  stroke(reset);
} //End measlesDynamic
//
//Emd Draw Measles Subprogram
