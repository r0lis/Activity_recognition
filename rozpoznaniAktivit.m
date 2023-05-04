function classADL = rozpoznaniAktivit(D)
   
 
    classADL = 0; % Počáteční hodnota výstupní třídy

    FS_puvodni = 200;
    fc = 5; 
    Wn = fc / (FS_puvodni / 2); 
    [b, a] = butter(4, Wn, 'low');
    data_ = filtfilt(b, a, D(:,1:3));

    x = data_(:,1);
    y = data_(:,2);
    z = data_(:,3);

    Mean = mean(y)+ 0.2;
    Mean2 = mean(z);
    Meanx = mean(x);
    peakX = Extrem(Meanx, x);
    minx = min(x);
    
    
    firstSec = mean(y(1:200));
    lastSec = mean(y(end-199:end));

    extrem = Extrem(Mean, y);
    extrem2 = Extrem(Mean+ 0.9, y);
    extrem3 = Extrem(Mean2 + 0.8, z);
    extrem5 = Extrem(Mean+ 1, y);
    
    highValuesAxes = HighValuesAxes(x,y,z);
    
 
    if abs(firstSec - lastSec) > 0.3  && extrem3 <= 0 && extrem2 <= 1 && peakX < 8 || extrem <= 1 && peakX < 8
        preresult = true;
         
    else
        preresult = false;       
    end
   

    if preresult == true && extrem5 <=0 && minx > -2
        if preresult == true && Meanx >= -0.54
            classADL = 10; 
        end
        if preresult == true && firstSec > lastSec && Meanx < -0.26
            classADL = 9; 
        end
         
    else
        classADL = 0;
        preresult = false;
    end
   

   
    if preresult == false && extrem2 < 2
        classADL = highValuesAxes;
        
    else
        preresult = false;   
    end
      

    if extrem2 >= 2 && preresult == false && extrem < 7
        classADL = 3;
        preresult = true;
    end

    if extrem > 5 && preresult == false && Meanx > -0.3 && extrem2 ~= 1
            activity = Extreme_diffs(Mean, y);

            classADL = activity;
    end

    if peakX > 7 && extrem < 3
        activity = Extreme_diffs(Meanx, x);
        classADL = activity;
    end

if classADL == 0
    classADL = 9;
end
end


function highValuesAxes = HighValuesAxes(x, y, z)
maxX = max(x);
maxY = max(y);
maxZ = max(z);
minX = min(x);
meanX = mean(x);

if minX < -2 && minX < meanX - 0.4 
    highValuesAxes = 8;

elseif maxY >= maxX && maxY >= maxZ && maxY > 1.74 || maxY <= maxX && maxY >= maxZ && maxY
    highValuesAxes = 6;
elseif maxZ >= maxY && maxZ >= maxX 
    highValuesAxes = 7;
else
    highValuesAxes = 0;
 
end
end


function extrem = Extrem(mean, data)

aboveMean = data > ((mean) + 0.2);
peaks = diff(aboveMean) < 0;
peakPositions = find(peaks);
n = length(peakPositions);
extrem = n;
end


function extreme_diffs = Extreme_diffs(mean, data)

aboveMean = data > ((mean) + 0.2);
peaks = diff(aboveMean) < 0;
peakPositions = find(peaks);
differences = diff(peakPositions);
maxDifference = max(differences);
n = length(peakPositions);
averageSpacing = 0;
count = 0;

for i = 1:n-1
    spacing = peakPositions(i+1) - peakPositions(i);
    if spacing > 0
        averageSpacing = averageSpacing + spacing;
        count = count + 1;
    end
end
if count > 0
    averageSpacing = averageSpacing / count;
end

if averageSpacing > 88 && maxDifference < 900
    extreme_diffs =1;
elseif averageSpacing < 88 && maxDifference < 900
    extreme_diffs=2;
end

if averageSpacing < 250 && maxDifference > 900
    extreme_diffs=4;
elseif averageSpacing > 250
     extreme_diffs=5;

end
end


