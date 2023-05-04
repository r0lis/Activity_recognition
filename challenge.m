
%========================================================================================
%                   Challenge v ramci projektu v predmetu BPC-ABS a SABS
%========================================================================================
%   VSTUPNI DATA
%    - slozka Folder obsahujici N csv souboru
%
%   VYSTUP  
%    - "resultFOLD.txt"  | soubor (txt) obsahujici N hodnot
%       Kazda hodnota v resultFOLD(i), i=1..N, je cele cislo odpovidajici tride  ADL={1,..,10}
%       ADL = activities of daily living (denni aktivity)
%
%   SCORE = F1score(TARGET, RESULT)
%    - pocita se na zaklade
%      : TARGET (referencni hodnoty ADL) 
%      : RESULT (vami vypocitane hodnoty ADL)
% ---------------------------------------------------------------------------------------
%  Popis dat:
%  . kazdy soubor obsahuje data z akcelerometru snimana behem nektere z dennich aktivit (ADL)
%  . kazdy soubor (format CSV - comma-separated values) obsahuje 4 sloupce
%      - prvni tri jsou data z X, Y, a Z osy akcelerometru
%      - ctvrty sloupec je casova znacka
%  . rozlisuje se 10 aktivit, tridy ADL={1,..,10}
% ¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨
%   ADL classes:
%	    1 | chuze
%	    2 | beh 
%	    3 | skakani
%	    4 | chuze dolu po schodech
%	    5 | chuze nahoru po schodech
%	    6 | pad dopredu
%	    7 | pad do boku 
%	    8 | pad dozadu 
%	    9 | lehnuti
%	   10 | ostatni (sezeni, vstani, vstani z lehu)
%=======================================================================================

%_________________
%  0  ::::::::::::
%------------------------------------------------------------------ 
%  vycisteni workspace, prikazoveho radku a zavreni vsech obrazku
%------------------------------------------------------------------ 
clear all   
close all hidden
clc

show=1;     % vykresleni dat [0,1]={ne,anos}


%_________________
%  1  ::::::::::::
%------------------------------------------------------------------ 
%  vstupni data -> FOLDNAME
%  Nazev slozky, ktera obsahuje N CSV souboru
%------------------------------------------------------------------
dataset=2;  % druha moznost je 2
if dataset==1    % původní dataset
    FOLDNAME='Folder';
    Target=load("targetFolder.txt");
elseif dataset==2     % nový dataset
    FOLDNAME='Folder2';
    Target=load("targetFolder2.txt");
end

%_________________
%  2  ::::::::::::
%------------------------------------------------------------------
%  zjisteni obsahu slozky -> FILES
%  Seznam (FILES) obsahuje nazvy N CSV souboru existujicich ve slozce FOLDER
%  TARGET = vektor o rozmerech Nx1 obsaujici referencni hodnoty
%------------------------------------------------------------------
info = dir(FOLDNAME);
N    = length(info)-2;      % pocet souboru (N)
FILES= {};                  
for i=1:N
    FILES{i}=info(i+2).name;
end

%_________________
%  3  ::::::::::::
%------------------------------------------------------------------
%  Klasifikace aktivit a ulozeni do promenne RESULT
%  RESULT = vektor o rozmerech Nx1
%  RESULT(i) uklada tridu aktivity ADL={1,..,10} pro kazdy soubor (i=1..N)
%------------------------------------------------------------------


Result=zeros(N,1);   % vektor vysledku

%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Pro kazdy soubor
for file=1:N

    fileName=[FILES{file} ];
    D=load(fileName);   % Data = [ X Y Z time]
    
    % zakladni vykresleni dat
    if show
        close
        figure(1)
        time = D(:,4)-D(1,4);
        plot( time,D(:,1:3))
        title(' Akcelerometrická data ')
        xlabel(' Čas [s] ')
        ylabel(' Zrychlení [ms^-^2] ')
        grid
        legend('x','y','z')
    end

    %  :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    %  :                    Zde vlozte svoji funkci                  :
    %  :              classADL = rozpoznaniAktivit(D);             :
    %  :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    classADL = rozpoznaniAktivit(D);
   
    %  :::::::::::::::::::::::::::::::::::::::::::::::
    
    Result(file)=classADL;
    disp([ 'File : ' num2str(file) ' --- ' FILES{file} ' ---  class '  num2str(classADL) ])
end
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Pro kazdy soubor


%_________________
%  4  ::::::::::::
%------------------------------------------------------------------
%  Pocitani skore z promennych TARGET (reference) a RESULT (vyse vysledky)
%------------------------------------------------------------------
SCORE = F1skore(Target,Result)    % vypocita skore



