function Symbols = QPSK_Mapper(Input_Data)
    Img = 1i;
    for(i=1:length(Input_Data)) %Mapping Bits to QPSK to be Transmitted
    if(mod(i,2) == 0)
        m = i/2;
        if((Input_Data(i-1) == 0) && (Input_Data(i) == 0))
        Symbols(m)= -1-1*Img;
        elseif((Input_Data(i-1) == 0) && (Input_Data(i) == 1))
        Symbols(m)= -1+1*Img;
        elseif((Input_Data(i-1) == 1) && (Input_Data(i) == 1))
        Symbols(m)= 1+1*Img;
        elseif((Input_Data(i-1) == 1) && (Input_Data(i) == 0))
        Symbols(m)= 1-1*Img;
        end
    end
    end
end