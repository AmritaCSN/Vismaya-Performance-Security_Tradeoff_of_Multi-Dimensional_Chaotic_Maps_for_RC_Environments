% image paths
imagePaths = {'images\128_E4.png', 'images\256_E4.png', 'images\512_E4.png', 'images\1024_E4.png'};
dimensions = {'1D', '2D', '3D', '4D'};

% Initialing arrays to store entropy values
entropy_R = zeros(1, length(imagePaths));
entropy_G = zeros(1, length(imagePaths));
entropy_B = zeros(1, length(imagePaths));
combined_entropy = zeros(1, length(imagePaths));

for i = 1:length(imagePaths)
    % Reading the image
    img = imread(imagePaths{i});
    
    % Entopy calculation for R channel
    histogram_R = imhist(img(:, :, 1));
    probabilities_R = histogram_R / sum(histogram_R);
    entropy_R(i) = -sum(probabilities_R(probabilities_R > 0) .* log2(probabilities_R(probabilities_R > 0)));
    fprintf('Entropy for R channel of %s is %f\n', dimensions{i}, entropy_R(i));

    % Entopy calculation for R channel
    histogram_G = imhist(img(:, :, 2));
    probabilities_G = histogram_G / sum(histogram_G);
    entropy_G(i) = -sum(probabilities_G(probabilities_G > 0) .* log2(probabilities_G(probabilities_G > 0)));
    fprintf('Entropy for G channel of %s is %f\n', dimensions{i}, entropy_G(i));

    % Entopy calculation for B channel
    histogram_B = imhist(img(:, :, 3));
    probabilities_B = histogram_B / sum(histogram_B);
    entropy_B(i) = -sum(probabilities_B(probabilities_B > 0) .* log2(probabilities_B(probabilities_B > 0)));
    fprintf('Entropy for B channel of %s is %f\n', dimensions{i}, entropy_B(i));

    % Combined entropy for 3 channels
    combined_entropy(i) = (entropy_R(i) + entropy_G(i) + entropy_B(i))/3;
    fprintf('Combined Entropy of %s is %f\n', dimensions{i}, combined_entropy(i));
end

% Bar graph plotting
imageLabels = {'1D', '2D', '3D', '4D'};
figure;
bar([entropy_R', entropy_G', entropy_B', combined_entropy']);
set(gca, 'XTickLabel', imageLabels);
xlabel('Dimension');
ylabel('Entropy');
legend('R Channel', 'G Channel', 'B Channel', 'Combined');
title('Entropy for Different Dimensions and Channels (512 x 512)');
ylim([3, 9]);