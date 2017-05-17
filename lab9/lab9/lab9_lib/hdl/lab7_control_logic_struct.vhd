-- VHDL Entity lab9_lib.lab7_control_logic.symbol
--
-- Created:
--          by - xli146.ews (eceb-3070-06.ews.illinois.edu)
--          at - 16:51:36 03/17/15
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY lab7_control_logic IS
   PORT( 
      S0 : IN     std_logic;
      S1 : IN     std_logic;
      S2 : IN     std_logic;
      A  : OUT    std_logic;
      P  : OUT    std_logic
   );

-- Declarations

END lab7_control_logic ;

--
-- VHDL Architecture lab9_lib.lab7_control_logic.struct
--
-- Created:
--          by - xli146.ews (eceb-3070-06.ews.illinois.edu)
--          at - 16:51:36 03/17/15
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ARCHITECTURE struct OF lab7_control_logic IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL din1  : std_logic;
   SIGNAL din2  : std_logic;
   SIGNAL din3  : std_logic;
   SIGNAL din4  : std_logic;
   SIGNAL dout  : std_logic;
   SIGNAL dout1 : std_logic;
   SIGNAL dout2 : std_logic;



BEGIN

   -- ModuleWare code(v1.9) for instance 'U_4' of 'inv'
   dout <= NOT(S2);

   -- ModuleWare code(v1.9) for instance 'U_5' of 'inv'
   din1 <= NOT(S1);

   -- ModuleWare code(v1.9) for instance 'U_6' of 'inv'
   din2 <= NOT(S0);

   -- ModuleWare code(v1.9) for instance 'U_0' of 'nand'
   dout1 <= NOT(S2 AND din1);

   -- ModuleWare code(v1.9) for instance 'U_1' of 'nand'
   din3 <= NOT(dout AND din2);

   -- ModuleWare code(v1.9) for instance 'U_2' of 'nand'
   dout2 <= NOT(S2 AND S0);

   -- ModuleWare code(v1.9) for instance 'U_3' of 'nand'
   din4 <= NOT(dout AND S1);

   -- ModuleWare code(v1.9) for instance 'U_7' of 'nand'
   A <= NOT(dout1 AND din3);

   -- ModuleWare code(v1.9) for instance 'U_8' of 'nand'
   P <= NOT(dout2 AND din4);

   -- Instance port mappings.

END struct;
