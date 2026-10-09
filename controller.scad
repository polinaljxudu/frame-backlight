
w_back = 70;
h_back = 45;
w_controller = 20;
thickness_bottom = 2;

h_wall = 4;
thickness_walls = 2;

kit_controller();

module kit_controller(){
    controller();
    translate([0, 0, h_wall/2])
    walls();
}
module walls(){
difference() {
    cube([w_controller + 2 * thickness_walls, h_back+2*thickness_walls, thickness_bottom+h_wall], center=true);
    color("red")
    cube([w_controller, h_back, thickness_bottom+h_wall+1], center=true);
    }
}
module controller() {
    cube([w_controller, h_back, thickness_bottom], center=true);
}