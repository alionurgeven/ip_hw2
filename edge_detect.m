function edge_I = edge_detect(I)
    hg = [-1 0 1;
        -1 0 1;
        -1 0 1];
    vg = [-1 -1 -1;
        0 0 0;
        1 1 1];
    h_I = my_conv2(I, hg, 'same');
    v_I = my_conv2(I, vg, 'same');
    edge_I = v_I + h_I;
end

