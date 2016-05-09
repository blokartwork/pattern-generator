Grid grid1;

void setup() {
	size(1920, 1080);

	grid1 = new Grid();
}

void draw() {

	grid1.createGrid();

}

class Grid {

	int gridSize = 20;

	void createGrid() {
		for (int i = 0; i < width; i += gridSize) {
			for (int j = 0; j < height; j += gridSize) {
				drawShape(i, j, gridSize, gridSize);
			}
		}
	}

	void drawShape(int posX, int posY, int shapeWidth, int shapeHeight) {
		rect(posX, posY, shapeWidth, shapeHeight);
	}
}