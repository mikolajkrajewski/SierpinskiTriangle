public void setup()
{
	size(500,500);
}
public void draw()
{
	background(0);
	stroke(255);
	//fill((int)(Math.random())+256,(int)(Math.random())+256,(int)(Math.random())+256);
	sierpinski(50,450,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20)
	{
		triangle(x,y,x+len/2,y-len,x+len,y);
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}