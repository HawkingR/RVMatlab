a_star = 0.05;
i = 60;
P = 5;
E = 0;

omega = [0:30:90];
Theta = (0:1:360);


n = 1;
Omega = omega(1,n);

while Omega < 90
    n = n+1;
    Omega = omega(1,n);
    v_r = rv(a_star, i, P, E, Theta, Omega);
    plot(Theta, v_r); hold on   

end
hold off

function v_r = rv(a_star, i, P, E, Theta, Omega)
rvsa = (2*pi*a_star*sin(i))/(P*sqrt(1-(E^2)));
v_r = (rvsa)*(cos(Theta+Omega)+E*cos(Omega));

end