Grid grid1;

void setup() {
	size(1920, 1080);

	colorMode(HSB, 360, 100, 100);

	grid1 = new Grid();
}

void draw() {

}

void keyPressed() {
	grid1.createGrid();
}

class Grid {

	int gridSize = 20;
	int shapeSize = 10;

	void createGrid() {
		for (int i = 0; i < width; i += gridSize) {
			for (int j = 0; j < height; j += gridSize) {
				setShape();
				drawShape(i, j, shapeSize, shapeSize);
			}
		}
	}

	void drawShape(int posX, int posY, int shapeWidth, int shapeHeight) {
		rect(posX, posY, shapeWidth, shapeHeight);
	}

	void setShape() {
		fill(random(360), 100, 80);
		noStroke();
	}
}