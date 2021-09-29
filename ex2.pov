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

sphere {
    <0, 0, 0>, 1 // <x, y, z>, radius
    
    texture {
        pigment { 
            Yellow
        }
    }
    finish {
        diffuse 0.7
        ambient 0.3
        specular 0.7
        roughness 0.003
        reflection 0.4
    }
}

