A = imread('C:\Users\Abhishek\Desktop\project\images (2).jpg');
I = rgb2gray(A);
J = histeq(I);
K = im2bw(J);
Temp = imread('C:\Users\Abhishek\Desktop\project\Picture1.png');
Temp = im2bw(Temp);
Temp = imresize(Temp,[182,136]);
whos
index_pairs = matchFeatures(Temp,K);
matched_pts1 = vpts1(index_pairs(:, 1));
matched_pts2 = vpts2(index_pairs(:, 2));
showMatchedFeatures(Temp,K,matched_pts1,matched_pts2);