i_ss = find_ss_4table(oo_, M_, 'i ');
c_ss = find_ss_4table(oo_, M_, 'c ');
g_ss = find_ss_4table(oo_, M_, 'g ');
n_ss = find_ss_4table(oo_, M_, 'n ');
q_ss = find_ss_4table(oo_, M_, 'q ');
pi_ss = find_ss_4table(oo_, M_, 'pi ');
Rk_ss = find_ss_4table(oo_, M_, 'Rk ');
Re_ss = find_ss_4table(oo_, M_, 'Re ');
omegabar_ss = find_ss_4table(oo_, M_, 'omegabar');
sigma_ss = find_ss_4table(oo_, M_, 'sigma ');
G_ss = (normcdf((log(omegabar_ss) + sigma_ss^2 / 2) / sigma_ss - sigma_ss));
pstar_ss = find_ss_4table(oo_, M_, 'pstar ');
lambdaf_ss = find_ss_4table(oo_, M_, 'lambdaf ');
epsil_ss = find_ss_4table(oo_, M_, 'epsil ');
u_ss = find_ss_4table(oo_, M_, 'u ');
kbar_ss = find_ss_4table(oo_, M_, 'kbar ');
muzstar_ss = find_ss_4table(oo_, M_, 'muzstar ');
h_ss = find_ss_4table(oo_, M_, 'h ');
wstar_ss = find_ss_4table(oo_, M_, 'wstar ');
phi_ss = find_ss_4table(oo_, M_, 'phi ');
%yz_ss         = (pstar_ss^(lambdaf_ss/(lambdaf_ss-1)) * (epsil_ss * (u_ss * kbar_ss / (muzstar_ss * upsil_p))^alpha_p ...
%                 * (h_ss * wstar_ss^(lambdaw_p/(lambdaw_p-1)))^(1-alpha_p) - phi_ss));
y_ss = c_ss + i_ss + g_ss;
d_ss = mu_p * G_ss * (1 + Rk_ss) * q_ss * kbar_ss / pi_ss / muzstar_ss;
velocity_ss = y_ss / (q_ss * kbar_ss - n_ss);
disp(['i/y         ' num2str(i_ss / y_ss)]);
disp(['c/y         ' num2str(c_ss / y_ss)]);
disp(['g/y         ' num2str(g_ss / y_ss)]);
disp(['k/y         ' num2str(kbar_ss / y_ss)]);
disp(['n / (k - n) ' num2str(n_ss/(kbar_ss - n_ss))]);
disp(['w_e / y     ' num2str(we_p / y_ss)]);
disp(['d / y       ' num2str(d_ss / y_ss)]);
disp(['velocity    ' num2str(velocity_ss)]);
disp(['inflation   ' num2str((pi_ss^4-1) * 100)]);
disp(['Risk Free   ' num2str(((1+Re_ss)^4-1) * 100)]);