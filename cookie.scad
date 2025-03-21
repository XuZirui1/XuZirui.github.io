module cookie() {
    base_radius = 100;  
    height = 50;       
    smoothness = 100;   
    color([0.8,0.6,0])
    difference() {
        scale([1, 1, height / (2 * base_radius)])  // 
        sphere(r = base_radius, $fn = smoothness);
        
     translate([0, 0, height * 0.6])
     scale([1, 1, 0.3])
        sphere(r = base_radius * 0.5, $fn = smoothness);

    }
}
module cream() {
    base_radius = 60;  
    height = 49;       
    smoothness = 100;   
    color([0.8, 0.1, 0.1, 0.85])
    difference() {
        scale([1, 1, height / (2 * base_radius)])  // 
        sphere(r = base_radius, $fn = smoothness);
  
    }
}




module adjustable_ball1(size, position) {
    translate(position) 
    scale([1, 1, 0.3])
        sphere(r = size, $fn = 80); 
}
module adjustable_ball2(size, position) {
    translate(position) 
    scale([1, 1, 0.3])
        sphere(r = size, $fn = 80); 
}
module adjustable_ball3(size, position) {
    translate(position) 
    scale([1, 1, 0.6])
        sphere(r = size, $fn = 80); 
}


module almond(){
    color([0.8, 0.6, 0.4])
    difference(){
        hull(){
        adjustable_ball1(15, [0, 0, 20]);
        adjustable_ball2(9, [10, 10, 30]);
        adjustable_ball3(3, [20, 20, 40]);
        }

    } 
}


module taosu() {
    cookie();
    translate([0, 0, 0])
        almond();
    translate([0, 0, 0])
        cream();

}


taosu();