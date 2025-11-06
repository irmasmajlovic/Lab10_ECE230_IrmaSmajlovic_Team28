module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
    );
    
    wire store_select0;
    wire store_select1;
    wire store_select2;
    wire store_select3;
    
    wire [7:0] data_pass0;
    wire [7:0] data_pass1;
    wire [7:0] data_pass2;
    wire [7:0] data_pass3;
    
    wire [7:0] mux_pass0;
    wire [7:0] mux_pass1;
    wire [7:0] mux_pass2;
    wire [7:0] mux_pass3;
    
    wire [7:0] mux_pass [3:0];
    assign memory = mux_pass[addr];
    
    store_demux sdminst_1(
    .store(store),
    .sel(addr),
    .A(store_select0),
    .B(store_select1),
    .C(store_select2),
    .D(store_select3)
    
    );
    
    datademux ddminst_1 (
    .data(data),
    .sel(addr),
    .A(data_pass0),
    .B(data_pass1),
    .C(data_pass2),
    .D(data_pass3)
    );
    
    byte_memory bminst_0 (
    .data(data_pass0),
    .store(store_select0),
    .memory(mux_pass[0])
    );  
    
    byte_memory bminst_1 (
    .data(data_pass1),
    .store(store_select1),
    .memory(mux_pass[1])
    );  
    
    byte_memory bminst_2 (
    .data(data_pass2),
    .store(store_select2),
    .memory(mux_pass[2])
    );  
   
    byte_memory bminst_3 (
    .data(data_pass3),
    .store(store_select3),
    .memory(mux_pass[3])
    );
endmodule
