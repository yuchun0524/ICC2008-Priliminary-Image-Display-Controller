library verilog;
use verilog.vl_types.all;
entity lcd_ctrl is
    generic(
        load            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        \in\            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        fit             : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        right           : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        left            : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        up              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        down            : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        datain          : in     vl_logic_vector(7 downto 0);
        cmd             : in     vl_logic_vector(2 downto 0);
        cmd_valid       : in     vl_logic;
        dataout         : out    vl_logic_vector(7 downto 0);
        output_valid    : out    vl_logic;
        busy            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of load : constant is 1;
    attribute mti_svvh_generic_type of \in\ : constant is 1;
    attribute mti_svvh_generic_type of fit : constant is 1;
    attribute mti_svvh_generic_type of right : constant is 1;
    attribute mti_svvh_generic_type of left : constant is 1;
    attribute mti_svvh_generic_type of up : constant is 1;
    attribute mti_svvh_generic_type of down : constant is 1;
end lcd_ctrl;
