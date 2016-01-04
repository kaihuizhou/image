function [f, region] = createinputimage(nrow, ncol, r)
%   createinputimage create the input image
%   input: 
%   output: 
%       f: a 2D logical image

% background
ic = nrow/2;
jc = ncol/2;
bg = zeros(nrow, ncol);

% circle
circle1 = circle(nrow, ncol, ic, jc, r);

% draw circle on background
circle1 = logical(circle1);
bg(circle1) = 1;

% display
%bg = logical(bg);
%image(bg);colormap([0 0 0; 1 1 1]);

% fan
fan1 = fan(nrow, ncol, ic, jc, r, 0, 30/180*pi);
fan1 = logical(fan1);
bg(fan1) = 0;


%
f = logical(bg);
region = fan1;
