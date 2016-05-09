import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class build extends PApplet {

Grid grid1;

public void setup() {
	

	colorMode(HSB, 360, 100, 100);

	grid1 = new Grid();

	grid1.createGrid();
}

public void draw() {

}

class Grid {

	int gridSize = 20;
	int shapeSize = 10;

	public void createGrid() {
		for (int i = 0; i < width; i += gridSize) {
			for (int j = 0; j < height; j += gridSize) {
				setShape();
				drawShape(i, j, shapeSize, shapeSize);
			}
		}
	}

	// That defines what kind of shape you want to draw

	public void drawShape(int posX, int posY, int shapeWidth, int shapeHeight) {
		rect(posX, posY, shapeWidth, shapeHeight);
	}

	// That takes all information about the shape

	public void setShape() {
		fill(random(360), 100, 80);
		noStroke();
	}
}
  public void settings() { 	size(1920, 1080); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "build" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
