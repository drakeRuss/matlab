
function [xx2, yy2, radius, center, xy2] = MohrsCircle2d(A, theta)
    %sigma x'x'
    xx = A(1,1);
    yy = A(2,2);
    xy = A(1,2);
    % sigma x'x' correct
    xx2 = (xx+yy)/2 + ((xx-yy)/2)*cosd(2*theta) + xy*sind(2*theta);
    % tau x'y' correct
    xy2 = xy*cosd(2*theta) - ((xx-yy)/2)*sind(2*theta);
    % sigma y'y' correct at last
    yy2 = (xx+yy)/2 - ((xx-yy)/2)*cosd(2*theta) - xy*sind(2*theta);

    % unsure about center and radius at the moment
    center = (xx+yy)/2;
    radius = sqrt(((xx-yy)^2)/4 + xy^2);

end