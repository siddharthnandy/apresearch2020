clear all;
close all;

%% Generage average

avgCI = 0;
for i = 1:8
    avgCI = avgCI + imread(join(["antici_Subject" int2str(i) "-1.png"], "")) / 8;    
end
%% See image

imshow(avgCI)

%% Save image

% imwrite(avg_crop, "merge_ci_1.jpeg");