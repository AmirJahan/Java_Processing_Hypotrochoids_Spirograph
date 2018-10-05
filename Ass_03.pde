void setup() 
{
  size(320, 568);



  smooth (4);
  frameRate (myFrameRate);
  mainXCen = width / 2;
  mainYCen = (height - 100) / 2 + 100;

  background(100);
  showText (speed);

  ringDraw(outerRadius, color(0)); // outer ring


  rotationRadius = outerRadius - drawRingRadius; // rotation ring radius calculated
  ringDraw(rotationRadius, color(200, 200, 200, 200));  // rotation ring

}

void draw() 
{
  background(100);
  showText (speed);
  ringDraw(outerRadius, color(0)); // outer ring
  rotationRadius = outerRadius - drawRingRadius; // rotation ring radius calculated

  ringDraw(rotationRadius, color(200, 200, 200, 200));  // rotation ring

  outerInnerRatio = outerRadius / ( drawRingRadius - drawHeadDistToCen); 

  // inner little rotating around


  
    smallRing();
    drawHead();
    if  (!pauseWhileControl)
  {
    currentRotation += ( speed * 3); // 3 is default in 120 fps
    drawCurve ();
  }
}
