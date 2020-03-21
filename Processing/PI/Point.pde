public class Point {
    private float x;
    private float y;
    private color c;
  
    public Point(float _x, float _y, color _c) {
        x = _x;
        y = _y;
        c = _c;
    }
    
    public void display() {
        fill(c);
        rectMode(RADIUS);
        rect(x, y, 1, 1);
    }
    
    public void run() {
        display();
    }
}