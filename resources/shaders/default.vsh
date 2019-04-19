// TODO : refactor in header
#ifdef USE_PBR_UNI
#define USE_PBR
#elif defined(USE_PBR_MAP)
#define USE_PBR
#endif

#ifdef USE_PBR
#define USE_NORMAL
#elif defined(USE_NORMAL_VTX)
#define USE_NORMAL
#elif defined(USE_NORMAL_MAP)
#define USE_NORMAL
#endif

#ifdef USE_COLOR_MAP
#define USE_TEXCOORD
#elif defined(USE_NORMAL_MAP)
#define USE_TEXCOORD
#elif defined(USE_PBR_MAP)
#define USE_TEXCOORD
#elif defined(USE_EMISSIVE_MAP)
#define USE_TEXCOORD
#elif defined(USE_OCCLUSION_MAP)
#define USE_TEXCOORD
#endif

#ifdef USE_NORMAL
#ifndef USE_TANGENT_VTX
#ifndef USE_TEXCOORD
#define USE_TEXCOORD
#endif
#endif
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

#ifdef USE_TANGENT_VTX
/*layout(location = 4)*/ in vec4 i_v4Tangent;
#endif

#ifdef USE_WEIGHT
/*layout(location = 5)*/ in vec4 i_v4Weight;
#endif

#ifdef USE_JOINT
/*layout(location = 6)*/ in vec4 i_v4Joint;
#endif

// varyings
out vec3 v_v3Position;

#ifdef USE_NORMAL
#ifdef USE_TANGENT_VTX
out mat3 v_m3Tbn;
#else
out vec3 v_v3Normal;
#endif
#endif

#ifdef USE_COLOR_VTX
out vec4 v_v4Color;
#endif

#ifdef USE_TEXCOORD
out vec2 v_v2Texcoord;
#endif

#ifdef USE_WEIGHT
out vec4 v_v4Weight;
#endif

#ifdef USE_JOINT
out vec4 v_v4Joint;
#endif

out vec2 v_v2Screen;

void main()
{
	vec4 v4Position = vec4(i_v3Position, 1);

#ifdef USE_TRANSFORM
	vec4 v4ProjPos = u_m44Projection * u_m44View * u_m44World * v4Position;
	gl_Position = v4ProjPos;
	v_v3Position = (u_m44World * v4Position).xyz;
	v_v2Screen = v4ProjPos.xy;
#else
	gl_Position = v4Position;
	v_v3Position = v4Position.xyz;
	v_v2Screen = v4Position.xy;
#endif

#ifdef USE_TEXCOORD
	v_v2Texcoord = i_v2Texcoord;
#endif

#ifdef USE_NORMAL
#ifdef USE_TANGENT_VTX
	vec3 normalW = normalize(mat3(u_m44World) * i_v3Normal.xyz); // TODO : use normal inverse tranpose
	vec3 tangentW = normalize(mat3(u_m44World) * i_v4Tangent.rgb);
	vec3 bitangentW = cross(normalW, tangentW) * i_v4Tangent.w;
	v_m3Tbn = mat3(tangentW, bitangentW, normalW);
#else
	v_v3Normal = normalize(mat3(u_m44World) * i_v3Normal);
#endif
#endif

#ifdef USE_COLOR_VTX
	v_v4Color = i_v4Color;
#endif
}
