import java.util.LinkedList;

int N = 10000;
int NHit = 0;
int R;
float centerX;
float centerY;
color squareColor = color(100, 10, 10);
color circleColor = color(150, 10, 10);
color pointColor = color(10, 150, 10);
Square s;
Circle c;
LinkedList<Point> p;

void setup() {
    size(400, 400);
    frameRate(1);
    calcPI1();
    //calcPI2();
}

void draw() {
    background(128);
    s.run();
    c.run();
    for (int i = 0; i < p.size(); i++) p.get(i).run();
}

void calcPI1() {
    R = width / 2;
    centerX = width / 2;
    centerY = height / 2;
    s = new Square(centerX, centerY, R, squareColor);
    c = new Circle(centerX, centerY, R, circleColor);
    p = new LinkedList<Point>();
    
    int x;
    int y;
    for (int i = 0; i < N; i++) {
        x = (int)(Math.random() * R * 2);
        y = (int)(Math.random() * R * 2);
        p.add(new Point(centerX - R + x, centerY - R + y, pointColor));
        if (dist(centerX, centerY, centerX - R + x, centerY - R + y) <= R) NHit++;
    }
    println(4.0 * NHit / N);
}

void calcPI2() {
    R = width;
    centerX = 0;
    centerY = 0;
    s = new Square(centerX, centerY, R, squareColor);
    c = new Circle(centerX, centerY, R, circleColor);
    p = new LinkedList<Point>();
    
    int x;
    int y;
    for (int i = 0; i < N; i++) {
        x = (int)(Math.random() * R);
        y = (int)(Math.random() * R);
        p.add(new Point(x, y, pointColor));
        if (dist(centerX, centerY, x, y) <= R) NHit++;
    }
    println(4.0 * NHit / N);
}
