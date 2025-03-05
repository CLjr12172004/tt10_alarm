-------------------------------------------------------------------------------
--
-- Title       : SENSOR
-- Design      : SENSOR
-- Author      : JUANGH
-- Company     : ITST
--
-------------------------------------------------------------------------------
--
-- File        : c:/My_Designs/SENSORP/SENSOR/src/SENSOR.vhd
-- Generated   : Sun Feb 23 14:16:42 2025
-- From        : Interface description file
-- By          : ItfToHdl ver. 1.0
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--    and may be overwritten
--{entity {SENSOR} architecture {SENSOR}}

library IEEE;
use IEEE.std_logic_1164.all;

entity SENSOR is
	port(
		A : in STD_LOGIC;
		B : in STD_LOGIC;
		C : in STD_LOGIC;
		D : in STD_LOGIC;
		Y : out STD_LOGIC
	);
end SENSOR;

--}} End of automatically maintained section



-- Enter your statements here --
architecture Behavioral of SENSOR is
begin
    process(A, B, C, D)
    begin
        if (D = '1') and (A = '1' or B = '1' or C = '1') then
            Y <= '1';
        else
            Y <= '0';
        end if;
    end process;
end Behavioral;

