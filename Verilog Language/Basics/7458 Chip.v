module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire [3:0]w;
    and (w[0],p2a,p2b);
    and(w[1],p2c,p2d);
    
    or(p2y,w[0],w[1]);
    
    and(w[2],p1c,p1b,p1a);
    and(w[3],p1e,p1d,p1f);
    
    or(p1y,w[2],w[3]);
    

endmodule
