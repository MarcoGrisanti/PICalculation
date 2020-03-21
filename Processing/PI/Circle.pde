public class Circle {
    private float x;
    private float y;
    private float r;
    private color c;
  
    public Circle(float _x, float _y, float _r, color _c) {
        x = _x;
        y = _y;
        r = _r;
        c = _c;
    }
    
    public void display() {
        fill(c);
        ellipseMode(RADIUS);
        ellipse(x, y, r, r);
    }
    
    public void run() {
        display();
    }
}