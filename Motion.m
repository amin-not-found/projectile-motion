% set up figure
max_x = 50;
xlim([-2 max_x])
ylim([-2 max_x*0.4])
pbaspect([2 1 1])
axis manual


p = Projectile(1, 0.7, [0 19], [4 0], [0 -9.81]);

step = 2.0 / 60;
speed = 0.8;
t = 0;

while p.Position <= max_x+p.Radius
    p.update(t);
    shape = p.draw();
    drawnow
    t = t + step*speed;
    pause(step);
    delete(shape);
end

p.draw();
