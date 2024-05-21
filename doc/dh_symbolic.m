%%%

clear
clc

syms theta1 theta2 theta3 theta4 theta5 theta6 AA
syms a1 a2 a3 a4 a5 a6
syms alpha1 alpha2 alpha3 alpha4 alpha5 alpha6
syms d1 d2 d3 d4 d5 d6

a1 = 0;
a4 = 0;
a5 = 0;
a6 = 0;

alpha2 = 0;
alpha3 = 0;
alpha6 = 0;

d1 = 0;
d2 = 0;
d3 = 0;

% theta_initial = [0; -pi/2; 0; pi/2; 0; -pi];
% theta1 = theta1 + theta_initial(1);
% theta2 = theta2 + theta_initial(2);
% theta3 = theta3 + theta_initial(3);
% theta4 = theta4 + theta_initial(4);
% theta5 = theta5 + theta_initial(5);
% theta6 = theta6 + theta_initial(6);

A1 = [cos(theta1) -sin(theta1)*cos(alpha1)  sin(theta1)*sin(alpha1) a1*cos(theta1);
      sin(theta1)  cos(theta1)*cos(alpha1) -cos(theta1)*sin(alpha1) a1*sin(theta1);
      0            sin(alpha1)              cos(alpha1)             d1;
      0            0                        0                       1];

A2 = [cos(theta2) -sin(theta2)*cos(alpha2)  sin(theta2)*sin(alpha2) a2*cos(theta2);
      sin(theta2)  cos(theta2)*cos(alpha2) -cos(theta2)*sin(alpha2) a2*sin(theta2);
      0            sin(alpha2)              cos(alpha2)             d2;
      0            0                        0                       1];

A3 = [cos(theta3) -sin(theta3)*cos(alpha3)  sin(theta3)*sin(alpha3) a3*cos(theta3);
      sin(theta3)  cos(theta3)*cos(alpha3) -cos(theta3)*sin(alpha3) a3*sin(theta3);
      0            sin(alpha3)              cos(alpha3)             d3;
      0            0                        0                       1];

A4 = [cos(theta4) -sin(theta4)*cos(alpha4)  sin(theta4)*sin(alpha4) a4*cos(theta4);
      sin(theta4)  cos(theta4)*cos(alpha4) -cos(theta4)*sin(alpha4) a4*sin(theta4);
      0            sin(alpha4)              cos(alpha4)             d4;
      0            0                        0                       1];

A5 = [cos(theta5) -sin(theta5)*cos(alpha5)  sin(theta5)*sin(alpha5) a5*cos(theta5);
      sin(theta5)  cos(theta5)*cos(alpha5) -cos(theta5)*sin(alpha5) a5*sin(theta5);
      0            sin(alpha5)              cos(alpha5)             d5;
      0            0                        0                       1];

A6 = [cos(theta6) -sin(theta6)*cos(alpha6)  sin(theta6)*sin(alpha6) a6*cos(theta6);
      sin(theta6)  cos(theta6)*cos(alpha6) -cos(theta6)*sin(alpha6) a6*sin(theta6);
      0            sin(alpha6)              cos(alpha6)             d6;
      0            0                        0                       1];

A = A1*A2*A3*A4*A5*A6;

X = simplify(A(1,4))
Y = simplify(A(2,4))
Z = simplify(A(3,4))

fileID = fopen("xyz.txt", 'w');
fprintf(fileID, '%s\n', X);
fprintf(fileID, '%s\n', Y);
fprintf(fileID, '%s\n', Z);
fclose(fileID);
