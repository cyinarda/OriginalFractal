public void setup()
{

	size(700, 700);
}

public void draw()
{
	background(0);
	newFractal(350, 350, 650, 650);

}

public void newFractal(int x, int y, int wid, int hei)
{
	ellipse(x, y, wid, hei);
	if(wid > 5 && hei > 5)
	{
		newFractal(x, y + hei/4, wid, hei/4);
		newFractal(x, y - hei/4, wid, hei/4);
		newFractal(x + wid/4, y, wid/4, hei);
		newFractal(x - wid/4, y, wid/4, hei);
	}
}