function B = my_conv2(A, k, shape)
    [r, c] = size(A);
    [m, n] = size(k);
    h = rot90(k, 2);
    center = floor((size(h)+1)/2);
    if(strcmp(shape, 'same'))
        left = center(2) - 1;
        right = n - center(2);
        top = center(1) - 1;
        bottom = m - center(1);
        Rep = zeros(r + top + bottom, c + left + right);
        for x = 1 + top : r + top
            for y = 1 + left : c + left
                Rep(x,y) = A(x - top, y - left);
            end
        end
        B = zeros(r , c);
        for x = 1 : r
            for y = 1 : c
                for i = 1 : m
                    for j = 1 : n
                        q = x - 1;
                        w = y -1;
                        B(x, y) = B(x, y) + (Rep(i + q, j + w) * h(i, j));
                    end
                end
            end
        end
    else
        Rep = zeros(r + m*2-2, c + n*2-2);
        for x = m : m+r-1
            for y = n : n+r-1
                Rep(x,y) = A(x-m+1, y-n+1);
            end
        end
        B = zeros(r+m-1,n+c-1);
        for x = 1 : r+m-1
            for y = 1 : n+c-1
                for i = 1 : m
                    for j = 1 : n
                        B(x, y) = B(x, y) + (Rep(x+i-1, y+j-1) * h(i, j));
                    end
                end
            end
        end
    end
end
