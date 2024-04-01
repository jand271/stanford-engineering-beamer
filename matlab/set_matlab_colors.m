
cardinalred = [140, 21, 21]/255;
cardinalredlight = hex2dec(['B8';'3A';'4B'])'/255;
cardinalreddark = hex2dec(['82';'00';'00'])'/255;

processblack = [46, 45, 41]/255;

coolgrey = [83, 86, 90]/255;

paloalto = [23, 94, 84]/255;
paloaltolight = hex2dec(['2D';'71';'6F'])'/255;
paloaltodark = hex2dec(['01';'42';'40'])'/255;

paloverde = [39, 153, 137]/255;
paloverdelight = hex2dec(['59';'B3';'A9'])'/255;
paloverdedark = hex2dec(['01';'7E';'7C'])'/255;

olive = [143, 153, 62]/255;
olivelight = hex2dec(['A6';'B1';'68'])'/255;
olivedark = hex2dec(['7A';'86';'3B'])'/255;

bay = [111, 162, 135]/255;
baylight = hex2dec(['8A';'B8';'A7'])'/255;
baydark = hex2dec(['41';'78';'65'])'/255;

sky = [66, 152, 181]/255;
skylight = hex2dec(['67';'AF';'D2'])'/255;
skydark = hex2dec(['01';'68';'95'])'/255;

lagunita = [0, 124, 146]/255;
lagunitalight = hex2dec(['00';'9A';'B4'])'/255;
lagunitadark = hex2dec(['00';'6B';'81'])'/255;

poppy = [233, 131, 0]/255;
poppylight = hex2dec(['F9';'A4';'4A'])'/255;
poppydark = hex2dec(['D1';'66';'0F'])'/255;

spirited = [224, 79, 57]/255;
spiritedlight = hex2dec(['F4';'79';'5B'])'/255;
spiriteddark = hex2dec(['C7';'46';'32'])'/255;

illuminating = [254, 221, 92]/255;
illuminatinglight = hex2dec(['FF';'E7';'81'])'/255;
illuminatingdark = hex2dec(['FE';'C5';'1D'])'/255;

plum = [98, 0, 89]/255;
plumlight = hex2dec(['73';'46';'75'])'/255;
plumdark = hex2dec(['35';'0D';'36'])'/255;

brick = [101, 28, 50]/255;
bricklight = hex2dec(['7F';'2D';'48'])'/255;
brickdark = hex2dec(['42';'08';'1B'])'/255;

archway = [93, 75, 60]/255;
archwaylight = hex2dec(['76';'62';'53'])'/255;
archwaydark = hex2dec(['2F';'24';'24'])'/255;

stone = [127, 119, 118]/255;
stonelight = hex2dec(['D4';'D1';'D1'])'/255;
stonedark = hex2dec(['54';'49';'48'])'/255;

fog = [218, 215, 203]/255;
foglight = hex2dec(['F4';'F4';'F4'])'/255;
fogdark = hex2dec(['B6';'B1';'A9'])'/255;

set(groot, 'defaultAxesColorOrder', [ ...
    skydark;
    spiriteddark;
    olivedark;
    illuminatingdark;
    plum;
    poppy]...
    );
