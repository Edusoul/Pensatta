shader_type canvas_item;
render_mode blend_mix;

//uniform float outline_width : hint_range(0.0, 0.02);
//uniform vec4 outline_color : hint_color;
uniform float outline_width = 0.01;
uniform vec4 outline_color = vec4(1.0, 0.96, 0.0, 1.0);

void fragment()
{
    vec4 tcol = texture(TEXTURE, UV);
    
    if (tcol.a == 0.0)
    {
        if (texture(TEXTURE, UV + vec2(0.0,          outline_width)).a  != 0.0 ||
            texture(TEXTURE, UV + vec2(0.0,         -outline_width)).a  != 0.0 ||
            texture(TEXTURE, UV + vec2(outline_width,  0.0)).a          != 0.0 ||
            texture(TEXTURE, UV + vec2(-outline_width, 0.0)).a          != 0.0 ||
            texture(TEXTURE, UV + vec2(-outline_width, outline_width)).a  != 0.0 ||
            texture(TEXTURE, UV + vec2(-outline_width, -outline_width)).a != 0.0 ||
            texture(TEXTURE, UV + vec2(outline_width,  outline_width)).a  != 0.0 ||
            texture(TEXTURE, UV + vec2(outline_width,  -outline_width)).a != 0.0) 
            tcol = outline_color;
    }
    
    COLOR = tcol;
}