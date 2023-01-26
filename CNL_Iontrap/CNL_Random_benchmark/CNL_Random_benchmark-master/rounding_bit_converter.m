function phase_shifter_bit = rounding_bit_converter(phase)
% we will round input phase value into given array elements
% after rounding, we should convert its index into 12bit
% This is because our Microwave phase shifter uses 12bit for expressing phase 0 ~ 360 degree

% Initialize array
phase_min = 0;
phase_max = 360;
n_bit = 12; % Microwave phase shifter uses 12 bit for expressing phase
N = 2^(n_bit);
phase_12_bit = linspace(phase_min, phase_max, N);
X = zeros(1, N); % stores difference between input phase and initial array

for i = 1 : length(phase_12_bit)
    X(i) = abs(phase_12_bit(i) - phase);
end

[~, rounding_index] = min(X); % we find location of rounding value
rounding_index = rounding_index - 1; % start from 0 index
phase_shifter_bit = dec2bin(rounding_index, n_bit); % express rounding index using 12 bit
end