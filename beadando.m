car = readtable('Carseats.csv','PreserveVariableNames',true );

altag = mean(car.Price)
min_car = min(car.Price)
max_car = max(car.Price)

figure
plot(car.Population)

s = length(car.US);
H = zeros(s);
num_of_no = 0;

for c = 1:s
    if(car.US(c) == "No") 
        num_of_no = num_of_no + 1
    end
end

quan = quantile(car.Age, [.25 .50 .75])

boxplot(quan)

ecdf(car.Age)



