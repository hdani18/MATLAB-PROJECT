### MATLAB Cheatsheets for Image Processing

- Read Image File

```matlab
  
  %%
  % replace `PATH_TO_IMAGE` with actual image file path
  %
  impath = 'PATH_TO_IMAGE';

  %%
  % read image
  %
  img = imread(impath);
  
```
------
- Write Image

```matlab

  %%
  % write image
  %
  imwrite(img,'new_image_filename.jpg');

```
------
- Show Image

```matlab

  %%
  % show image
  %
  imshow(img);
  
  %%
  % display multiple image in same window
  %
  subplot(1,2,1),imshow(img1);
  title('First Image');
  subplot(1,2,2),imshow(img2);
  title('Second Image');
  
  %%
  % using figure
  %
  figure;
  imshow(img);
  
```
------
- Dimensions of Image

```matlab

  %%
  % get the dimensions of image
  % if img is colour image then dimension is vector with 3 elements
  % if img is grayscale image then dimension is vector wit 2 dimensions
  %
  dimensions = size(img);

  % number of rows
  nr = dimensions(1);

  % number of columns
  nc = dimensions(2);

```
------
- Image Type Conversion (Color Scale Conversion)

 ```matlab
 
  %%
  % Convert RGB image to colormap to gray scale image
  %
  imgray = rgb2gray(imrgb);
  
  %%
  % Convert grayscale or binary image to indexed image
  %
  imind = gray2ind(imgray);
  
  %%
  % Convert matrix to grayscale image
  %
  imgray = mat2gray(A); % where A is a 2D matrix
 
  %%
  % Split multichannel image into its individual channels
  % eg. if you read an rgb image it has 3 color channel Red, Green & Blue
  % if one need to fetch individual channel from that you can use the following funtion
  %
  [ r, g, b ] = imsplit(imrgb); % r contains red channel of image; g contains green channnel of image; b contains blue channel of image; 
  
 ```
------
- Graphs & Plots

```matlab
  
  %%
  % histogram plot of the gray scale image file
  %
  imhist(imgray);
  
  %%
  % bar chart
  %
  X = [100,200,300,400,500,600,700]
  Y = [3,6,9,12,15,18,21]
  
  % plot X vs Y plot
  bar(X,Y);
  
  % plot X
  bar(X)
  
  %%
  % line plot
  %
  X = linspace(-2*pi,2*pi,100);
  Y = sin(X);
  plot(X,Y);       % plots X vs sin(X) plot
  subplot(1,3,3),plot(X,Y1,X,Y2);  % plots X vs sin(X) AND X vs cos(X) plot
  
  %%
  % Customize your plot
  %
  
  % give title of the plot
  bar(X,Y);
  title('My Data Plot');
  
  % change the color of the plots
  % ------------------------------------------------------------------
  % | Short Name | Color Name | RGB Triplet | Hexadecimal Color Code |
  % ------------------------------------------------------------------
  % | 'r'        | 'red'      | [1 0 0]     | '#FF0000'              |
  % | 'g'        | 'green'    | [0 1 0]     | '#00FF00'              |
  % | 'b'        | 'blue'     | [0 0 1]     | '#0000FF'              |
  % | 'c'        | 'cyan'     | [0 1 1]     | '#00FFFF'              |
  % | 'm'        | 'magenta'  | [1 0 1]     | '#FF00FF'              |
  % | 'k'        | 'black'    | [1 1 0]     | '#FFFF00'              |
  % | 'w'        | 'white'    | [0 0 0]     | '#000000'              |
  % | 'y'        | 'yellow'   | [1 1 1]     | '#FFFFFF'              |
  % ------------------------------------------------------------------
  bar(X,'r'); % this plots red coloured bar graph
  
  % plot X vs sin(X) AND X vs cos(X) plots
  X = linspace(-2*pi,2*pi,100);
  Y1 = sin(X);
  Y2 = cos(X);
  plot(X,Y1,X,Y2);  
  
  % give label to the plot
  xlabel('-2\pi < X < 2\pi');
  ylabel('Sine and Cosine Values');
  
  % add legend to the plot
  legend({'y = sin(x)','y = cos(x)'},'Location','northeast');
  
  % change line style of the line graph
  % -------------------------------------------
  % |  Value |           Description          |
  % -------------------------------------------
  % | '--'   | Dashed line                    |
  % | '-'    | Solid line (default)           |
  % | ':'    | Dotted line                    |
  % | '-.'   | Dash-dot line                  |
  % -------------------------------------------
  plot(X,Y1,'--');  % change line style to dashed line
  
  % change line markers of the line graph
  % -------------------------------------------
  % |  Value |           Description          |
  % -------------------------------------------
  % | 'o'    | Circle                         |
  % | '+'    | Plus sign                      |
  % | 'x'    | Cross                          |
  % | '*'    | Asterisk                       |
  % | '.'    | Dot                            |
  % | 's'    | Square                         |
  % | 'd'    | Diamond                        |
  % | 'p'    | Pentagram (Five pointed star)  |
  % | 'h'    | Hexagram (Six pointed star)    |
  % | '>'    | Right pointing triangle        |
  % | '<'    | Left pointing triangle         |
  % | '^'    | Upward pointing triangle       |
  % | 'v'    | Downward pointing triangle     |
  % -------------------------------------------
  plot(X,Y1,'o');   % this shows the line in the form of sequence of small circles
  
  % combine multiple properties in one
  % shows dashed line with circle in red for sine plot and dashed line with cross in blue for cosine plot
  plot(X,Y1,'--or',X,Y2,'--xb');
  
```
------
- Declare Function

