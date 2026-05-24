clc
clear all
%% Ploting the Half Sine shape.

format long;

Tc = 1/(2e6);
Time_Axes_number_of_points = (Tc/5)^-1;
Time_Axes_of_the_half_sine = linspace(0, 2*Tc, Time_Axes_number_of_points);

Positive_Half_Sine = sin(pi * 1/(2*Tc) * Time_Axes_of_the_half_sine);
Negative_Half_Sine = -1.*Positive_Half_Sine;

%%

FREQ_TX = 2.455e9;
freqOffsetArray = zeros(1, 80+80+1);
for i = 1:1:length(freqOffsetArray)    
    if( i>=1 && i<=80)
        freqOffsetArray(i) = FREQ_TX + (FREQ_TX/1e6 * i);
    elseif(i==81)
        freqOffsetArray(i) = 0;
    else
        freqOffsetArray(i) = FREQ_TX - (FREQ_TX/1e6 * (i-81));
    end    
end

phaseOffsetArray = zeros(1, 45+1+45);
for i = 1:1:length(phaseOffsetArray)    
    if( i>=1 && i<=45)
        phaseOffsetArray(i) = (i*pi)/180;
    elseif(i==46)
        phaseOffsetArray(i) = 0;
    else
        phaseOffsetArray(i) = -((i-46)*pi)/180;
    end    
end

NoArray = zeros(1,13);
for i = 1:1:length(NoArray)    
    NoArray(i) = (Tc/2)/(10^(i/10));
end
NoArray = [2.26866 2.14665 1.77124 1.63433 1.25892 1.12201 1 0.89125 0.79432 0.70794 0.63095 0.56234 0];

SymbolArray = [0 1 2 3];
%for i = 1:1:4    
 %   SymbolArray(i,:) = (i-1)*SymbolArray(i,:);
%end


FadingArray = [0.2, 0.4, 0.6, 0.8, 1];

signal = add_Freq_PhaseOffset_Noise(3, 0, 0, NoArray(1), 1, Positive_Half_Sine, Negative_Half_Sine, Time_Axes_of_the_half_sine);
t_samp = linspace(0, 1*Tc, 250);

figure
plot(t_samp, signal);
title('Signal')
xlabel('Time (seconds)')
ylabel('Amplitude')
grid on

%%
train_depth = 0+1;
test_depth = 200+1;

%%
x_train = zeros(1, 250);
y_train = zeros(1, 1);

x_test = zeros(1, 250);
y_test = zeros(1, 1);

state = 0;
use = 0;
somg = zeros(1,250);
for inx = 1:1:train_depth
    symbol_num = randi(4)-1;
    phase_num = randi(91);
    noise_num = randi(13);
    fading_num = randi(5);
    if(state == 0)
        if(use)
            somg = add_Freq_PhaseOffset_Noise(symbol_num, 0, phaseOffsetArray(phase_num), NoArray(noise_num), FadingArray(fading_num), Positive_Half_Sine, Negative_Half_Sine, Time_Axes_of_the_half_sine);
            somg = [somg(1, 1:13) zeros(1, 214) somg(1, 228:239) zeros(1, 11)];
            x_train = somg;
            y_train = symbol_num;
            state = 1;    
        else
            x_train = add_Freq_PhaseOffset_Noise(symbol_num, 0, phaseOffsetArray(phase_num), NoArray(noise_num), FadingArray(fading_num), Positive_Half_Sine, Negative_Half_Sine, Time_Axes_of_the_half_sine);
            y_train = symbol_num;
            state = 1;    
        end
    else
        if(use)
           somg = add_Freq_PhaseOffset_Noise(symbol_num, 0, phaseOffsetArray(phase_num), NoArray(noise_num), FadingArray(fading_num), Positive_Half_Sine, Negative_Half_Sine, Time_Axes_of_the_half_sine);
           somg = [somg(1, 1:13) zeros(1, 214) somg(1, 228:239) zeros(1, 11)];
           x_train = vertcat(x_train, somg);
           y_train = vertcat(y_train, symbol_num);
        else
           x_train = vertcat(x_train, add_Freq_PhaseOffset_Noise(symbol_num, 0, phaseOffsetArray(phase_num), NoArray(noise_num), FadingArray(fading_num), Positive_Half_Sine, Negative_Half_Sine, Time_Axes_of_the_half_sine));
           y_train = vertcat(y_train, symbol_num);
        end
    end
end

