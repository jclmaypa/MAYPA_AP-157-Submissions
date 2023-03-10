N = 400;                    % number of data points
x = linspace(-2,2,N);       % range of x values
y = linspace(-2,2,N);       % range of y values
[X,Y] = meshgrid(x,y);      % making a mesh from the x and y values

f = 2*pi*4;                   % cycles per cm
half_amp = 255/2;              
R = half_amp*sin(f*X) + half_amp;
A = zeros(size(R));
A(find(R>half_amp)) = 1;
figure (1);
imshow(A);
figure (2) ;
mesh(x,y,R);