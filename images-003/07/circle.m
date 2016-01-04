function f = circle(nrow,ncol, ic,jc,r)
%   circle(nrow,ncol, ic,jc,r) computes a logical circle
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
[X Y] = meshgrid(1:ncol, 1:nrow);

% Next create the circle in the image.
f = (Y - ic).^2 + (X - jc).^2 <= r.^2;
