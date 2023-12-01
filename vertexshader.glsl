#version 410 core

layout (location = 0) in vec3 aPos; // position has attribute position 0

out vec4 vertexColor; // specify a color output to the fragment shader

void main(){
	gl_Position = vec4(aPos, 1.0);
	vertexColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);
}