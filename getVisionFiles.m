function getVisionFiles

visver = ver('vision');
if isempty(visver)
    error('Orthocam requires the MATLAB Computer Vision toolbox.');
end

FILES = {
    {'cameraParameters.m'}
    {'stereoParameters.m'}
    {'+vision','+internal','+calibration','+tool','Session.m'}
    };
numFiles = numel(FILES);
visroot = fullfile(matlabroot,'toolbox','vision','vision');
visroot2 = fullfile(fileparts(mfilename('fullpath')),'vision');
[succ,msg,~] = mkdir(visroot2);
if ~succ
    error('Failed to make directory %s: %s',visroot2,msg);
end

for i=1:numFiles    
    fpath = FILES{i};
    src = fullfile(visroot,fpath{:});
    dst = fullfile(visroot2,fpath{:});
    tfmkdir = numel(fpath)>1;
    fprintf(1,'Copying %s\n',src);
    fprintf(1,' ... to %s\n',dst);
    if tfmkdir
        dstdir = fullfile(visroot2,fpath{1:end-1});
        fprintf(1,'Making dir\n');
        fprintf(1,' ... %s\n',dstdir);
        [succ,msg,~] = mkdir(dstdir);
        if ~succ
            error('Failed to make directory: %s',msg);
        end
    end
    [succ,msg,~] = copyfile(src,dst);
    if ~succ
        error('Failed to copy file: %s',msg);
    end
end


