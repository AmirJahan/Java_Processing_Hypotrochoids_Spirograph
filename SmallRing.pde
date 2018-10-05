// this is the little ring that sweeps around the inside of the larger ring
void smallRing ()
{
  noFill();
  stroke(255, 255, 255, 255);
  strokeWeight (1.0);


  drawHeadRingCenterX = mainXCen + sin (radians(currentRotation)) * rotationRadius * genMult;
  drawHeadRingCenterY = mainYCen + cos (radians(currentRotation)) * rotationRadius * genMult;


  circle (drawHeadRingCenterX, 
    drawHeadRingCenterY, 
    drawRingRadius * genMult);
}
