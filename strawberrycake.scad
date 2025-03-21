$fn = 100;


module cake_base() {
    color("saddlebrown") 
    cylinder(h=8, r=20);
}


module cream_layer() {
    translate([0, 0, 8]) 
    color("white") 
    cylinder(h=2, r=20);
}


module strawberry() {
    color("red")
    scale([1, 1, 1.5]) 
    sphere(3.5);

    for (i = [0:60:360]) {
        rotate([0, 0, i])
        translate([0, 0, 5])
        rotate([0, 30, 0])
        color("green")
        cylinder(h=1.2, r1=0, r2=2.5);
    }
}

module strawberries_go() {
    for (i = [0:60:360]) {
        rotate([0, 0, i])
        translate([14, 0, 10])
        rotate([0, 90, 0]) 
        strawberry();
    }
}


module chocolate() {
    translate([0, 0, 10])
    color("pink")
    cylinder(h=4, r1=3, r2=0); 
}


module cake() {
    cake_base();
    cream_layer();
    strawberries_go();
    chocolate();
}

cake();
