`timescale 1ns / 1ps

class generator;

int data = 16;
mailbox mbx;

function new(mailbox mbx);
    this.mbx = mbx;
endfunction

task run();
mbx.put(data);
$display("[GEN] : DATA SENT : %0d",data);
endtask

endclass

class driver;

int datac = 0;
mailbox mbx;

function new(mailbox mbx);
    this.mbx = mbx;
endfunction

task run();
mbx.get(datac);
$display("[DRV] : DATA RCVD : %0d",datac);
endtask

endclass

module tb();

generator gen;
driver drv;
mailbox mbx;

initial begin
mbx = new();

gen = new(mbx);
drv = new(mbx);
/*
gen.mbx = mbx;
drv.mbx = mbx;
*/
gen.run();
drv.run();
end

endmodule
