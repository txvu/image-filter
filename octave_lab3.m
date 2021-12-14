% Reference: https://www.codingame.com/playgrounds/2524/basic-image-manipulation/introduction
% Reference: https://www.colorado.edu/amath/sites/default/files/attached-files/imagemanipulationedit.pdf

disp('');
image_name = input('Enter your image name: ');

disp('');
disp('Choose one of below filters to apply to your image:');
disp('1. Black and white');
disp('2. Red');
disp('3. Green');
disp('4. Blue');
disp('5. Permute');
disp('6. Sepia');
disp('7. Hue rotation');

disp('');
choice = input('Your choice is (enter a number): ');

black_and_white_filter = [1/3, 1/3, 1/3; 1/3, 1/3, 1/3; 1/3, 1/3, 1/3];
red_filter = [1, 0, 0; 0, 0, 0; 0, 0, 0];
green_filter = [0, 0, 0; 0, 1, 0; 0, 0, 0];
blue_filter = [0, 0, 0; 0, 0, 0; 0, 0, 1];
permute_filter = [0, 0, 1; 0, 1, 0; 1, 0, 0];
sepia_filter = [0.393, 0.769, 0.189; 0.349, 0.686, 0.168; 0.272, 0.534, 0.131];
hue_rotate_filter = [0.213, 0.715, 0.072; 0.213, 0.715, 0.072; 0.213, 0.715, 0.072] + cosd(90)*[0.787, -0.715, -0.072; -0.213, 0.285, -0.072; -0.213, -0.715, 0.928] + sind(90)*[0.213, -0.715, 0.928; 0.143, 0.140, -0.283; -0.787, 0.715, 0.072];

disp('');
disp('Processing...');
disp('It can take a while if the image is too big.');
image = imread(image_name);

if (choice == 1)
    new_image = multiplication(image, black_and_white_filter);
elseif (choice == 2)
    new_image = multiplication(image, red_filter);
elseif (choice == 3)
    new_image = multiplication(image, green_filter);
elseif (choice == 4)
    new_image = multiplication(image, blue_filter);
elseif (choice == 5)
    new_image = multiplication(image, permute_filter);
elseif (choice == 6)
    new_image = multiplication(image, sepia_filter);
elseif (choice == 7)
    new_image = multiplication(image, hue_rotate_filter);
else
    disp('');
    disp('Invalid input!');
    return;
end;

disp('');
disp('Done');

subplot(2,1,1);
imshow(image);

subplot(212);
imshow(new_image);