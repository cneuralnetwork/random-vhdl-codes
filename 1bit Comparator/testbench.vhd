library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity testbench is
end testbench; 
architecture tb of testbench is
component exp is
port(
  a: in std_logic_vector(0 to 1);
  c: out std_logic;
  d: out std_logic;
  e: out std_logic);
end component;
signal a: std_logic_vector(0 to 1);
signal c: std_logic;
signal d: std_logic;
signal e: std_logic;
begin
  DUT: exp port map(a, c, d, e);
  process
  begin
    a <= "00";
    wait for 1 ns;
    a <= "01";
    wait for 1 ns;
    a <= "10";
    wait for 1ns;
    a <= "11";
    wait for 1ns;
	wait;
    
  end process;
end tb;
