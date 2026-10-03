class first;
 int data;
endclass

module tb();

first f1;
first f2;

initial begin
f1 = new();  /// constructor to make class usable
///////////
f1.data = 32; /// processing 
///////////
f2 = new f1; /// copying data from f1 to f2

$display("the vlaue of data : %0d",f2.data); /// processing

f2.data = 64;
$display("the vlaue of data : %0d",f1.data);

end

endmodule
