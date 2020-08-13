----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Christina Alphonse
-- 
-- Create Date: 08/12/2020 10:01:48 PM
-- Design Name: 
-- Module Name: CalcOnes - Behavioral
-- Project Name: 
-- Target Devices: Nexys A7-100T
-- Tool Versions: Xilinx Vivado 2019.2
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CalcOnes is
    Port ( A : in Unsigned (7 downto 0);
           C : out Unsigned (2 downto 0));
end CalcOnes;

architecture Behavioral of CalcOnes is
    Function CalcOnesFunction (x : Unsigned(7 downto 0)) return Unsigned is
                variable y : Unsigned(2 downto 0);
        begin
        y :="000";
                for i in  0 to 7 loop
                        if (x(i) = '1') then
                                y := y + "001";
                        end if;
                end loop;
              return y;
    end CalcOnesFunction;
begin
    C <= CalcOnesFunction(A);
end Behavioral;
