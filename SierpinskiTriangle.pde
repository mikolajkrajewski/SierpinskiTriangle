int r = 0;
int g = 0;
int b = 0;
double someLength = 20;
float rot = 0.1;
public void setup()
{
	size(700,700);
}
public void draw()
{
	background(0);
	stroke(255);
	//fill((int)(Math.random())+256,(int)(Math.random())+256,(int)(Math.random())+256);
	sierpinski(50,650,600);
	if(someLength > 640)
	{
		fill(0);
		rect(0,0,700,700);
		textAlign(CENTER);
		textSize(21);
		fill(255);
		text("Big Limit has been reached",350,350);
	}
	if(someLength < 1.25)
	{
		fill(0);
		rect(0,0,700,700);
		textAlign(CENTER);
		textSize(21);
		fill(255);
		text("Small Limit has been reached",350,350);
	}
	if(keyPressed == true && key == ' ')
	{
		rot = rot + 0.1;
	}
	/*if(keyPressed == true && key == ' ')
	{
		fill((int)(Math.random())+256,(int)(Math.random())+256,(int)(Math.random())+256);

	}*/
}
public void mouseMoved()//optional
{
  r=(int)mouseX;
  g=(int)mouseY;
  b=(int)(mouseX/2-mouseY/2);
}
public void mouseClicked()
{
	if(mouseButton == RIGHT)
	{
		someLength *= 2;
	}
	else if(mouseButton == LEFT)
	{
		someLength *= .5;
		/*if()
		*/
	}
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= someLength)
	{
		fill(r,g,b);
		translate(x+len/2,y-len/2);
		rotate(rot);
		triangle(0-len/2,0+len/2,0+len/2,0+len/2,0,0-len/2);
		//triangle(x,y,x+len/2,y-len,x+len,y);
		rotate(-rot);
		translate(-(x+len/2),-(y-len/2));
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}