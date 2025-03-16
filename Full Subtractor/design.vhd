library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity exp is
port(
  a: in std_logic_vector(0 to 2);
  d: out std_logic;
  b: out std_logic);
end exp;
architecture rtl of exp is
begin
  process(a) is
  begin
    d <= a(0) xor a(1) xor a(2);
    b <= ((not a(0)) and a(1)) or ((not a(0)) and a(2)) or (a(1) and a(2));
  end process;
end rtl;
