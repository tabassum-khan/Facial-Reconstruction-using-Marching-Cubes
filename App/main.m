%set the filename and pathname, Open Files should open a dialog box and
%multiselect will select multiple files
[filename, pathname] = uigetfile(fullfile('Forensic Facial Reconstructruction\Database\', '.dcm'), 'Open Files', 'MultiSelect', 'on');% the folder in which images exists

image = dicomread(strcat(pathname, filename{1,1})); %reads the first image 
[height, width] = size(image); %calculates the dimensions of the image
n = size (filename, 2); %calculates the number of images

rowHeadings= {'name'};
srcFiles = cell2struct(filename, rowHeadings, 1); %converts filename from cell to structured array

I = zeros(height,width,n); %creates a 3d matrix array initialised with zeros with each cell having a height and width dimension

%read each file
for i = 1:n
    fileName = strcat(pathname, srcFiles(i).name);
    I(:,:,i) = dicomread(fileName);
end 

x=1:height;
y=1:width;
z=1:n;
[X,Y,Z] = meshgrid(x,y,z); %creates a meshgrid of the 3d array for marching cubes function

%Marching cubes function accepts meshgrid coordinates based on a scalar
%value to create an isosurface
[F1, V1] = MarchingCubes(X,Y,Z,C,255);
p1 = patch('Faces', F1, 'Vertices', V1, 'FaceColor', [0.95 0.87 0.73], 'EdgeColor','none');
title('Tissue Surface Extraction')
colormap(map)
daspect(gca,[1,1,0.475])
lightangle(305,30);
lighting phong
ax= gca;
ax.View = [180,-180]; %creates the view for the graphic image produced with Marching Cubes
axis tight

[F2, V2] = MarchingCubes(X,Y,Z,C,1500);
p2 = patch('Faces', F2, 'Vertices', V2, 'FaceColor', [0.95 0.87 0.73], 'EdgeColor','none');
title('Bone Surface Extraction')
colormap(map)
daspect(gca,[1,1,.475])
lightangle(305,30);
lighting phong
ax = gca;
ax.View = [180,-180];
axis tight
