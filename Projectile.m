classdef Projectile < handle
    properties
        Radius double {mustBePositive}
        Color (3,1) double {mustBeNonnegative} = [1 0 0]
        Resitution double
        StartPosition (2,1) double
        StartVelocity (2,1) double
        Acceleration (2,1) double
        Position (2,1) double
        BaseY double = 0
        TimeOffset double = 0
    end
    methods
        function p = Projectile(radius, resitution, startPosition, startVelocity, acceleration)

            p.Radius = radius;
            p.Resitution = resitution;
            p.StartPosition = startPosition;
            p.StartVelocity = startVelocity;
            p.Acceleration = acceleration;
            p.Position = startPosition;
        end 
        function update(obj, time)
            t = time - obj.TimeOffset;
            obj.Position = 1 / 2 * obj.Acceleration * t^2 ...
                + obj.StartVelocity * t + obj.StartPosition;
            if obj.Position(2) <= obj.BaseY
                obj.StartVelocity(2) = -obj.Resitution* ...
                    (obj.Acceleration(2)*t + obj.StartVelocity(2));
                obj.StartPosition(1) = obj.Position(1);
                obj.StartPosition(2) = 0;
                obj.TimeOffset = time;
            end
        end
        function shape = draw(obj)
            shape = rectangle('Position', ...
                [obj.Position; obj.Radius; obj.Radius], ...
                'Curvature', [1 1], 'FaceColor', obj.Color);
        end
    end
end

