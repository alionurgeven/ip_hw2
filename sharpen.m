function s_I = sharpen(I)
    sf = [0 -1 0;
         -1 5 -1;
         0 -1 0];
    s_I = my_conv2(I, sf, 'same');
end

