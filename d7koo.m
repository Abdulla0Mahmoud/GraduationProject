% Parameters
sample_size = 10; % Size of the sample window
num_samples = 1000; % Total number of samples
SNR_dB = 10; % Signal-to-Noise Ratio in dB
sleep_mode_duration = 200; % Time steps for sleep mode
sign_bits = 1;
integer_bits = 3;
fractional_bits = 10;

% Function to convert fixed-point representation to decimal
fixed_to_decimal = @(x) double(x) / 2^fractional_bits;

% Simulate receiving only noise during sleep mode
received_noise_sleep = awgn(zeros(1, sleep_mode_duration), SNR_dB, 'measured');

% Simulate receiving data along with noise
data_fixed = fi(randi([0 2^14-1], 1, num_samples - sleep_mode_duration), true, sign_bits, integer_bits, fractional_bits);
data_decimal = fixed_to_decimal(data_fixed);
received_data = [received_noise_sleep, ...
                 awgn(data_decimal, SNR_dB, 'measured')];

% Calculate energy over the sample window for received noise during sleep mode
noise_energy_sleep = zeros(1, sleep_mode_duration - sample_size + 1);
for i = 1:(sleep_mode_duration - sample_size + 1)
    sample_window = received_noise_sleep(i:i+sample_size-1);
    noise_energy_sleep(i) = sum(sample_window.^2);
end

% Calculate energy over the sample window for received noise during data transmission
noise_energy_transmission = zeros(1, (num_samples - sleep_mode_duration) - sample_size + 1);
for i = 1:((num_samples - sleep_mode_duration) - sample_size + 1)
    sample_window = received_data(sleep_mode_duration+i:sleep_mode_duration+i+sample_size-1);
    noise_energy_transmission(i) = sum(sample_window.^2);
end

% Plotting
figure;
subplot(2,1,1);
plot(1:sleep_mode_duration, received_noise_sleep, 'b');
hold on;
plot(sleep_mode_duration+1:num_samples, received_data(sleep_mode_duration+1:end), 'r');
title('Received Noise and Data with Noise');
xlabel('Sample Index');
ylabel('Amplitude');
legend('Noise (Sleep Mode)', 'Data + Noise');
hold off;

subplot(2,1,2);
plot(1:(sleep_mode_duration - sample_size + 1), noise_energy_sleep, 'b');
hold on;
plot(1:((num_samples - sleep_mode_duration) - sample_size + 1), noise_energy_transmission, 'r');
title('Energy Detection');
xlabel('Sample Index');
ylabel('Energy');
legend('Noise (Sleep Mode)', 'Noise (Transmission)');
hold off;
