function s_des = square_trajectory(t, true_s)

    s_des = zeros(11, 1);

    % Given yaw, DO NOT CHANGE
    yaw_des = mod(0.2 * pi * t, 2 * pi);
    dyaw_des = 0.2 * pi;

    % TODO: Implement square trajectory here
    omega = 25;

    % Define waypoints
    waypoints = [0, 0, 0;
                 1, 2, 0;
                 2, 2, 2;
                 3, 0, 2;
                 4, 0, 0];

    % Total time for the trajectory
    T = 25;

    % Time spent on each segment
    segment_time = T / (size(waypoints, 1) - 1);

    % Determine current segment
    segment_index = min(floor(t / segment_time) + 1, size(waypoints, 1) - 1);

    % Start and end points of the current segment
    p_start = waypoints(segment_index, :);
    p_end = waypoints(segment_index + 1, :);

    % Time within the current segment
    t_segment = mod(t, segment_time);

    % Linear interpolation for position
    x_des = ((p_end(1) - p_start(1)) / segment_time) * t_segment + p_start(1);
    y_des = ((p_end(2) - p_start(2)) / segment_time) * t_segment + p_start(2);
    z_des = ((p_end(3) - p_start(3)) / segment_time) * t_segment + p_start(3);

    % Linear interpolation for velocity
    x_vdes = (p_end(1) - p_start(1)) / segment_time;
    y_vdes = (p_end(2) - p_start(2)) / segment_time;
    z_vdes = (p_end(3) - p_start(3)) / segment_time;

    % Acceleration is zero for linear interpolation
    x_ades = 0;
    y_ades = 0;
    z_ades = 0;

    s_des(1) = x_des;
    s_des(2) = y_des;
    s_des(3) = z_des;
    s_des(4) = x_vdes;
    s_des(5) = y_vdes;
    s_des(6) = z_vdes;
    s_des(7) = x_ades;
    s_des(8) = y_ades;
    s_des(9) = z_ades;
    s_des(10) = yaw_des;
    s_des(11) = dyaw_des;

end
