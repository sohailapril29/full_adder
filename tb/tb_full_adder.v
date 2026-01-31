// tb_full_adder.v


module tb_full_adder;

    reg a, b, cin;
    wire sum, cout;

    // Instantiate the full adder
    full_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
	initial begin
		$fsdbDumpfile("tb_full_adder.fsdb");
		$fsdbDumpvars(0,tb_full_adder);
	end

    initial begin
        $display("A B Cin | Sum Cout");
        $display("------------------");

        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 0; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;

        $finish;
    end

    initial begin
        $monitor(" %b %b  %b  |  %b    %b", a, b, cin, sum, cout);
    end

endmodule

