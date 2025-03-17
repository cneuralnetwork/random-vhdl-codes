library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity exp is
port(
  sel: in std_logic_vector(0 to 2);
  i1: in std_ulogic_vector(0 to 3);
  i2: in std_ulogic_vector(0 to 3);
  ot: out std_logic_vector(0 to 3));
end exp;
architecture rtl of exp is
begin
  process(sel, i1, i2) is
  begin
    case sel is
      when "000" =>
        ot <= std_logic_vector(unsigned(i1) + unsigned(i2));
      when "001" =>
        ot <= std_logic_vector(unsigned(i1) - unsigned(i2));
      when "010" =>
        ot <= std_logic_vector(unsigned(i1) - 1);
      when "011" =>
        ot <= std_logic_vector(unsigned(i1) + 1);
      when "100" =>
        ot <= std_logic_vector(i1 and i2);
      when "101" =>
        ot <= std_logic_vector(i1 or i2);
      when "110" =>
        ot <= std_logic_vector(not i1);
      when "111" =>
        ot <= std_logic_vector(i1 xor i2);
      when others =>
        NULL;
    end case;
  end process;
end rtl;
