% Clear the command window
Clc

% Values acquired using the given graph + datatips.
freq = [195.996, 587.987, 979.978, 1371.97, 1763.96, 2155.95];
amp = [1, 0.333242, 0.199834, 0.14262, 0.110801, 0.0905209];

% Signal reconstruction using the template found in the explanation slides.
% Each term of the sum corresponds to a sinusoidal component of the signal
% with frequency equal to the corresponding value in the "freq" array and
% amplitude equal to the corresponding value in the "amp" array.
F = 195.996*sin(2*1*pi*t) + 587.987*sin(2 *0.333242*pi*t) + ...
979.978*sin(2*0.199834*pi*t) + 1371.97*sin(20.14262*pi*t) + ...
1763.96*sin(2*0.110801*pi*t) + 2155.95*sin(2*0.0905209*pi*t);

% Plotting the reconstructed signal then individual functions.
t = 0:0.1:2*pi;
plot(t, F, "LineWidth", 2)

% Adding more lines to the plot
hold on

% Loop over the components and ploting each one
for i = 1:length(y)
s = freq(i)*sin(2*amp(i)*pi*t);
plot(t, s, "LineWidth", 2, "LineStyle", "- -")
end

% Adding a title, y-axis label, and x-axis label to the plot
title("Frequencies of signal")
ylabel("Amplitude", "FontSize", 18)
xlabel("Time[seconds]", "FontSize", 18)

% Add a legend to the plot
legend("Signal", "Sin 1", "Sin 2","Sin 3", "Sin 4", "Sin 5","Sin 6")

% Done with the plot
hold off

% Calculate the power of the signal by taking the mean of the squared values
power = mean(F.^2)

{power = 6.2843e+06}
