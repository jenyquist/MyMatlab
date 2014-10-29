%% Initialize variables.
filename = '/Users/nyq/Box Sync/BoxSharePaul/PAUL_Research/MowingTheGrass/BerksDense.asc';
delimiter = '\t';
formatSpec = '%f%f%f%[^\n\r]';

%% Open the text file and read in data.
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN, 'ReturnOnError', false);
fclose(fileID);

%% Allocate imported array to column variable names
easting = dataArray{:, 1};
northing = dataArray{:, 2};
elevation = dataArray{:, 3};

%% Clear temporary variables
clearvars filename delimiter formatSpec fileID dataArray ans;