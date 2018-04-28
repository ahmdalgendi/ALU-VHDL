-------------------------------------------------------------------------------
--
-- Title       : ALU
-- Design      : ALU_Design
-- Author      : ahmed2008_2020@yahoo.com
-- Company     : addda
--
-------------------------------------------------------------------------------
--
-- File        : ALU.vhd
-- Generated   : Fri Apr 27 16:05:29 2018
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description :   ALU- Design for DR/ Mahnoud ELshwemy
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
-----------------------------------------------
---------- ALU 8-bit VHDL ---------------------
-----------------------------------------------
entity ALU is
  
    Port (
    A, B     : in  STD_LOGIC_VECTOR(7 downto 0);  -- 2 inputs 8-bit
    ALU_Sel  : in  STD_LOGIC_VECTOR(3 downto 0);  -- 1 input 4-bit for selecting function
    ALU_Out   : out  STD_LOGIC_VECTOR(7 downto 0)-- 1 output 8-bit 
    
    ); 
   
    
end ALU; 	          

architecture Behavioral of ALU is

signal ALU_Result : std_logic_vector (7 downto 0);

begin
   process(A,B,ALU_Sel)
 begin
  case(ALU_Sel) is
  when "0000" => -- Addition
   ALU_Result <= A + B ; 
  when "0001" => -- Subtraction
   ALU_Result <= A - B ;
  when "0010" => -- Logical shift left
   ALU_Result <= std_logic_vector(unsigned(A) sll 1);
  when "0011" => -- Logical shift right
   ALU_Result <= std_logic_vector(unsigned(A) srl 1);
  when "0100" => --  Rotate left
   ALU_Result <= std_logic_vector(unsigned(A) rol 1);
  when "0101" => -- Rotate right
   ALU_Result <= std_logic_vector(unsigned(A) ror 1);
  when "0110" => -- Increment
   ALU_Result <= A + '1' ;
  when "0111" => -- decrement
   ALU_Result <= A - '1' ;
  when "1000" => -- Zero
   ALU_Result <= "00000000" ;
  when others => ALU_Result <= ALU_Result ; 
  end case;
 end process;
 ALU_Out <= ALU_Result; -- ALU out
 
end Behavioral;