# verilog-fsm-sequence-detector
Designed and verified an overlapping 1011 sequence detector using Moore FSM architecture in Verilog HDL.


# Verilog FSM Sequence Detector

## Project Overview

This project implements an **overlapping 1011 Sequence Detector** using a **Moore Finite State Machine (FSM)** in Verilog HDL.

The detector continuously monitors a serial input stream and asserts the output whenever the sequence **1011** is detected. The design supports **overlapping sequence detection**, allowing consecutive occurrences of the target pattern to be recognized without resetting the FSM.

This project demonstrates fundamental RTL design concepts including state machine design, state transitions, sequential logic, combinational logic, and functional verification.

---

## Features

- Moore FSM Architecture
- Overlapping Sequence Detection
- Verilog HDL Implementation
- Modular RTL Design
- Functional Verification using Testbench
- Synthesizable Design
- Simulation Waveform Verification

---

## Sequence to Detect

Target Sequence:

1011

### Example

Input Stream:
1011011

Detection Output:
0001001

The detector identifies multiple occurrences of the sequence while supporting overlap between consecutive patterns.

---

## FSM States

| State | Description |
|---------|-------------|
| S0 | Initial State |
| S1 | Detected '1' |
| S2 | Detected '10' |
| S3 | Detected '101' |
| S4 | Detected '1011' (Detection State) |

---

## Design Methodology

The design follows a Moore FSM approach where:

- State transitions are controlled by the serial input bit.
- Output depends only on the current state.
- Detection occurs when the FSM enters the final detection state.
- Overlapping patterns are handled through optimized state transitions.

---

## Project Structure

```text
verilog-fsm-sequence-detector/
│
├── rtl/
│   └── sequence_detector.v
│
├── tb/
│   └── sequence_detector_tb.v
│
├── waveform/
│   └── sequence_detector_waveform.png
│
├── docs/
│   ├── state_diagram.png
│   └── sequence_detector_rtl_schematic.png
│
└── README.md
```

---

## RTL Design

The RTL module contains:

- State Register Logic
- Next-State Logic
- Output Logic
- Reset Handling
- Overlapping Sequence Support

The design is written using synthesizable Verilog constructs suitable for FPGA and ASIC design flows.

---

## Verification

The design was verified using a dedicated Verilog testbench.

### Test Cases

#### Test Case 1: Valid Detection

Input:
1011

Expected Result:
Sequence Detected

---

#### Test Case 2: Overlapping Detection

Input:
1011011

Expected Result:
Two Successful Detections

---

#### Test Case 3: Invalid Sequence

Input:
1001

Expected Result:
No Detection

---

## Simulation Waveform

Insert waveform screenshot below:

![Simulation Waveform](waveform/sequence_detector_waveform.png)

---

## FSM State Diagram

Insert FSM state diagram below:

![FSM State Diagram](docs/state_diagram.png)

---

## RTL Schematic

Insert synthesized RTL schematic below:

![RTL Schematic](docs/sequence_detector_rtl_schematic.png)

---

## Tools Used

- Verilog HDL
- AMD Vivado 2025.2
- Vivado Simulator
- RTL Analysis
- Synthesis

---

## Learning Outcomes

Through this project, the following concepts were practiced:

- Finite State Machine Design
- Moore FSM Implementation
- State Transition Modeling
- RTL Coding Techniques
- Digital Logic Design
- Functional Verification
- Simulation and Debugging
- FPGA/ASIC Design Fundamentals

---

## Future Improvements

- Mealy FSM Implementation
- Configurable Sequence Detection
- SystemVerilog Assertions (SVA)
- Functional Coverage
- UVM-Based Verification Environment
- FPGA Hardware Validation

---

## Author

Rahul Ingale

B.Tech Electronics & Telecommunication Engineering

Aspiring RTL / ASIC Design Engineer

Skills:
Verilog HDL | Digital Design | FSM Design | RTL Development | VLSI
