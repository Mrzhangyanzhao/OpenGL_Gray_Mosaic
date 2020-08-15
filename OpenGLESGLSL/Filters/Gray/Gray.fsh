precision highp float;
varying lowp vec2 textureCoordVarying;
uniform sampler2D Texture;

const highp vec3 W = vec3(0.2125, 0.7154, 0.0721);

void main(){
    vec4 mask = texture2D(Texture,textureCoordVarying);
    float luminance = dot(mask.rgb,W);
    
    gl_FragColor = vec4(vec3(luminance),1.0);
    
}
