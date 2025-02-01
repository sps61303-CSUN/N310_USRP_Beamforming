function [C64Matrix] = ReadComplex64(FileName,VectorLength)
%ReadCF64 takes a vector created by GNU Radio in complex float 64 format
%and outputs a matrix with row vectors containing the data of each
%element.
%Example: X_t = ReadComplex64("RF.complex64",4)

%Set default vector length to 1 if none is specified
if nargin < 2
    VectorLength = 1;
end

%Open and read from file
File = fopen(FileName,'r');
F32 = fread(File,'float32');
fclose(File);

%Convert pairs of floating points into complex numbers
C64 = [1 1j]*reshape(F32,2,[]);

%Reshape the data into the specified column length
C64Matrix = reshape(C64,VectorLength,[]);
end