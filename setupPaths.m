function setupPaths
root = fileparts(mfilename('fullpath'));
p = {root; fullfile(root,'vision')};
fprintf(1,'Adding paths:\n');
cellfun(@(x)fprintf(1,'%s\n',x),p);
addpath(p{:});
