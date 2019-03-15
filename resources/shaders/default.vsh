#ifdef USE_COLOR_MAP
#define USE_TEXCOORD
#elif defined(USE_PBR_MAP)
#define USE_TEXCOORD
#elif defined(USE_NORMAL_MAP)
#define USE_TEXCOORD
#elif defined(USE_OCCLUSION_MAP)
#define USE_TEXCOORD
#elif defined(USE_EMISSIVE_MAP)
#define USE_TEXCOORD
#endif

#ifdef USE_NORMAL_VTX
#define USE_NORMAL
#elif defined(USE_NORMAL_MAP)
#define USE_NORMAL
#endif

// uniforms
#ifdef USE_TRANSFORM
uniform mat4 u_m44World;
uniform mat4 u_m44View;
uniform mat4 u_m44Projection;
#endif

// attributes
/*layout(location = 0)*/ in vec3 i_v3Position;

#ifdef USE_NORMAL
/*layout(location = 1)*/ in vec3 i_v3Normal;
#endif

#ifdef USE_COLOR_VTX
/*layout(location = 2)*/ in vec4 i_v4Color;
#endif

#ifdef USE_TEXCOORD
/*layout(location = 3)*/ in vec2 i_v2Texcoord;
#endif

// varyings
out vec3 v_v3Position;

#ifdef USE_NORMAL
out vec3 v_v3Normal;
#endif

#ifdef USE_COLOR_VTX
out vec4 v_v4Color;
#endif

#ifdef USE_TEXCOORD
out vec2 v_v2Texcoord;
#endif

void main()
{
	vec4 v4Position = vec4(i_v3Position, 1);

#ifdef USE_TRANSFORM
	gl_Position = u_m44Projection * u_m44View * u_m44World * v4Position;
	v_v3Position = (u_m44World * v4Position).xyz;
#else
	gl_Position = v4Position;
	v_v3Position = v4Position.xyz;
#endif

#ifdef USE_TEXCOORD
	v_v2Texcoord = i_v2Texcoord;
#endif

#ifdef USE_NORMAL
	v_v3Normal = mat3(u_m44World) * i_v3Normal;
#endif

#ifdef USE_COLOR_VTX
	v_v4Color = i_v4Color;
#endif
}
