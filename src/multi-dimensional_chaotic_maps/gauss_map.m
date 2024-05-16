% Gauss map function

a = 1.4;    % Parameter of the Gauss map
x0 = 0.1;   % Initial condition
n = 1000;   % No: of iter

% Initialize the keystream
keystream = zeros(1, n);

% Set the initial condition
x = x0;

% Iterate through equation
for i = 1:n
    x = a * x * (1 - x) / 1.7; 
    keystream(i) = x;
end

filename = 'keystream.txt';
fid = fopen(filename, 'w');
fprintf(fid, '%.8f\n', keystream);
fclose(fid);

disp('Keystream saved into "keystream.txt".');
