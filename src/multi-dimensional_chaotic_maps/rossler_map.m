tic
% Parameters
a = 0.1; 
b = 0.2;
c = 5.7;
d = 0.1; 
x0 = 0.1;
y0 = 0.1;
z0 = 0.1;
w0 = 0.1;
n = 1000; % Number of iter
filename = 'keystream_rossler.txt'; 
dt = 0.01; 

% Initialize the keystream
keystream = zeros(n, 4);

% Generate keystream 
x = x0;
y = y0;
z = z0;
w = w0;
for i = 1:n
    x_next = -y - z - w;
    y_next = x + a * y;
    z_next = b + z * (x - c);
    w_next = d * w + z^2;
    
    % Check for Null 
    if any(isnan([x_next, y_next, z_next, w_next]))
        disp('Numerical instability encountered. Exiting loop.');
        break;
    end
    
    % Update variables
    x = x + dt * x_next;
    y = y + dt * y_next;
    z = z + dt * z_next;
    w = w + dt * w_next;
    
    keystream(i, :) = [x, y, z, w];
end

keystream = (keystream - min(keystream(:))) / (max(keystream(:)) - min(keystream(:)));
keystream = keystream(1:i, :);

fid = fopen(filename, 'w');
for j = 1:size(keystream, 1)
    fprintf(fid, '%.8f\t%.8f\t%.8f\t%.8f\n', keystream(j, :));
end
fclose(fid);

disp(['Keystream saved into "', filename, '".']);
