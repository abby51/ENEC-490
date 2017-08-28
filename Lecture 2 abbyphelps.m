GASPRICES = xlsread('New York Harbor Conventional Gas Prices.xlsx');
c = reshape(GASPRICES,[12,30]);
YearlyAverage = mean(c)
xlswrite('monthly_average_price.xlsx',YearlyAverage)
