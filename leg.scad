module leg(leg_length,lap_depth,leg_timber_width,strut_timber_width,shelf_height )
{
    difference()
    {
        cube([leg_timber_width,leg_timber_width,leg_length],true);
        
        // Top tenons
        translate([0,0,(leg_length-strut_timber_width)/2])
        {
            translate([0,-((leg_timber_width-lap_depth)/2),0]){
                cube([leg_timber_width,lap_depth,strut_timber_width],true);
            }
            translate([-((leg_timber_width-lap_depth)/2),0,0]){
                cube([lap_depth,leg_timber_width,strut_timber_width],true);
            }
        }
        
        // Shelf tenons
        translate([0,0,shelf_height-leg_length/2+strut_timber_width/2]){
            translate([0,-((leg_timber_width-lap_depth)/2),0]){
                cube([leg_timber_width,lap_depth,strut_timber_width],true);
            }
            translate([-((leg_timber_width-lap_depth)/2),0,0]){
                cube([lap_depth,leg_timber_width,strut_timber_width],true);
            }
        }
    }
}

