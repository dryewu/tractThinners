clear all; clc; 

folder = fileparts(which(mfilename));

finput = fullfile(folder,'example','ArcuateFasciculus.tck');
foutput = fullfile(folder,'example','ArcuateFasciculus_thinned.tck');

% with default
tractThinners(finput,foutput);

% more options
tractThinners(finput,foutput,minlength=5,maxlength=150,threshold=0,order=4,numcluster=4);
