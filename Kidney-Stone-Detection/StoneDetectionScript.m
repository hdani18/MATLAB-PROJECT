% Prompt user to select a MATLAB code file
[filename, pathname] = uigetfile('*.*', 'Pick a MATLAB code file');
filename = strcat(pathname, filename);

% Read and display the input image
a = imread(filename);
imshow(a);
title('Original Image');

% Converted image to grayscale
b = rgb2gray(a);
figure;
imshow(b);
title('Grayscale Image');

% Thresholding to create binary image
c = b > 20;
figure;
imshow(c);
title('Binary Image');

% Filled holes in the binary image
d = imfill(c, 'holes');
figure;
imshow(d);
title('Filled Holes Image');

% Removed small objects from the binary image
e = bwareaopen(d, 1000);
figure;
imshow(e);
title('Removed Small Objects Image');

% Preprocessing the original image based on binary mask
PreprocessedImage = uint8(double(a) .* repmat(e, [1 1 3]));
PreprocessedImage = imadjust(PreprocessedImage, [0.3 0.7], []) + 50;

% Convert preprocessed image to grayscale
uo = rgb2gray(PreprocessedImage);
figure;
imshow(uo);
title('Preprocessed Grayscale Image');

% Apply median filtering to reduce noise
mo = medfilt2(uo, [5 5]);
figure;
imshow(mo);
title('Median Filtered Image');

% Thresholding to create binary image
po = mo > 250;
figure;
imshow(po);
title('Binary Image after Thresholding');

% Define region of interest (ROI) for further processing
[r, c, ~] = size(po);

x1 = r / 2; 
y1 = c / 3; 

% The ROI dimensions I chosen are to be a rectangle with a width of 200 pixels and a height of 40 pixels
row = [x1 x1+200 x1+200 x1]; 
col = [y1 y1 y1+40 y1+40];   
figure;
imshow(BW);
title('Region of Interest (ROI)');

% Apply ROI mask to binary image
k = po .* double(BW);
figure;
imshow(k);
title('Binary Image with ROI');

% Remove small objects from binary image
M = bwareaopen(k, 4);

% Label connected components in the binary image
[~, number] = bwlabel(M);

% Display detection result based on number of detected objects
if(number >= 1)
    disp('Stone is Detected');
else
    disp('No Stone is detected');
end