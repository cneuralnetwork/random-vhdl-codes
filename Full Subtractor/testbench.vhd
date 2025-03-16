library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity testbench is
end testbench; 
architecture tb of testbench is
component exp is
port(
  a: in std_logic_vector(0 to 2);
  d: out std_logic;
  b: out std_logic);
end component;
signal a: std_logic_vector(0 to 2);
signal d: std_logic;
signal b: std_logic;
begin
  DUT: exp port map(a, d, b);
  process
  begin
    a <= "000";
    wait for 1 ns;
    a <= "001";
    wait for 1 ns;
    a <= "010";
    wait for 1ns;
    a <= "011";
    wait for 1ns;
    a <= "100";
    wait for 1ns;
    a <= "101";
    wait for 1ns;
    a <= "110";
    wait for 1ns;
    a <= "111";
    wait for 1ns;
    a <= "000";
--     wait for 1ns;
	wait for 1ns;
	wait;
    
  end process;
end tb;
