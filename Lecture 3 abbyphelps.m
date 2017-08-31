%unfortnately, I had a really hard time coming up with the code for the monthly_stats function so I wasn't really able to complete the other 
%parts of the homework

data = xlsread('Henry Hub Monthly Gas Prices.xls', 'Data 1');
function [ m ] = monthly_stats(data);
years = length(data);
months = zeros(12,years);

for i = years:1;
    for j = 1:12;
        for k = 1:12;
            m(j,i) = mean(data((i-1)*12+j));
            m(k,1) = std(data((i-1)*12+k));
        end
    end
end

new_years = 1997:1:2017;
start = find(new_years==2008);
m = m(:,start:end);
end
            
hh = monthly_stats(data);

april = hh(4,:)*randn(1000,1);
january = hh(1,:)*randn(1000,1);

 %also stuck on how to plot histograms, sorry I should've asked a question about this in class
