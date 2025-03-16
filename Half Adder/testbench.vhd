library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity testbench is
end testbench; 
architecture tb of testbench is
component exp is
port(
  a: in std_logic_vector(0 to 1);
  s: out std_logic;
  c: out std_logic);
end component;
signal a: std_logic_vector(0 to 1);
signal s: std_logic;
signal c: std_logic;
begin
  DUT: exp port map(a, s, c);
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
