module strut(lap_depth,leg_timber_width,strut_timber_width,strut_timber_depth,strut_length )
{
    difference()
    {
        cube([strut_length,strut_timber_depth,strut_timber_width],true);
       
        // Left cutout 
        translate([-strut_length/2+strut_timber_width/2,(strut_timber_depth)/2-(strut_timber_depth-lap_depth)/2,0])
        {
            cube([leg_timber_width,strut_timber_depth-lap_depth,strut_timber_width],true);
        }
        translate([-strut_length/2,-strut_timber_depth/2,-strut_timber_width/2])
        {
            rotate([0,0,45])
            {
                cube([sqrt(pow(strut_timber_depth, 2) + pow(strut_timber_depth, 2)), strut_timber_depth, strut_timber_width], false);
            }
        }
    
        // Right cutout    
        translate([strut_length/2-strut_timber_width/2,(strut_timber_depth)/2-(strut_timber_depth-lap_depth)/2,0])
        {
            cube([leg_timber_width,strut_timber_depth-lap_depth,strut_timber_width],true);
        }
        mirror([1,0,0]){
            translate([-strut_length/2,-strut_timber_depth/2,-strut_timber_width/2])
            {
                rotate([0,0,45])
                {
                    cube([sqrt(pow(strut_timber_depth, 2) + pow(strut_timber_depth, 2)), strut_timber_depth, strut_timber_width], false);
                }
            }
        }
    }
}

