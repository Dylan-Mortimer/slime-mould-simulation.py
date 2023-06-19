# slime-mould-simulation.py

v0.2:

A slime mould simulation based upon a paper by Sage Penson. Initial work upon it was inspired by Sebastian Lague.

The code works by generating x amount of agents, and updating their position based upon velocity, and updating their velocity based upon a trial map which is based off of the positions of the agents.

Due to the large number of agents required to run the simulation effectively, the GPU is levered using GLSL. Feel free to tinker with this program, and @ me in your repository if you make one.

Current features:
- Generate x amount of agents and update their position based upon their velocity.
- Render the agents as spheres.
- Update the agents colours using their position (code for velocity is commented, but working).

Planned features:
- Rework the velocity system to use both velocity as a vector2 and an angle (in radians).
- Add a trail map that records the location of agents, weakens the trail over time, and diffuses the trail.

https://cargocollective.com/sagejenson/physarum
