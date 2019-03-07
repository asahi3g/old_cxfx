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
	gl_Position = vec4(i_v3Position, 1);
	v_v4Albedo = i_v4Albedo;
	v_v3Normal = v_v3Normal;
	v_v2Texcoord = i_v2Texcoord;
	v_v3Position = i_v3Position;
}
