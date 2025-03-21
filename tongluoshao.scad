
module plate() {
    color("wheat") 
    difference() {
        union() {
            cylinder(h=3, d=60); 
            hull() { 
                translate([0, 0, 3]) cylinder(h=2, d=65); 
                translate([0, 0, 3]) cylinder(h=1, d=55); 
            }
        }
        translate([0, 0, 3])
            cylinder(h=2, d=53); 
    }
}


module dorayaki_top() {
    color("sandybrown") 
    scale([1,1,0.4]) sphere(20); 
}


module dorayaki_bottom() {
    color("sandybrown") 
    translate([0,0,-5]) 
    scale([1,1,0.4]) sphere(20);
}


module dorayaki_filling() {
    color("brown") // 
    translate([0, 0, -2])
    cylinder(h=4, d=32); 
}


module dorayaki() {
    dorayaki_bottom();
    dorayaki_filling();
    dorayaki_top();
}


plate();
translate([0, 0, 16]) dorayaki();

