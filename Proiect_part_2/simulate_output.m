function y = simulate_output(uin, yin, theta, na, nb, nk, m)

y = zeros(length(yin),1);
N = length(yin);
max_delay = max(na,nb);

y(1:max_delay+nk) = yin(1:max_delay+nk);

for i = 1+max_delay+nk:N
    A = y(i-na:i-1)';
    B = uin(i-nk-nb+1:i-1)';
    line = polynomial_power([A,B,1],m);
    y(i) = line*theta;
end


% ecuatua ca si cum ar fi implementata pe placuta
% for i = 1+max_delay+nk:N
%     y(i) = y(i-4)^3*theta(1)*1^15 + 3*y(i-3)*y(i-4)^2*theta(2)*1^14 + (3*y(i-2)*y(i-4)^2 + 3*y(i-3)^2*y(i-4))*theta(3)*1^13 + (3*y(i-1)*y(i-4)^2 + 6*y(i-2)*y(i-3)*y(i-4) + y(i-3)^3)*theta(4)*1^12 + (6*y(i-1)*y(i-3)*y(i-4) + 3*y(i-2)^2*y(i-4) + 3*y(i-2)*y(i-3)^2 + 3*uin(i-nk-1+1)*y(i-4)^2)*theta(5)*1^11 + (6*y(i-1)*y(i-2)*y(i-4) + 3*y(i-1)*y(i-3)^2 + 3*y(i-2)^2*y(i-3) + 6*uin(i-nk-1+1)*y(i-3)*y(i-4) + 3*y(i-4)^2)*theta(6)*1^10 + (3*y(i-1)^2*y(i-4) + 6*y(i-1)*y(i-2)*y(i-3) + y(i-2)^3 + 6*uin(i-nk-1+1)*y(i-2)*y(i-4) + 3*uin(i-nk-1+1)*y(i-3)^2 + 6*y(i-3)*y(i-4))*theta(7)*1^9 + (3*y(i-1)^2*y(i-3) + 3*y(i-1)*y(i-2)^2 + 6*uin(i-nk-1+1)*y(i-1)*y(i-4) + 6*uin(i-nk-1+1)*y(i-2)*y(i-3) + 6*y(i-2)*y(i-4) + 3*y(i-3)^2)*theta(8)*1^8 + (3*y(i-1)^2*y(i-2) + 6*uin(i-nk-1+1)*y(i-1)*y(i-3) + 6*y(i-1)*y(i-4) + 3*uin(i-nk-1+1)*y(i-2)^2 + 6*y(i-2)*y(i-3) + 3*uin(i-nk-1+1)^2*y(i-4))*theta(9)*1^7 + (y(i-1)^3 + 6*uin(i-nk-1+1)*y(i-1)*y(i-2) + 6*y(i-1)*y(i-3) + 3*y(i-2)^2 + 3*uin(i-nk-1+1)^2*y(i-3) + 6*uin(i-nk-1+1)*y(i-4))*theta(10)*1^6 + (3*uin(i-nk-1+1)*y(i-1)^2 + 6*y(i-1)*y(i-2) + 3*uin(i-nk-1+1)^2*y(i-2) + 6*uin(i-nk-1+1)*y(i-3) + 3*y(i-4))*theta(11)*1^5 + (3*y(i-1)^2 + 3*uin(i-nk-1+1)^2*y(i-1) + 6*uin(i-nk-1+1)*y(i-2) + 3*y(i-3))*theta(12)*1^4 + (6*uin(i-nk-1+1)*y(i-1) + 3*y(i-2) + uin(i-nk-1+1)^3)*theta(13)*1^3 + (3*y(i-1) + 3*uin(i-nk-1+1)^2)*theta(14)*1^2 + 3*uin(i-nk-1+1)*1*theta(15) + 1*theta(16);
% 
% end

end

