library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity exp is
port(
  a: in std_logic_vector(0 to 1);
  c: out std_logic;
  d: out std_logic;
  e: out std_logic);
end exp;
architecture rtl of exp is
begin
  process(a) is
  begin
    c <= (not a(0)) and a(1);
    d <= not(((not a(0)) and a(1)) or (a(0) and (not a(1))));
    e <= a(0) and (not a(1));
  end process;
end rtl;
