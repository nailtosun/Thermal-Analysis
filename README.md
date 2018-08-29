# Thermal-Analysis
## To Do
* R_heat-sink calculations with different air flows to debug the mathematical model
* Lm-35 with arduino (for continous calculations) for clean calculation for fin end. 


## Done
Air-flow is measured by taking averaging of air flow speed. With 12V Dc fan v = 1.6 m/s and h = 19.06 W/m-K where T_ambient is 302 K
I give 10.6 W from metal resistor and use very thin thermal paste that i assume R_thermal_paste = 0 K/W 
### Mathematical Calculations
With MATLAB model R_heatsink is 0.8472 K/W (v = 1.6 m/s, h = 19.06 W/m-K)
with that knowledge i expect 8.9K difference between ambient and the end of heat-sink. 
### Solidworks FEA
![fea](https://github.com/nailtosun/Thermal-Analysis/blob/master/Results/results.PNG)
### Experimental Results
![exp](https://github.com/nailtosun/Thermal-Analysis/blob/master/Results/FLIR0016.jpg)
 Result are very close to simulation but far away mathematical model
