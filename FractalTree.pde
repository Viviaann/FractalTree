private double fractionLength = .4; 
private int smallestBranch = 5; 
private double branchAngle = .5;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(141,232,247);   
	stroke(0,((int)Math.random()*200),(int)Math.random()*200);   
	fill(117,54,33);
	rect(290,400,50,80);  
	drawBranches(320,50,35,HALF_PI);  
	drawBranches(320,20,30,HALF_PI); 
	drawBranches(320,100,40,HALF_PI); 
	//drawBranches(250,300,30,HALF_PI); 
	//drawBranches(450,300,30,HALF_PI); 
	//drawBranches(180,300,30,HALF_PI); //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{  double angle1= angle+branchAngle;
	double angle2= angle-branchAngle;
	branchLength= branchLength+fractionLength;
	int endx1= (int)(branchLength*Math.cos(angle1)+x);
	int endy1= (int)(branchLength*Math.sin(angle1)+y);
	int endx2= (int)(branchLength*Math.cos(angle2)+x);
	int endy2= (int)(branchLength*Math.sin(angle2)+y);
	if(branchLength<=20)
	{
	}
	else {
	stroke(40,69,(int)Math.random()*20);
line(x,y,endx1,endy1);
drawBranches(endx1,endy1,branchLength-2,angle);
line(x,y,endx2,endy2);	
drawBranches(endx2,endy2,branchLength-2,angle);
	}
} 
