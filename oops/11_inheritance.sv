class first;  /// parent class

int data = 32;

function void display();
$display("the value of data : %0d",data);
endfunction

endclass

class second extends first;   /// child class

int temp = 16;

function void add();
$display("the value of temp after process : %0d",temp+4);
endfunction

endclass

module tb();

second s;

initial begin
s = new();
$display("the value of data : %0d",s.data);
s.display();
s.add();
$display("the value of temp : %0d",s.temp);
end

endmodule
