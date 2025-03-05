<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works
The VHDL code describes a combinational logic circuit that implements the function  Y = D AND (A OR B OR C), where D acts as a master enabler and A, B, C are sensor inputs,
Inside this folder the image of the truth table is attached.

![Tabla de Verdad](https://github.com/user-attachments/assets/97fd5d14-5d4d-4d5a-b937-07370bfbdb13)
We have four inputs and one output:
  Inputs: A, B, C, D 
  Output: Y
Operation logic:
Output Y is activated (Y <= '1') only if, D = '1' (D acts as system enabler) and otherwise, Y remains at '0'.
Its behavior is the following:
  First behavior:
    If D = '1:
      If A = '1', B = '1', o C = '1' (or any combination of them), Y = '1'.
      If A = '0', B = '0', y C = '0', Y = '0'.
  Second behavior:
    If D = '0:
    Y will always be '0', regardless of the values ​​of A, B or C.

## How to test
library IEEE;: This line indicates that the IEEE library, which contains standard definitions for digital circuit design, is to be used.
use IEEE.std_logic_1164.all; This line imports the std_logic_1164 package from the IEEE library, which defines standard data types such as STD_LOGIC and STD_LOGIC_VECTOR, among others.
entity SENSOR is: Defines an entity called SENSOR. An entity in VHDL is similar to a “black box” that describes the inputs and outputs of a circuit.

port(...): Within the entity, the inputs and outputs of the circuit are defined.
  A, B, C, D : in STD_LOGIC;: These are the inputs of the circuit, each of type STD_LOGIC, which can take values such as '0', '1', 'Z' (high impedance), among others.
  Y : out STD_LOGIC;: This is the output of the circuit, also of type STD_LOGIC.

architecture Behavioral of SENSOR is: It defines the architecture of the SENSOR entity. The architecture describes the internal behavior of the circuit.

process(A, B, C, D): A process in VHDL is a section of code that is executed when any of the signals in the sensitivity list (A, B, C, D) changes. In this case, the process is triggered when any of the inputs A, B, C or D changes.

begin: Indicates the start of the code describing the behavior of the circuit.

if (D = '1') and (A = '1' or B = '1' or C = '1') then: This is a condition that is evaluated within the process.

D = '1': Checks if input D is '1'.

A = '1' or B = '1' or C = '1': Checks if at least one of the inputs A, B or C is '1'.
If both conditions are true, then the output Y is set to '1'.
![Salida-0](https://github.com/user-attachments/assets/18a945f7-a620-41ae-8a49-5b83522bb58a)
![Salida-1](https://github.com/user-attachments/assets/d0e76718-e97e-419c-9c0c-2c325d387d4b)

else: If the condition is not met, the output Y is set to '0'.
end if;: Ends the conditional if structure.
end process;: End the process.
end Behavioral;: Finish the architecture.
## External hardware
No external software required
