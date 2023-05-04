function SCORE=F1skore(Target,Result)

confusionMat=zeros(10,10);
stejne=zeros(1,length(Target));

for i=1:10
    stejne(Target==Result & Target==i)=1;
    confusionMat(i,i)=sum(stejne);
    stejne=zeros(1,length(Target));
end

for i=1:length(Target)
    switch Target(i)
        case 1
            if Result(i)==2
                confusionMat(1,2)=confusionMat(1,2)+1;
                continue
            elseif Result(i)==3
                confusionMat(1,3)=confusionMat(1,3)+1;
                continue
            elseif Result(i)==4
                confusionMat(1,4)=confusionMat(1,4)+1;
                continue
            elseif Result(i)==5
                confusionMat(1,5)=confusionMat(1,5)+1;
                continue
            elseif Result(i)==6
                confusionMat(1,6)=confusionMat(1,6)+1;
                continue
            elseif Result(i)==7
                confusionMat(1,7)=confusionMat(1,7)+1;
                continue
            elseif Result(i)==8
                confusionMat(1,8)=confusionMat(1,8)+1;
                continue
            elseif Result(i)==9
                confusionMat(1,9)=confusionMat(1,9)+1;
                continue
            elseif Result(i)==10
                confusionMat(1,10)=confusionMat(1,10)+1;
                continue
            end
        case 2
            if Result(i)==1
                confusionMat(2,1)=confusionMat(2,1)+1;
                continue
            elseif Result(i)==3
                confusionMat(2,3)=confusionMat(2,3)+1;
                continue
            elseif Result(i)==4
                confusionMat(2,4)=confusionMat(2,4)+1;
                continue
            elseif Result(i)==5
                confusionMat(2,5)=confusionMat(2,5)+1;
                continue
            elseif Result(i)==6
                confusionMat(2,6)=confusionMat(2,6)+1;
                continue
            elseif Result(i)==7
                confusionMat(2,7)=confusionMat(2,7)+1;
                continue
            elseif Result(i)==8
                confusionMat(2,8)=confusionMat(2,8)+1;
                continue
            elseif Result(i)==9
                confusionMat(2,9)=confusionMat(2,9)+1;
                continue
            elseif Result(i)==10
                confusionMat(2,10)=confusionMat(2,10)+1;
                continue
            end
        case 3
            if Result(i)==1
                confusionMat(3,1)=confusionMat(3,1)+1;
                continue
            elseif Result(i)==2
                confusionMat(3,2)=confusionMat(3,2)+1;
                continue
            elseif Result(i)==4
                confusionMat(3,4)=confusionMat(3,4)+1;
                continue
            elseif Result(i)==5
                confusionMat(3,5)=confusionMat(3,5)+1;
                continue
            elseif Result(i)==6
                confusionMat(3,6)=confusionMat(3,6)+1;
                continue
            elseif Result(i)==7
                confusionMat(3,7)=confusionMat(3,7)+1;
                continue
            elseif Result(i)==8
                confusionMat(3,8)=confusionMat(3,8)+1;
                continue
            elseif Result(i)==9
                confusionMat(3,9)=confusionMat(3,9)+1;
                continue
            elseif Result(i)==10
                confusionMat(3,10)=confusionMat(3,10)+1;
                continue
            end
        case 4
            if Result(i)==1
                confusionMat(4,1)=confusionMat(4,1)+1;
                continue
            elseif Result(i)==2
                confusionMat(4,2)=confusionMat(4,2)+1;
                continue
            elseif Result(i)==3
                confusionMat(4,3)=confusionMat(4,3)+1;
                continue
            elseif Result(i)==5
                confusionMat(4,5)=confusionMat(4,5)+1;
                continue
            elseif Result(i)==6
                confusionMat(4,6)=confusionMat(4,6)+1;
                continue
            elseif Result(i)==7
                confusionMat(4,7)=confusionMat(4,7)+1;
                continue
            elseif Result(i)==8
                confusionMat(4,8)=confusionMat(4,8)+1;
                continue
            elseif Result(i)==9
                confusionMat(4,9)=confusionMat(4,9)+1;
                continue
            elseif Result(i)==10
                confusionMat(4,10)=confusionMat(4,10)+1;
                continue
            end
        case 5
            if Result(i)==1
                confusionMat(5,1)=confusionMat(5,1)+1;
                continue
            elseif Result(i)==2
                confusionMat(5,2)=confusionMat(5,2)+1;
                continue
            elseif Result(i)==3
                confusionMat(5,3)=confusionMat(5,3)+1;
                continue
            elseif Result(i)==4
                confusionMat(5,4)=confusionMat(5,4)+1;
                continue
            elseif Result(i)==6
                confusionMat(5,6)=confusionMat(5,6)+1;
                continue
            elseif Result(i)==7
                confusionMat(5,7)=confusionMat(5,7)+1;
                continue
            elseif Result(i)==8
                confusionMat(5,8)=confusionMat(5,8)+1;
                continue
            elseif Result(i)==9
                confusionMat(5,9)=confusionMat(5,9)+1;
                continue
            elseif Result(i)==10
                confusionMat(5,10)=confusionMat(5,10)+1;
                continue
            end
        case 6
            if Result(i)==1
                confusionMat(6,1)=confusionMat(6,1)+1;
                continue
            elseif Result(i)==2
                confusionMat(6,2)=confusionMat(6,2)+1;
                continue
            elseif Result(i)==3
                confusionMat(6,3)=confusionMat(6,3)+1;
                continue
            elseif Result(i)==4
                confusionMat(6,4)=confusionMat(6,4)+1;
                continue
            elseif Result(i)==5
                confusionMat(6,5)=confusionMat(6,5)+1;
                continue
            elseif Result(i)==7
                confusionMat(6,7)=confusionMat(6,7)+1;
                continue
            elseif Result(i)==8
                confusionMat(6,8)=confusionMat(6,8)+1;
                continue
            elseif Result(i)==9
                confusionMat(6,9)=confusionMat(6,9)+1;
                continue
            elseif Result(i)==10
                confusionMat(6,10)=confusionMat(6,10)+1;
                continue
            end
        case 7
            if Result(i)==1
                confusionMat(7,1)=confusionMat(7,1)+1;
                continue
            elseif Result(i)==2
                confusionMat(7,2)=confusionMat(7,2)+1;
                continue
            elseif Result(i)==3
                confusionMat(7,2)=confusionMat(7,2)+1;
                continue
            elseif Result(i)==4
                confusionMat(7,4)=confusionMat(7,4)+1;
                continue
            elseif Result(i)==5
                confusionMat(7,5)=confusionMat(7,5)+1;
                continue
            elseif Result(i)==6
                confusionMat(7,6)=confusionMat(7,6)+1;
                continue
            elseif Result(i)==8
                confusionMat(7,8)=confusionMat(7,8)+1;
                continue
            elseif Result(i)==9
                confusionMat(7,9)=confusionMat(7,9)+1;
                continue
            elseif Result(i)==10
                confusionMat(7,10)=confusionMat(7,10)+1;
                continue
            end
        case 8
            if Result(i)==1
                confusionMat(8,1)=confusionMat(8,1)+1;
                continue
            elseif Result(i)==2
                confusionMat(8,2)=confusionMat(8,2)+1;
                continue
            elseif Result(i)==3
                confusionMat(8,3)=confusionMat(8,3)+1;
                continue
            elseif Result(i)==4
                confusionMat(8,4)=confusionMat(8,4)+1;
                continue
            elseif Result(i)==5
                confusionMat(8,5)=confusionMat(8,5)+1;
                continue
            elseif Result(i)==6
                confusionMat(8,6)=confusionMat(8,6)+1;
                continue
            elseif Result(i)==7
                confusionMat(8,7)=confusionMat(8,7)+1;
                continue
            elseif Result(i)==9
                confusionMat(8,9)=confusionMat(8,9)+1;
                continue
            elseif Result(i)==10
                confusionMat(8,10)=confusionMat(8,10)+1;
                continue
            end
        case 9
            if Result(i)==1
                confusionMat(9,1)=confusionMat(9,1)+1;
                continue
            elseif Result(i)==2
                confusionMat(9,2)=confusionMat(9,2)+1;
                continue
            elseif Result(i)==3
                confusionMat(9,3)=confusionMat(9,3)+1;
                continue
            elseif Result(i)==4
                confusionMat(9,4)=confusionMat(9,4)+1;
                continue
            elseif Result(i)==5
                confusionMat(9,5)=confusionMat(9,5)+1;
                continue
            elseif Result(i)==6
                confusionMat(9,6)=confusionMat(9,6)+1;
                continue
            elseif Result(i)==7
                confusionMat(9,7)=confusionMat(9,7)+1;
                continue
            elseif Result(i)==8
                confusionMat(9,8)=confusionMat(9,8)+1;
                continue
            elseif Result(i)==10
                confusionMat(9,10)=confusionMat(9,10)+1;
                continue
            end
        case 10
            if Result(i)==1
                confusionMat(10,1)=confusionMat(10,1)+1;
                continue
            elseif Result(i)==2
                confusionMat(10,2)=confusionMat(10,2)+1;
                continue
            elseif Result(i)==3
                confusionMat(10,3)=confusionMat(10,3)+1;
                continue
            elseif Result(i)==4
                confusionMat(10,4)=confusionMat(10,4)+1;
                continue
            elseif Result(i)==5
                confusionMat(10,5)=confusionMat(10,5)+1;
                continue
            elseif Result(i)==6
                confusionMat(10,6)=confusionMat(10,6)+1;
                continue
            elseif Result(i)==7
                confusionMat(10,7)=confusionMat(10,7)+1;
                continue
            elseif Result(i)==8
                confusionMat(10,8)=confusionMat(10,8)+1;
                continue
            elseif Result(i)==9
                confusionMat(10,9)=confusionMat(10,9)+1;
                continue
            end
    end
end

confusionMat=confusionMat';

SeRecall=zeros(1,10);
PPPrecision=zeros(1,10);
F1skorePart=zeros(1,10);
for i=1:10
    TP(i)=confusionMat(i,i);
    FP(i)=sum(confusionMat(i,:))-TP(i);
    FN(i)=sum(confusionMat(:,i))-TP(i);

    if TP(i)==0 & FP(i)==0 & FN(i)==0
        SeRecall(i)=NaN;
        PPPrecision(i)=NaN;
        F1skorePart(i)=1;
    elseif TP(i)==0
        SeRecall(i)=0;
        PPPrecision(i)=0;
        F1skorePart(i)=0;
    else
        SeRecall(i)=TP(i)/(TP(i)+FN(i));
        PPPrecision(i)=TP(i)/(TP(i)+FP(i));
        F1skorePart(i)=(2*PPPrecision(i)*SeRecall(i))/(PPPrecision(i)+SeRecall(i));
    end
end

SCORE=mean(F1skorePart);
f = figure('Units','pixels','Position',[0 0 800 600]);
confusionchart(confusionMat','columnsummary','column-normalized','RowSummary','row-normalized')
end
