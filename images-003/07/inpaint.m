% inpaint

% create image
nrow = 10;
ncol = 10;
r = 4;
[f, fan] = createinputimage(nrow, ncol, r);
f = f + 0.001;
% display
%image(f);colormap([0 0 0; 1 1 1]);
%title('Binary image of a circle');

% pde iteration
theta = 90;
R = [cosd(theta) -sind(theta); sind(theta) cosd(theta)];

figure;
imagesc(f,[0 1]);colormap(gray)
hold on;

dt = 0.3;
for it=1:200
    % I(t+1) = I + dt*(gradient(laplacian(I)) inner product (rotation 90 gradient(I)))

    % gradient
    [fx, fy] = gradient(f);
    
    % rotate gradient 90 degrees
    gg = [fx(:) fy(:)];
    gg = gg*R;
    
    %gg2 = reshape(gg,[nrow,ncol,2]);

    % laplacian
    L = del2(f);
    % gradient of laplacian
    [lx, ly] = gradient(L);
    hh = [lx(:) ly(:)];

    % inner product
    pp = gg.*hh;
    pp = sum(pp,2);
    pp = reshape(pp,[nrow,ncol]);

    % I(t+1) = I + dt*g
    pp = pp*dt;
    pp = pp.*fan;
    f = f + pp;
    
    if mod(it,1)==0
        it
        pause(0.1);
        imagesc(f,[0 1]);colormap(gray)
    end
end
