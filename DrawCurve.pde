void drawCurve ()
{
  // drawing line between two points
  if (pointsArr.size() < 3  ) // this is the first time
  {
    previousLoc = new PVector (drawHeadX, drawHeadY);
    pointsArr.add (previousLoc);
  } else
  {
    // add the point to the array
    pointsArr.add (previousLoc);

    // draw the lines
    strokeWeight(lineWidth);
    stroke (linesColor);

    for (int i = 1; i < pointsArr.size(); i ++)
    {
      PVector curP = pointsArr.get(i);
      PVector preP = pointsArr.get(i-1);

      line(curP.x, curP.y, preP.x, preP.y);
    }
    previousLoc = new PVector (drawHeadX, drawHeadY);
  }
}
