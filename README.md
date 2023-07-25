# Priority Encoder GitHub Repository

This GitHub repository contains an implementation of a priority encoder circuit with a priority function. A priority encoder is a digital circuit that takes multiple inputs and selects the input with the highest priority when more than one input is active simultaneously.

## Description

A priority encoder operates such that if two or more inputs have a value of 1 at the same time, the input with the highest priority takes precedence. The encoder produces two output lines, usually denoted as x and y, according to the priority rules specified in the truth table.

Additionally, the priority encoder has a third output line, V, which serves as a one-bit indicator. When one or more inputs are equal to 1, V is set to 1. However, if all inputs are 0, V is set to 0, indicating that there is no valid input.

The simplified Boolean expressions for the priority encoder are derived from the maps used for simplifying outputs x and y. These expressions are generated from the truth table that specifies the priority behavior.

![Image of the truth table and priority behavior](https://www.electronicshub.org/wp-content/uploads/2015/06/4-bit-Priority-Encoder-Truth-Table.jpg)

## Implementation

In this repository, you will find the Verilog code (`priority_encoder.v`) implementing the priority encoder circuit. Additionally, a testbench (`priority_encoder_tb.v`) is provided to validate the functionality of the priority encoder.

### Repository Contents

- `priority_encoder.v`: Verilog code implementing the priority encoder circuit.
- `priority_encoder_tb.v`: Verilog testbench code for validating the functionality of the priority encoder.

