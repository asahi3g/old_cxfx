uniform mat4 u_m44World;
uniform mat4 u_m44View;
uniform mat4 u_m44Projection;

in vec3 i_v3Position;
in vec4 i_v4Albedo;
in vec2 i_v2Texcoord;
in vec3 i_v3Normal;

out vec4 v_v4Albedo;
out vec3 v_v3Normal;
out vec2 v_v2Texcoord;
out vec3 v_v3Position;

void main()
{
	vec4 v4Position = vec4(i_v3Position, 1);

	gl_Position = u_m44Projection * u_m44View * u_m44World * v4Position;
	v_v3Position = (u_m44World * v4Position).xyz;
	v_v4Albedo = i_v4Albedo;
	v_v3Normal = i_v3Normal;
	v_v2Texcoord = i_v2Texcoord;
}
