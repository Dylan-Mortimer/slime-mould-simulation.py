# slime-mould-simulation.py

v0.2:
Added the ability for agents to change their colour based upon their position. Also added commented code that changes the agents colour based upon their velocity.

v o.1:
Added agents and allowed the agents to move based upon their velocity.

A slime mould simulation based upon a paper by Sage Penson. Initial work upon it was inspired by Sebastian Lague.

The code works by generating x amount of agents, and updating their position based upon velocity, and updating their velocity based upon a trial map which is based off of the positions of the agents.

Due to the large number of agents required to run the simulation effectively, the GPU is levered using GLSL. Feel free to tinker with this program, and @ me in your repository if you make one.

:)

https://cargocollective.com/sagejenson/physarum
