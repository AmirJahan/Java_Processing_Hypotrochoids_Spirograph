void drawHead ()
{
  if ( !pauseWhileControl )
    headCurDegree = currentRotation * outerInnerRatio * timeMult;
    else
        headCurDegree = 1;

    
    
  drawHeadX = drawHeadRingCenterX + sin (radians(headCurDegree)) * drawHeadDistToCen;
  drawHeadY = drawHeadRingCenterY + cos (radians(headCurDegree)) * drawHeadDistToCen;



  // tip with ellipse
  stroke (255, 0, 0);
  strokeWeight(2);
  noFill();
  circle (drawHeadX, drawHeadY, 2);

  strokeWeight(1);
  noFill();
  stroke (0, 255, 255);

  line(drawHeadRingCenterX, drawHeadRingCenterY, drawHeadX, drawHeadY);

  // center / YELLOW Dot
  strokeWeight(3);

  stroke(255, 255, 0); 
  circle (drawHeadRingCenterX, drawHeadRingCenterY, 3);
}
