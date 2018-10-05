// This is the generic Ring Drawer, used for the outer ring and 
// the rotation ring

void ringDraw (float inpRadius, color inpColor)
{
  noFill();
  stroke(inpColor);
  strokeWeight (1.0);
  circle (mainXCen, mainYCen, inpRadius * genMult);
}