state = 0;
for inx = 1:1:test_depth
    symbol_num = randi(4)-1;
    phase_num = randi(91);
    noise_num = randi(13);
    fading_num = randi(5);
    if(state == 0)
        if(use)
            somg = add_Freq_PhaseOffset_Noise(symbol_num, 0, phaseOffsetArray(phase_num), NoArray(noise_num), FadingArray(fading_num), Positive_Half_Sine, Negative_Half_Sine, Time_Axes_of_the_half_sine);
            somg = [somg(1, 1:13) zeros(1, 214) somg(1, 228:239) zeros(1, 11)];
            x_test = somg;
            y_test = symbol_num;
            state = 1;    
        else
            x_test = add_Freq_PhaseOffset_Noise(symbol_num, 0, phaseOffsetArray(phase_num), NoArray(noise_num), FadingArray(fading_num), Positive_Half_Sine, Negative_Half_Sine, Time_Axes_of_the_half_sine);
            y_test = symbol_num;
            state = 1;    
        end
    else
       if(use)
           somg = add_Freq_PhaseOffset_Noise(symbol_num, 0, phaseOffsetArray(phase_num), NoArray(noise_num), FadingArray(fading_num), Positive_Half_Sine, Negative_Half_Sine, Time_Axes_of_the_half_sine);
           somg = [somg(1, 1:13) zeros(1, 214) somg(1, 228:239) zeros(1, 11)];
           x_test = vertcat(x_test, somg);
           y_test = vertcat(y_test, symbol_num);
        else
           x_test = vertcat(x_test, add_Freq_PhaseOffset_Noise(symbol_num, 0, phaseOffsetArray(phase_num), NoArray(noise_num), FadingArray(fading_num), Positive_Half_Sine, Negative_Half_Sine, Time_Axes_of_the_half_sine));
           y_test = vertcat(y_test, symbol_num);
        end
    end
end


writematrix(x_train, 'x_train.xlsx', 'Sheet', 1);
writematrix(y_train, 'y_train.xlsx', 'Sheet', 1);
writematrix(x_test, 'x_test.xlsx', 'Sheet', 1);
writematrix(y_test, 'y_test.xlsx', 'Sheet', 1);


%%
function result = add_Freq_PhaseOffset_Noise(symbol, fr_offset, ph_offset, noise_STDIV, fading_factor, Positive_Half_Sine, Negative_Half_Sine, Time_Axes_of_the_half_sine)
    A  = 1;
    Fc = 2.455e9 - 2.445e9;
    
    
    cosine_wave = A * cos((2*pi*(Fc+fr_offset)*Time_Axes_of_the_half_sine) +  ph_offset);
    positive_half_sine_by_cosine = Positive_Half_Sine.*cosine_wave;
    valueH = positive_half_sine_by_cosine(length(positive_half_sine_by_cosine)/2 +1 : length(positive_half_sine_by_cosine));
    zeroH = zeros(size(valueH));
    half_positive_half_sine_by_cosine = [zeroH valueH];

    negative_half_sine_by_cosine = Negative_Half_Sine.*cosine_wave;
    valueH = negative_half_sine_by_cosine(length(negative_half_sine_by_cosine)/2 +1 : length(negative_half_sine_by_cosine));
    zeroH = zeros(size(valueH));
    half_negative_half_sine_by_cosine = [zeroH valueH];
    
    
    sine_wave = A * sin((2*pi*(Fc+fr_offset)*Time_Axes_of_the_half_sine) +  ph_offset);  
    positive_half_sine_by_sine = Positive_Half_Sine.*sine_wave;
    valueH = positive_half_sine_by_sine(1 : length(positive_half_sine_by_sine)/2);
    zeroH = zeros(size(valueH));
    half_positive_half_sine_by_sine = [zeroH valueH];

    negative_half_sine_by_sine = Negative_Half_Sine.*sine_wave;
    valueH = negative_half_sine_by_sine(1 : length(negative_half_sine_by_sine)/2);
    zeroH = zeros(size(valueH));
    half_negative_half_sine_by_sine = [zeroH valueH];
    
    
    switch symbol
        case 3
            sym1_ZV = half_positive_half_sine_by_sine + half_positive_half_sine_by_cosine;   
        case 2
            sym1_ZV = half_negative_half_sine_by_sine + half_positive_half_sine_by_cosine;  
        case 1
            sym1_ZV = half_positive_half_sine_by_sine + half_negative_half_sine_by_cosine;  
        case 0
            sym1_ZV = half_negative_half_sine_by_sine + half_negative_half_sine_by_cosine;  
    end

    center = length(sym1_ZV)/2 + 1;
    step = 20000;
    %numberofBITS = 15;
    sym_original = fading_factor*sym1_ZV(1, center : end);
    sym_noise = addNoise(noise_STDIV, sym_original);
    sym_sample = sampleTheSignal(sym_noise, step);
    %sym_quantizeDEC = signedQuantize_DecimalRepresentation(sym_sample, numberofBITS);
    
    result = sym_sample;
end

function result = addNoise(standard_div, signal_vector)
    result = signal_vector + ((standard_div/2) * randn(1, length(signal_vector)));
end

function result = sampleTheSignal(signal, step)
    i=1;
    for inx = 1:step:length(signal)
            temp(i) = signal(inx);
            i=i+1;
    end
    result = temp;
end

function result = signedQuantize_DecimalRepresentation(input1, input2)
    result = round(input1 * (2^(input2)-1));
end