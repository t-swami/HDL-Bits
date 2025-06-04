
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire [1:0]w;
    
    and (w[0],a,b);
    and (w[1],c,d);
    or(out,w[0],w[1]);
    assign out_n = ~out;

endmodule
