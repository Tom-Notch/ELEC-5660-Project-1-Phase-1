# Instructions

Use the script `test_trajectory.m` as the main entry point.

`readonly` folder: supposed to be "read only"
`quadModel_readonly.m`: parameters of a 500g quadrotor
`quadEOM_readonly.m`: dynamics model of quadrotor.
`run_trajectory_readonly`: solve the equation of motion, receive desired trajectory, run your controller, iteratively. visualization is also included.

`utils`: useful functions.

`test_trajectory.m`: main entry.

______________________________________________________________________

`controller.m`: what you need to work with. Calculate force and moment given current and desired state vector of quadrotor.

`*_trajectory.m`: what you need to work with. Trajectory for quadrotor given the path. Calcualte desired state given current state vector and current time.

Contact TAs with any questions you may have.

<hlied@connect.ust.hk>

<cfengag@connect.ust.hk>
