#version 430

layout(local_size_x=COMPUTE_SIZE_X, local_size_y=COMPUTE_SIZE_Y) in;

struct Agent
{
    vec4 pos;
    vec4 vel;
    vec4 colour;
};

//Input Buffer
layout(std430, binding=0) buffer agents_in
{
    Agent agents[];
} In;

//Output Buffer
layout(std430, binding = 1) buffer agents_out
{
    Agent agents[];
} Out;

void main()
{
    int curAgentIndex = int(gl_GlobalInvocationID);

    Agent in_agent = In.agents[curAgentIndex];

    vec4 p = in_agent.pos.xyzw;
    vec4 v = in_agent.vel.xyzw;

    //|| = OR

    if (p.x >= 1150.0 || p.x <= 0.0)
        v.x *= -1.0;
    
    if (p.y >= 650.0 || p.y <= 0.0)
        v.y *= -1.0;

    p.xy += v.xy * vec2(2.0, 2.0);

    in_agent.colour.yz = p.xy/vec2(650.0,1150.0);
    //in_agent.colour.yz = v.xy;

    Agent out_agent;
    out_agent.pos.xyzw = p.xyzw;
    out_agent.vel.xyzw = v.xyzw;

    vec4 c = in_agent.colour.xyzw;
    out_agent.colour.xyzw = c.xyzw;

    Out.agents[curAgentIndex] = out_agent;
}
