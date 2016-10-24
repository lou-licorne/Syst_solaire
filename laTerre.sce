realtimeinit(0.1);//sets time unit to half a second
realtime(0);//sets current date to 0

//  Original
x= [0 0 1 1];
y = [0 1 1 0];
x= [1 0 0 1];

curAxes = gca();
//curAxes.data_bounds=[-1,-1;2,2]; //fix the bounds
square(-1,-1,2,2);
curAxes.grid=[1 1]; //create the 2D grid
xset("color",2)
xfpoly(x,y);
drawlater();
xy = [x;y];
t = 0:2*%pi/100:2*%pi;
//rotation
for  i=1:length(t),
    drawlater();
    xy1=rotate(xy,t(i),[0.5;0.5]);
    curAxes.children(1).data = xy1';
    realtime(i); //every wait time
    drawnow();
end
drawlater();
