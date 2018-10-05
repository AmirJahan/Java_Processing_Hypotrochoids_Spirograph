void circle (float xCen, float yCen, float rad)
{
  ellipseMode(CENTER);  // Set ellipseMode to CENTER

  ellipse(xCen, 
    yCen, 
    rad * 2 , 
    rad * 2 );  // Draw gray ellipse using CENTER mode
}
