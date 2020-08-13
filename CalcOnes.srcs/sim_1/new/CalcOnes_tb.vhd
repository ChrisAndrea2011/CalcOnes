----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/12/2020 10:32:48 PM
-- Design Name: 
-- Module Name: CalcOnes_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

entity CalcOnes_tb is
--  Port ( );
end CalcOnes_tb;

architecture Behavioral of CalcOnes_tb is
Component CalcOnes is
    Port ( A : in Unsigned (7 downto 0);
           C : out Unsigned (2 downto 0));
end Component;
Signal A :  Unsigned (7 downto 0);
Signal C :  Unsigned (2 downto 0);
begin
    uut: CalcOnes port map (A,C);
        process 
            begin 
                    wait for 50ns;
                A <= "10010110";
                    wait for 50ns;
                A <= "11111100";
                    wait for 50ns;
                A <= "11101100";
                    wait for 50ns;
        end process;
end Behavioral;
