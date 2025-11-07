Name: Irma Smajlovic (Team 28)

# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Structural Verilog can't handle the feedback loops needed with latches very well and can see it as an undefined loop of some sort so it will act very weird. If we tell Vivado specifically to create these varaibles we can avoid the program not working proeprly and generating incorrect latches with errors. 

### What is the meaning of always @(*) in a sensitivity block?
The meaning of always @(*) in Verilog is to essentially tell the program to look over a block again whenever an input signal changes. It is used to describe combinational logic, ensuring outputs update immediately based on the current inputs. This prevents unintended latches and removes the need of using of a clock cycle type signal.

### What importance is memory to digital circuits?
The importance of memory in digital circuits is that it allows a system to store values over time, this enables behavior that is dependent on past and present inputs rather than just current inputs. These stored values make sequential operations possible and is pretty much the foundation for creating more advanced sofrware beyond just the bare basics. Without memory digital systems would be very limited, essentially only utilizing simple coombinational calculations.
