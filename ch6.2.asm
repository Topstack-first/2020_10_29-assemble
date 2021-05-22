;David Pham
.ORIG x3000
LEA R2, xFF; Start the data at x3100
LDR R3, R2, x0; Store value from address
Loop:
NOT R4, R3; 
ADD R4, R4, #1; find 2's complement of 5
ADD R4, R4, #5;
BRz Found; if result is 0, go to Found
LDR R3, R2, x1; Store value from present address
NOT R4, R2;
ADD R4, R4, #1; Find 2's complement
ADD R4, R4, x310A; check if last memory is crossed
BRz End; if yes, end the program
BR Loop;

Found:
ADD R5, R5, #1;
End:
.END; end of the program