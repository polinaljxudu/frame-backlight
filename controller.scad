w_back = 70;
h_back = 45;
w_controller = 20;
thickness_bottom = 2;
width_frame_window = 3;
thickness_top = 2;

h_wall = 4;
thickness_walls = 2;
gap_backlight = 1.5;



kit_controller();
//walls();
//debug_controller();



module frame_controller(){
    difference(){
        cube([w_controller,h_back,thickness_top],center=true);
        color("red")
        cube([w_controller-2*width_frame_window, h_back-2*width_frame_window,thickness_top+1],center=true);
    }
}
module debug_controller(){
    difference(){
        kit_controller();
        translate([-w_controller/2, 0, h_wall/2])
        cube([w_controller, h_back+2*thickness_walls+1+gap_backlight, 2*h_wall], center = true);
    }
}

module kit_controller(){
    controller();
    translate([0, 0, h_wall/2])
    walls();
    color("green")
    translate([0, 0, thickness_bottom+0.1])
    frame_controller();
}

module walls() {
difference() {
    cube([w_controller + 2*thickness_walls+gap_backlight, h_back + 2*thickness_walls+gap_backlight, thickness_bottom + h_wall], center=true);
    color("red")
    cube([w_controller+gap_backlight, h_back+gap_backlight, thickness_bottom + h_wall + 1], center=true);
    translate([-w_controller-thickness_walls+gap_backlight/2-0.24, 0, 0])
    cube([w_controller+gap_backlight, h_back+gap_backlight+2*thickness_walls+1, thickness_bottom+h_wall+1], center=true);
 }
}

module controller() {
    cube([w_controller+gap_backlight, h_back+gap_backlight, thickness_bottom], center=true);
}
