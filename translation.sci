lines(0) // disables vertical paging 
a=get("current_axes")//get the handle of the newly created axes
a.axes_visible="on"; // makes the axes visible
a.font_size=3; //set the tics label font size
a.x_location="top"; //set the x axis position
a.data_bounds=[-100,-2,-1;100,2,1]; //set the boundary values for the x, y and z coordinates.
a.sub_tics=[5,0];
a.labels_font_color=5;
a.grid=[2,2];
a.box="off";
   
// Example with 3D axes
clf(); //clear the graphics window
x=0.1:0.1:2*%pi;plot2d(x-.3,sin(x)*7+.2);
a=gca(); // get the handle of the current axes
a.grid=[1 -1 -1]; //make x-grid
a.rotation_angles=[70 250]; //turn the axes with giving angles
a.grid=[1 6 -1]; //make y-grid
a.view="2d"; //return te the 2d view
a.box="back_half"; 
a.labels_font_color=5;
a.children.children.thickness=4;
a.children.children.polyline_style=3;
a.view="3d"; //return te the 3d view
a.children.children.thickness=1;
a.children.children.foreground=2;
a.grid=[1 6 3]; //make z-grid
a.parent.background=4;
a.background=7;
plot2d(cos(x)+1,3*sin(x)-3); 
plot2d(cos(x)+7,3*sin(x)+3);
a.children(2).children.polyline_style=2;
a.children(1).children.polyline_style=4;
a.children(1).children.foreground=5;
a.children(2).children.foreground=14;
a.parent.figure_size= [1200,800];pause;
a.box="on";
a.labels_font_size=4;
a.parent.background=8;
a.parent.figure_size= [400,200];
a.rotation_angles=[0 260];
delete(a.children(2)); 
delete(); // delete current object
   
a = gca();
a.labels_font_size=1;
a.auto_clear= "on";
x=0:0.1:2.5*%pi;plot2d(10*cos(x),sin(x));

a.data_bounds(:,1) = [1;15] ; // set positive bounds for X axe
a.log_flags = "lnn" ; // set X axes to logarithmic scale
a.log_flags = "nnn" ; // switch back to linear scale

a=gca(); 
a.rotation_angles=[45 45];
a.data_bounds=[-20,-3,-2;20 3 ,2];
xrect([-4 0.5 8 1]);
a.auto_clear = "off" ;
a.isoview="on"; // isoview mode
xrect([-2 0.25 4 0.5]);
a.children(1).fill_mode="on";
a.axes_visible="off";
a.children(1).data=[-2 0.25 -1 4 0.5];
a.children(2).data=[-4 0.5 1 8 1];
x=2*%pi*(0:7)/8;
xv=[.2*sin(x);.9*sin(x)];yv=[.2*cos(x);.9*cos(x)];
xsegs(10*xv,yv,1:8)
s=a.children(1);
s.arrow_size=1;
s.segs_color=5;
a.data_bounds //the boundary values for the x,y and z coordinates
a.view="2d";
a.data_bounds=[-10,-1; 10,1]; // set the boundary values for the two-dimensional views
   
// Example on axes model
da=gda() // get the handle on axes model to view and edit the fields
// title by default
da.title.text="My Default@Title"
da.title.foreground = 12;
da.title.font_size = 4;
// x labels default
da.x_label.text="x";
da.x_label.text="x"; // Latex or MathML can be used here also
da.x_label.font_style = 8;
da.x_label.font_size = 2;
da.x_label.foreground = 5;
da.x_location = "middle";
// y labels default
da.y_label.text="y";
da.y_label.font_style = 3;
da.y_label.font_size = 5;
da.y_label.foreground = 3;
da.y_location = "right";
da.thickness = 2;
da.foreground = 7;
// the plot
x=(0:0.1:2*%pi)';
plot2d(x,[sin(x),sin(2*x),sin(3*x)],style=[1,2,3],rect=[0,-2,2*%pi,2]);
sda() // back to default axes model

// Example with LaTeX / MathML ticks:
plot2d();
a=gca();

mathml="<mrow><mfrac><mrow><mi>d</mi>  <mi>y</mi></mrow><mrow>  <mi>d</mi>  <mi>x</mi></mrow></mfrac> <mo>=</mo>..
<mfrac><mn>1</mn><msup> <mi>y</mi>  <mn>2</mn></msup> </mfrac> </mrow>";
// Only LaTeX expression
a.x_ticks.labels=["0";"1";"$\sin(x)$";"3";"$\cos(a) - test$";"5";"6";"7"];

// Mixed expression: MathML and LaTex
a.y_ticks.labels=["0";"1";"2";"3";"$\cos(a)$";"5";"6";mathml;"8"];
