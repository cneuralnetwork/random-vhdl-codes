library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity testbench is
end testbench; 
architecture tb of testbench is
component exp is
port(
  sel: in std_logic_vector(0 to 2);
  i1: in std_ulogic_vector(0 to 3);
  i2: in std_ulogic_vector(0 to 3);
  ot: out std_logic_vector(0 to 3));
end component;
signal sel: std_logic_vector(0 to 2);
signal i1: std_ulogic_vector(0 to 3);
signal i2: std_ulogic_vector(0 to 3);
signal ot: std_logic_vector(0 to 3);
begin
  DUT: exp port map(sel,i1,i2,ot);
  process
  begin
    i1 <= "0101";
    i2 <= "0011";
	sel <= "000";
    wait for 1 ns;
    sel <= "001";
    wait for 1 ns;
    sel <= "010";
    wait for 1ns;
    sel <= "011";
    wait for 1ns;
    sel <= "100";
    wait for 1ns;
    sel <= "101";
    wait for 1ns;
    sel <= "110";
    wait for 1ns;
    sel <= "111";
    wait for 1ns;
    sel <= "000";
    wait;
    
  end process;
end tb;
