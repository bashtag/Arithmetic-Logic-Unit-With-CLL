# ALU 32-Bit Structural Logic Design with Quartus 20.1

This repository contains the VHDL source files for a 32-bit Arithmetic Logic Unit (ALU) designed using Quartus 20.1. The ALU is realized through a structural design approach, assembling basic logic gates without the use of predefined modules for operations like modulus. The design incorporates a 4-bit carry lookahead adder (CLA) to create 1-bit ALU slices and a 16-bit CLA to build the 4-bit CLA units. Overflow and "less than" conditions are determined by examining the most significant bit.

## Project Structure

- **alu_1_bit.v**: 1-bit ALU module, the fundamental building block.
- **alu_32_bit.v**: The top-level module that combines 1-bit ALUs using 4-bit and 16-bit CLAs.
- **carry_lookahead**: Modules implementing carry lookahead logic for efficient addition.
- **custom_gates**: Definitions of custom logic gates used within the ALU.
- **mod**: The module that performs the modulus operation using a combination of FSM, data flow, and behavioral design methodologies.
- **multiplexers**: Modules acting as multiplexers to manage ALU inputs and outputs.
- **testbench_alu_32.v**: The main testbench for simulating the 32-bit ALU's functionality.

Backup files with the `.bak` extension are available for each VHDL file.

## Simulation

The ALU's functionality can be verified through simulation using ModelSim Altera or similar tools.

### Steps for Simulation:

1. Launch ModelSim and set the working directory to the project's root.
2. Compile `testbench_alu_32.v` along with all the modules it depends on.
3. Run the simulation and monitor the results for correctness.

## Compilation and Viewing in Quartus

Apart from simulation, the VHDL code can be compiled in Quartus for analysis or for loading onto FPGA hardware.

### Steps for Compilation:

1. In Quartus, configure `testbench_alu_32` as the top-level module in project settings.
2. Compile the project to resolve any synthesis issues.
3. Optionally, load the compiled design onto an FPGA board for real-world testing.
4. Use the RTL viewer in Quartus to examine the structural design of the ALU for educational or debugging purposes.

## Contributing

Contributions to improve or enhance the ALU design are welcome. Please fork the repository and submit your pull requests for review.

## License

The code within this repository is provided as open-source under the MIT License. Refer to the LICENSE file for the full terms and conditions.
