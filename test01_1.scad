echo("Работа Полины Максимовой!");
w_frame = 65;
d_frame = 5;
h_frame = 40;
thickness_frame = 4;
difference(){
    cube([w_frame,d_frame,h_frame],center=true);
    color("green")
    cube([w_frame-2*thickness_frame, d_frame+1, h_frame-2*thickness_frame],center = true);
}