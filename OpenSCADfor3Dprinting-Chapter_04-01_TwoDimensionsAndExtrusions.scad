//linear_extrude(height=20) square([12,5]);
linear_extrude(height=20)
difference() {
    square([12,5],center=true);
    circle(2);
}
