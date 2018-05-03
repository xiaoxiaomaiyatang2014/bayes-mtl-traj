function sim_interceptCoupling_paramNoise_split

addpath '../utils';
addpath '../blr';


% tasks                                	= [20 50 100 150 200 250 300]; 
% noises                                  = [0 1 2 4 8];
% numRngs                                 = 30;
loopVars.tasks                       	= 200; %[20 50 100 150 200 250 300]; 
loopVars.observationNoises           	= [1 2 4 8];
loopVars.biomarkerNoises            	= 1;
loopVars.numRngs                    	= 50;

%saveFilename                            = '~/Documents/MATLAB/sim_interceptCoupling_200_varyObsNoise.mat';
saveFilename = 'C:\Users\test\Dropbox\neuro\out_blr_sim\sim_interceptCoupling_200_varyObsNoise.mat';
loopParams(saveFilename, loopVars, @generatePredictionStructure_intercepts, 'intercept');