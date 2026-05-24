function Data_DeMapped = QPSK_DeMapper(Input_Data)
    % 2 columns shaped Data
    DeMapped_Temp = zeros(length(Input_Data),2);
    %Demodulation the recieved symbol stream
    for counter = 1 :length(Input_Data)
        if(real(Input_Data(counter)) > 0)
            DeMapped_Temp(counter,1) = 1;
        else
            DeMapped_Temp(counter,1) = 0;
        end

        if(imag(Input_Data(counter)) > 0)
            DeMapped_Temp(counter,2) = 1;
        else
            DeMapped_Temp(counter,2) = 0;
        end
    end
    % 1 columns shaped Data_DeMapped
    Data_DeMapped = reshape(DeMapped_Temp',1,[]);
end