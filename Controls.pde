
void keyPressed() 
{
  if (key == CODED) 
  {
    if (keyCode == UP) 
    {
      if ( speed < 1.0)
      {
        speed += .05;

        if ( drawRingRadius < outerRadius)
          drawRingRadius += 1;
        if ( drawHeadDistToCen > 12)
          drawHeadDistToCen -= 1;
      }
    } else if (keyCode == DOWN) 
    {
      if ( speed > .1)
      {
        speed -= .05;

        if ( drawRingRadius > 0)
          drawRingRadius -= 1;
        if ( drawHeadDistToCen < drawRingRadius * .8)
          drawHeadDistToCen += 1;
      }
    }
  } else
  {
    if (key == '=') 
      genMult += .01;
    else if (key == '-') 
      genMult -= .01;
  }



  pauseWhileControl = true;
  pointsArr.clear();
}

void keyReleased() 
{
  pauseWhileControl = false;
}



void mouseReleased() 
{
  float r = 175 + random (180);
  float g = 175 + random (180);
  float b = 175 + random (180);

  linesColor = color (r, g, b);
  println (linesColor);
  speed = .3 + random (0.7);
  drawRingRadius = 30 + random (outerRadius - 40);
  drawHeadDistToCen = 18 + random (drawRingRadius - 18); 
    pointsArr.clear();
    
    lineWidth = random (2.0);

}
