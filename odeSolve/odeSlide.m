tspan = [0 1] ; % specify time span
y0 = 0; % specify y0
[t,y] = ode23 ('fn',tspan,y0 ); % now
execute ode23
plot (t,y) % plot t vs y
xlabel ('t')
ylabel ('y')
hold on
[t,y] = ode45 ('fn',tspan,y0 ); % now
execute ode45
plot (t,y); % plot t vs y
xlabel ('t');
ylabel ('y');