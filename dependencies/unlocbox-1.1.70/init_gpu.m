function init_gpu()
%
%   Url: http://unlocbox.sourceforge.net/doc/init_gpu.php

% Copyright (C) 2012 LTS2-EPFL, by Nathanael Perraudin, Gilles Puy,
% David Shuman, Pierre Vandergheynst.
% This file is part of UnLocBoX version 1.1.70
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.

headerName = 'MatlabApi.h';
dllName = 'gpuImgLib';
if (libisloaded(dllName))
    unloadlibrary(dllName)
end

loadlibrary( dllName,  headerName);
%libfunctions(dllName, '-full');

% Call a CUDA dummy function to "warm-up" the GPU.
calllib('gpuImgLib', 'WarmupGPU',  1);
