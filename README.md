_# Traffic Light Controller Using SystemVerilog and Vivado

## Overview
This project implements a finite state machine (FSM) for traffic light control using SystemVerilog and AMD Xilinx Vivado.

## Objectives
- Design a sequential digital system using an FSM.
- Implement state transitions based on clock, reset, and input conditions.
- Understand state encoding and output logic.
- Practice RTL design and simulation using Vivado.

## Tools Used
- AMD Xilinx Vivado
- SystemVerilog
- RTL simulation

## Design Details
- Design type: Finite State Machine (FSM)
- Number of states: 4
- Inputs: Clock, reset, and control inputs
- Outputs: 4-bit output vector
- Reset: Active-high asynchronous reset (verify against the final source code)

## Verification
The design can be verified using a SystemVerilog testbench and Vivado simulation. Add simulation screenshots and describe the test cases after verifying the design.

## Project Structure
- `traffic_light.sv` — RTL design
- `traffic_light_tb.sv` — Testbench, if included
- `images/` — Simulation screenshots

## Learning Outcomes
- FSM design and state transitions
- Sequential logic using SystemVerilog
- RTL simulation and debugging in Vivado

## Future Improvements
- Add a complete testbench with multiple input scenarios.
- Verify all state transitions and reset behavior.
- Extend the design with pedestrian crossing control or a configurable timing mechanism.

## Author
Electronics and Communication Engineering student
_
