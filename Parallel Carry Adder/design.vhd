library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity exp is
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
end exp;
architecture rtl of exp is
begin
  process(a,b) is
  begin
	s1 <= a(3) xor b(3) xor '0';
    	c1 <= (a(3) and b(3)) or (b(3) and '0') or ('0' or a(3));
	s2<= (a(2) xor b(2) xor c1);
	c2<=(a(2) and b(2)) or (b(2) and c1) or (c1 or a(2));
	s3<= (a(1) xor b(1) xor c2);
	c3<=(a(1) and b(1)) or (b(1) and c2) or (c2 or a(1));
s4<= (a(0) xor b(0) xor c3);
	c4<=(a(0) and b(0)) or (b(0) and c3) or (c3 or a(0));
  end process;
end rtl;
