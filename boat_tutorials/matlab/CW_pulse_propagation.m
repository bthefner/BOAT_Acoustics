function CW_pulse = CW_pulse_propagation(p,t1,tv,f,tau)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
CW_pulse = (abs(p).*cos(2*pi*f*(t1 - tv) + angle(p)));

ind1 = (t1 - tv + tau/2) >= 0 & (t1 - tv + tau/2) <= tau;

CW_pulse((t1 - tv + tau/2) < 0) = 0;
CW_pulse((t1 - tv + tau/2) > tau) = 0;


CW_pulse(ind1) = CW_pulse(ind1).*tukeywin(length(find(ind1)),1).';

end