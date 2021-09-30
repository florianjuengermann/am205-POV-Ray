#include "colors.inc"
#include "stones.inc"
#include "woods.inc"

global_settings{
    assumed_gamma 1.0
}

camera{
    location <-2,10,-50>
    up 0.22*y
    right 0.22*x*image_width/image_height
    look_at <0,-5.5,9>
}

light_source {
    <-10, 10, -15> 
    color rgb <1.0, 1.0,  1.0>
}

light_source {
    <14, 4, 8> 
    color rgb <0.4, 0.4,  0.37>
}

#declare f1=finish {
    diffuse 1
    ambient 0.2
    // specular 0.7
    phong 0.75
    phong_size 60
    roughness 0.3
}
background{
    rgb <0,0,0>
}

plane{
    z, 6
    texture {
        pigment { 
            White
        }

        finish {
            
          reflection{
              0.0 metallic 0.0
          }
        }
    }

}

union {
    #include "shapes.pov"
}
