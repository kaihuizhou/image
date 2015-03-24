function f = fan(nrow,ncol, ic,jc,r,theta1,theta2)
%   fan(nrow,ncol, ic,jc,r) computes a logical fan
%   input: 
%       nrow: number of rows
%       ncol: number of columns
%       (ic,jc): center of the circle
%       ic: row index
%       jc: column index
%       r: radius of the circle
%   output: 
%       f: a 2D "logical" array


% Create a logical image of a circle with specified
% diameter, center, and image size.
% First create the image.
[X, Y] = meshgrid(1:ncol, 1:nrow);

% Next create the circle in the image.
c1 = (Y - ic).^2 + (X - jc).^2 <= r.^2;
c2 = atan(double((ic-Y+0.001))./(X-jc+0.001)) < theta2;
c3 = atan((ic-Y+0.001)./(X-jc+0.001)) > theta1;
c1 = logical(c1);
c2 = logical(c2);
c3 = logical(c3);
c4 = X >= jc;
f = c1 & c2 & c3 & c4;
