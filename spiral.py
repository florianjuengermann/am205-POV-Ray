from math import cos, sin, pi
def spiral(N):

    t = 0
    points_1 = []
    points_2 = []
    while t < N:
        x_axis = cos(pi*t/100)
        z_axis = sin(pi*t/100)
        x_axis_2 = cos(pi*t/100+pi)
        z_axis_2 = sin(pi*t/100+pi)
        y_axis = t/40-10
        points_1.append((x_axis, y_axis, z_axis))
        points_2.append((x_axis_2, y_axis, z_axis_2))
        t+=1

    return points_1, points_2

starting_points_1, starting_points_2 = spiral(1000)
ending_points_1 = starting_points_1[1:]
starting_points_1 = starting_points_1[:-1]

ending_points_2 = starting_points_2[1:]
starting_points_2 = starting_points_2[:-1]

#print(list(zip(starting_points, ending_points)))

f = open("shapes.pov", "w")
step = 0
for start_1, end_1, start_2, end_2 in zip(starting_points_1, ending_points_1, starting_points_2, ending_points_2):
    
    start_center ="<{}, {}, {}>".format(start_1[0], start_1[1], start_1[2])
    end_center = "<{}, {}, {}>".format(end_1[0], end_1[1], end_1[2])
    radius = 0.1
    cylinder = "cylinder { "+start_center+","+end_center+", "+str(radius)+" pigment { Blue filter 0.2} finish{f1}}\n"
    sphere = "sphere { "+end_center+", "+str(radius)+" pigment { Blue filter 0.2 } finish{f1} }\n"
    f.write(cylinder)
    f.write(sphere)

    start_center_2 ="<{}, {}, {}>".format(start_2[0], start_2[1], start_2[2])
    end_center_2 = "<{}, {}, {}>".format(end_2[0], end_2[1], end_2[2])
    radius = 0.1
    cylinder = "cylinder { "+start_center_2+","+end_center_2+", "+str(radius)+" pigment { Red filter 0.2} finish{f1}}\n"
    sphere = "sphere { "+end_center_2+", "+str(radius)+" pigment { Red filter 0.2 }  finish{f1}}\n"
    f.write(cylinder)
    f.write(sphere)

    if step % 10 == 0:
        cylinder = "cylinder { "+start_center_2+","+start_center+", "+str(0.04)+" pigment { Gray filter 0.2} finish{f1}}\n"
        f.write(cylinder)

    step+=1

