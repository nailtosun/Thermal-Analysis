function y = heat_sink_thermal_resistor_calculator(h,A_fin,N_fin,A_base,k_fin,t_fin,h_fin)
m = sqrt(2*h/k_fin*t_fin);
nu_fin = tanh(m*h_fin)/(m*h_fin);
y = 1/(h*(A_base+N_fin*nu_fin*A_fin));