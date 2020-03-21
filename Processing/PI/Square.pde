public class Square {
    private float x;
    private float y;
    private float r;
    private color c;
    
    public Square(float _x, float _y, float _r, color _c) {
        x = _x;
        y = _y;
        r = _r;
        c = _c;
    }
    
    public void display() {
        fill(c);
        rectMode(RADIUS);
        rect(x, y, r, r);
    }
    
    public void run() {
        display();
    }
}