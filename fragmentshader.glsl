#version 450 core
out vec4 FragColor;
in vec4 vertexColor; // input variable from vertex shader (same name and type)

uniform float u_time;
uniform float mouse_x;
uniform float mouse_y;

void main() {

	vec4 baseColor = vec4(0.4f, 0.2f, 0.05f, 1.0f);

	FragColor = vec4(0.0f, 0.0f, abs(sin(u_time))+0.4, 1.0f) + baseColor + vertexColor.x*mouse_x + vertexColor.y*mouse_y + vertexColor.z*sin(u_time)+0.1 + vertexColor * abs(sin(u_time * 0.8));
}