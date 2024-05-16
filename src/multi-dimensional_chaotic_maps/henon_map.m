% Henon map function
% Parameters
a = 1.4;
b = 0.3;
x0 = 0.1;
y0 = 0.1;
z0 = 0.1;
n = 1000; % Number of iter
filename = 'keystream-henon.txt'; 

% Initialize the keystream
keystream = zeros(n, 3);

% Generate keystream
x = x0;
y = y0;
z = z0;
for i = 1:n
    x_next = y + 1 - a * x^2;
    y_next = b * x;
    z_next = x + y + z; 
    x = x_next;
    y = y_next;
    z = z_next;
    keystream(i, :) = [x, y, z];
end

keystream = keystream - min(keystream(:)); 
keystream = keystream / max(keystream(:)); 

fid = fopen(filename, 'w');
for i = 1:n
    fprintf(fid, '%.8f\t%.8f\t%.8f\n', keystream(i, :));
end
fclose(fid);

disp(['Keystream saved into "', filename, '".']);
