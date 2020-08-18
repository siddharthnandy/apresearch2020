for i = 1:1
    for j = 1:1
        csv1 = csvread(join(["response_Subject" int2str(i) "-" int2str(j) "-1.csv"], ""));
        csv2 = csvread(join(["response_Subject" int2str(i) "-" int2str(j) "-2.csv"], ""));
        allCsv = [csv1;csv2]; % Concatenate vertically
        csvwrite(join(["response_Subject" int2str(i) "-" int2str(j) ".csv"], ""), allCsv);
    end
end