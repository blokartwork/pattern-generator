import processing.pdf.*;

Grid grid1;

void setup() {
	size(1920, 1080);
	
	beginRecord(PDF, "../output/pattern.pdf"); 
	
	colorMode(HSB, 360, 100, 100);

	grid1 = new Grid();
}

void draw() {

}

void keyPressed() {

	if (key == 'c') {
		grid1.createGrid();
	}

	if (key == 'r') {
		grid1.resetGrid();
	}

	if (key == 's') {
		endRecord();
	}

}

class Grid {

	int gridSize = 20;
	int shapeSize = 10;

	void createGrid() {
		for (int i = 0; i < width; i += gridSize) {
			for (int j = 0; j < height; j += gridSize) {
				drawShape(i, j, shapeSize, shapeSize, "random");
			}
		}
	}

	void resetGrid() {
		background(100, 0, 80);
	}

	void drawShape(int posX, int posY, int shapeWidth, int shapeHeight, String rotation) {
		pushMatrix();
		translate(posX, posY);
		rotateShape(rotation);
		setShape();
		createShape(0, 0, shapeWidth, shapeHeight);
		popMatrix();

	}

	void createShape(int posX, int posY, int shapeWidth, int shapeHeight) {
		rectMode(CENTER);
		rect(posX, posY, shapeWidth, shapeHeight);
	}

	void rotateShape(String rotation) {
		if (rotation == "regular") {
			rotate(radians(90));
		}

		if (rotation == "random") {
			rotate(radians(random(360)));
		}
	}

	void setShape() {
		fill(random(360), 100, 80);
		noStroke();
	}
}