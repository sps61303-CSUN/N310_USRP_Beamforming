function WriteComplex64(C64Matrix,FileName)
%WriteF32Vector Writes each row of a matrix into the specified file.
%The file format is equivalent to the complex float 64 vector in GNU radio
%Example: WriteComplex64(X_t, "RF.complex64")

%Reshape the Matrix into one row
C64 = reshape(C64Matrix,1,[]);

%Split the real and imaginary into two rows
F32Split = [real(C64);imag(C64)];

%Flatten the Matrix back into one row
F32 = reshape(F32Split,1,[]);

File = fopen(FileName,'w');
fwrite(File,F32,'float32');
fclose(File);
end