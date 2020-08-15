function [ArchivePop,ArchiveVal] = UpdateArchive(Population,FunctionValue,epsilon)
% Update the archive

%--------------------------------------------------------------------------
% The copyright of the PlatEMO belongs to the BIMK Group. You are free to
% use the PlatEMO for research purposes. All publications which use this
% platform or any code in the platform should acknowledge the use of
% "PlatEMO" and reference "Ye Tian, Ran Cheng, Xingyi Zhang, and Yaochu
% Jin, PlatEMO: A MATLAB Platform for Evolutionary Multi-Objective
% Optimization, 2016".
%--------------------------------------------------------------------------

% Copyright (c) 2016-2017 BIMK Group
    
    GridObj    = floor(FunctionValue/epsilon);
    index      = (NDSort(GridObj,1)==1);
    ArchivePop = Population(index,:);
    ArchiveVal = FunctionValue(index,:);
end