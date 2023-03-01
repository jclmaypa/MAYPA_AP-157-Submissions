Igray = rgb2gray(imread("dark_picture.png"));
imshow(Igray);

%% 

PDF = hist(Igray(:), [0:255])/numel(Igray);
CDF = cumsum(PDF);
figure; plot([0:255], CDF);

%%
x = [0:255];
desiredCDF = (1/255) * x;
newGS = interp1(desiredCDF, x, CDF(Igray(:)+1));
Igraynew = reshape(newGS, size(Igray));
figure; imshow(uint8(Igraynew));

%%

disp(CDF(Igray(:)+1));