```matlab
 
  function [return_values1,...,return_valuesN] = function_name(parameter1,...,parameterN)
      %%
      % Body Here
      %%
  end
 
```
------
- For Loop

```matlab
  
  % for loop from 1 - n
  for i = 1:n
      %%
      % Body Here
      %%
  endfor
  
```
------
- While Loop

```matlab
  
  while condition
      %%
      % Body Here
      %%
  endwhile
  
```
------
- If Condition

```matlab
  
  if condition
      %%
      % Body Here
      %%
  endif

```
------
- Arithmatic Operations

```matlab
  
  %%
  % Addition
  %
  
  a = 3 + 5;
  
  %%
  % Subtraction
  %
  
  a = 3 - 5;
  
  %%
  % Multiplication
  %
  
  a = 3 * 5;
  
  %%
  % Division
  %

  a = 3 / 5;
  
  %%
  % Power
  %
  
  a = 3 ^ 5;
  % OR
  a = power(3,5);
  
  %%
  % Logarithm
  %
  
  % Natural Log
  a = log(3);
  
  % Common Log
  a = log10(3);
  
  %%
  % Square Root
  %
  
  a = sqrt(9);
  
```
------
- Bitwise Logical Operations

```matlab
   
   %%
   % Logical - OR
   %
   
   a = bitor(3,5);
   
   %%
   % Logical - AND
   %
   
   a = bitand(3,5);
   
   %%
   % Logical - NOT
   %
   
   a = bitnot(3,5);
   
   %%
   % Logical - XOR
   %
   
   a = bitxor(3,5);
   
```
------
- Matrix Operations

```matlab
  
  %%
  % Declare Column Vector
  %
  
  mat = [1; 2; 3];
  
  %%
  % Declare Row Vector
  %
  
  mat = [1 2 3];
  % OR
  mat = [1, 2, 3];
  
  %%
  % Declare Matrix of m x n dimension
  %
  % 1 2 3
  % 4 5 6
  % 7 8 9
  %
  
  mat = [1 2 3; 4 5 6; 7 8 9];
  % OR
  mat = [1, 2, 3; 4, 5, 6; 7, 8, 9];
  
  %%
  % Fetch Elements From Matrix
  %
  
  % Fetch single element
  a = mat(1,1);
  % OR
  a = mat(1);    % numerical indexing starting from 1 in column major order
  
  % Fetch whole column
  a = mat(:,1);
  
  % Fetch whole row
  a = mat(1,:);
  
  % Fetch perticular part from matrix
  a = mat(1:2,2:3);
  
  %%
  % Find Dimension of Matrix
  %
  
  dimension = size(mat);
  
  %%
  % Declare Matrix with 1
  % 
  % 1 0 0
  % 0 1 0
  % 0 0 1
  %
  
  i_mat = eye(3);
  % OR
  i_mat = eye(3,3);
  
  %%
  % Declare Matrix with 1
  % 
  % 1 1 1
  % 1 1 1
  % 1 1 1
  %
  
  i_mat = ones(3);
  % OR
  i_mat = ones(3,3);
  
  %%
  % Declare Matrix with 0
  % 
  % 0 0 0
  % 0 0 0
  % 0 0 0
  %
  
  z_mat = zeros(3);
  % OR
  z_mat = zeros(3,3);
  
  %%
  % Declare Magic Matrix
  %
  % 8 1 6 
  % 3 5 7
  % 4 9 2
  %
  
  magic_mat = magic(3);
  
  %%
  % Addition Operation on Matrix
  %
  
  % Add scalar value to an matrix
  new_mat = mat + 2;   % new_mat & mat are two matrix of m x n size
  
  % Add matrix A with matrix B
  new_mat = A + B;     % new_mat, A & B are same dimension m x n matrix
  
  %%
  % Multiplication Operation on Matrix
  %
  
  % Multiply scalar value with matrix
  new_mat = mat * 2;
  
  % Multiply matrix A with matrix B
  new_mat = A * B;   % dimension of matrix A: m1 x n | dimension of matrix B: n x m2  | dimension of matrix new_mat: m1 x m2
  
  % Multiply the corresponding elements of two matrices or vectors using the .* operator
  new_mat = A .* B;   % dimension of matrix A: m1 x n | dimension of matrix B: n x m2  | dimension of matrix new_mat: m1 x m2
  
  %%
  % Subtraction Operation on Matrix
  %
  
  % Subtract scalar value to an matrix
  new_mat = mat - 2;   % new_mat & mat are two matrix of m x n size
  
  % Subtract matrix A with matrix B
  new_mat = A - B;     % new_mat, A & B are same dimension m x n matrix
  
  %%
  % Minimum Value
  %
  
  % Minimum of row or column vector
  min_value = min(vector);
  
  % Minimun of m x n matrix
  min_value_vector = min(mat);    % using min() on any matrix return vector containing minimum of each column
  min_value = min(min_value_vector);
  
  %%
  % Maximum Value
  %
  
  % Maximum of row or column vector
  max_value = max(vector);
  
  % Maximun of m x n matrix
  max_value_vector = max(mat);    % using max() on any matrix return vector containing maximum of each column
  max_value = max(max_value_vector);
  
  %%
  % Median Value
  %
  
  % Median of row or column vector
  median_value = median(vector);
  
  % Median of m x n matrix
  median_value_vector = median(mat);    % using median() on any matrix return vector containing median of each column
  median_value = median(median_value_vector);
  
```

------
