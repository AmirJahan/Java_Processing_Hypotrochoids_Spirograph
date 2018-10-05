void showText (float inpTime)
{
  
  
  
  String timeStr = String.format("%.1f", 1.0 / inpTime);
  String displayString = "Cool Clock\nTime to a Full Turn: " + timeStr + "\"";
  textSize(16); 
  fill(0);
  textAlign(CENTER);
  text(displayString, width / 2, 50);
}
