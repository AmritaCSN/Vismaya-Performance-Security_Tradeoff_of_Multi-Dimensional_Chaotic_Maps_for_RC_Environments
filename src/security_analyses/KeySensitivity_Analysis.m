%reading images
image1 = imread("images\256_E4.png");
image2 = imread("Keysensitivity\256_K1_E4.png");
%checking matched pixels
if size(image1) ~= size(image2)
  disp('images sizes are different')
else
[w,l] = size(image1);
count = 0;
for i = 1:w
  for j = 1:l
    if image1(i,j) == image2(i,j)
      count = count+1;
     end
   end
 end
 
 percentage_matched = (count/(w*l))*100;
 fprintf('Percentage of matched pixels: %f\n', percentage_matched);

end

