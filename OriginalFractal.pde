private double fractionLength = 0.7; 
private int smallestBranch = 2; 
private double branchAngle = 0.4;  

public void setup() 
{   
  size(650,600);    
  noLoop(); 
} 
public void draw() 
{   
  background(0, 0, 100); 
  strokeWeight(2);
  stroke(255, 140, 0); 
  line(320,480,320,380);   
  drawBranches(320,380,150,3*Math.PI/2);  
} 
 
public void drawBranches(int x,int y, double branchLength, double angle) 
{    
  double angle1 = angle + branchAngle * 3;
  double angle2 = angle - branchAngle * 1.5;
  branchLength = branchLength * fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x); 
  int endY1 = (int)(branchLength * Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
   if(branchLength >= smallestBranch){
         drawBranches(endX2, endY2, branchLength, angle2);
          drawBranches(endX1, endY1, branchLength, angle1);
   
       }
  }
