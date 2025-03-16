library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity exp is
port(
  a: in std_logic_vector(0 to 1);
  s: out std_logic;
  c: out std_logic);
end exp;
architecture rtl of exp is
begin
  process(a) is
  begin
    s <= a(0) xor a(1);
    c <= a(0) and a(1);
  end process;
end rtl;
