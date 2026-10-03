class first;  // parent class

int data = 4;

virtual function void display();
$display("First : the value of data : %0d",data);
endfunction

endclass

class second extends first;

int temp = 8;

function void add();
$display("second : the value of temp after process : %0d",temp+4);
endfunction

function void display();
$display("Second : the value of data : %0d",data);
endfunction

endclass

module tb();

first f;
second s;

initial begin
f = new();
s = new();

f = s;

f.display();
end

endmodule
