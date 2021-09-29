#version 3.7;
#include "colors.inc"
#include "stones.inc"
#include "woods.inc"
global_settings{
    assumed_gamma 1.0
}

camera{
    location <-2,10,-30>
    up 0.22*y
    right 0.22*x*image_width/image_height
    look_at <0,-0.5,0>
}

light_source {
    <-10, 10, -15> 
    color rgb <1.0, 1.0,  1.0>
}

light_source {
    <14, 4, 8> 
    color rgb <0.4, 0.4,  0.37>
}

background{
    rgb <1,1,1>
}
#declare f1=finish {
    diffuse 1
    ambient 0.2
    // specular 0.7
    phong 0.75
    phong_size 60
    roughness 0.3
}

plane {
    y, -1
    texture{
        pigment { 
            checker
            White, // checker color 1
            Tan, // checker color 2
            
        }
    }
}



intersection{
    cylinder {
        <0, 0, -1>, <0, 0, 1>, 1 // center of one end, center of other end, radius
        pigment { 
            Blue
            filter 0.4
        }
        finish{f1}
    }
    cylinder {
    <0, -1, 0>, <0, 1, 0>, 1 // center of one end, center of other end, radius
        pigment { 
            Green
            filter 0.4
        }
        finish{f1}
    }
    
    cylinder {
    <-1, 0, 0>, <1, 0, 0>, 1 // center of one end, center of other end, radius
        pigment{
            Red
            filter 0.4
        }
        finish{f1}
    }
}