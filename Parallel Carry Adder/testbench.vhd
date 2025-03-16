library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity testbench is
end testbench; 
architecture tb of testbench is
component exp is
port(
  a: in std_logic_vector(0 to 3);
  b: in std_logic_vector(0 to 3);
  s1: out std_logic;
  s2: out std_logic;
  s3: out std_logic;
  s4: out std_logic;
  c1: out std_logic;
  c2: out std_logic;
  c3: out std_logic;
  c4: out std_logic);
end component;
signal a: std_logic_vector(0 to 3);
signal b: std_logic_vector(0 to 3);
signal s1: std_logic;
signal   s2: std_logic;
signal   s3:  std_logic;
signal   s4: std_logic;
signal   c1: std_logic;
signal   c2:  std_logic;
signal   c3:  std_logic;
signal   c4: std_logic;
begin
  DUT: exp port map(a,b,s1,s2,s3,s4,c1,c2,c3,c4);
  process
  begin
a<="0011";
b<="0101";
wait for 4ns;
  end process;
end tb;
