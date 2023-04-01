model lab8_2
Real M1;
Real M2;
Real p_cr = 15;
Real N = 17;
Real q = 1;
Real tau1 = 11;
Real tau2 = 14;
Real p1 = 8;
Real p2 = 6;
Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q); 
Real c1 = (p_cr-p1)/(tau1*p1);
Real c2 = (p_cr-p2)/(tau2*p2);
initial equation
M1 = 1.5;
M2 = 2.5;
equation
der(M1) = M1-(b/c1+0.00019)*M1*M2-a1/c1*M1*M1;
der(M2) = c2/c1*M2-b/c1*M1*M2-a2/c1*M2*M2;

end lab8_2;