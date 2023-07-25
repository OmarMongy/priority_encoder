# Prlodty Encoder GitHub Repository

This repository contains the implementation of a priority encoder circuit with a priority function. The priority encoder takes multiple inputs and selects the input with the highest priority when more than one input is active simultaneously.

## Description
A priority encoder is an encoder circuit that includes the priority function. The operation of the priority encoder is such that if two or more inputs have a value of 1 at the same time, the input with the highest priority will take precedence. The truth table of a four-input priority encoder is given in Table 4.8.

In addition to the two output lines (x and y) mentioned in the truth table, the circuit has a third output designated as V. V is a one-bit indicator that is set to 1 when one or more inputs are equal to 1. If all inputs are 0, there is no valid input, and V is equal to 0. The other two output lines are undefined when V equals 0 and are represented as don't-care conditions.

Note that while X's in the output columns represent don't-care conditions, the X's in the input columns are useful for representing the truth table in condensed form, instead of listing all 16 minterms of four variables. The X in the truth table indicates either 1 or 0. For example, X100 represents the minterms 0100 and 1100.

According to Table 4.8, the higher the subscript number, the higher the priority of the input. Input @ has the highest priority, so, regardless of the values of the other inputs, when this input is 1, output x and y both become 1 (binary 3). Input 4 has the next priority level. The output is 10 if 4 = 1, provided that @ = 0, regardless of the values of the other two lower priority inputs. The output for Dl is generated only if higher priority inputs are 0, and so on down the priority levels.

The simplified Boolean expressions for the priority encoder are derived from the maps for simplifying outputs x and y, as shown in Fig. 4.22. The minterms for the two functions are derived from Table 4.8. Although the table has only five rows, when each X in a row is replaced first by 0 and then by 1, we obtain all 16 possible input combinations.

For example, the fourth row in the table, with inputs XX 10, represents the four minterms 0010, 0110, 1010, and 1110. The priority encoder is implemented in Fig. 4.23 according to the following Boolean functions:


## Implementation
The implementation of the priority encoder circuit, along with the simplified Boolean expressions and maps for outputs x and y, can be found in the code files.

### Contents
- `priority_encoder.py`: Python code implementing the priority encoder circuit.
- `boolean_simplification.py`: Python code for simplifying Boolean expressions and generating the maps for outputs x and y.
- `README.md`: This readme file providing an overview of the priority encoder.

## How to Use
Clone or download the repository and run the `priority_encoder.py` file to simulate the priority encoder circuit. The script will take inputs and display the outputs x, y, and V based on the priority rules specified in Table 4.8.

## License
This project is licensed under the MIT License - see the LICENSE file for details.

---

[Image of Table 4.8 here]

[Image of the maps for outputs x and y from Fig. 4.22 here]

[Image of the priority encoder circuit implementation from Fig. 4.23 here]

