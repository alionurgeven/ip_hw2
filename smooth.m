function smooth_I = smooth(I, size, sigma)
    gf = my_gaussian(size, sigma);
    smooth_I = my_conv2(I, gf, 'same');
end

