precision highp float;
varying lowp vec2 textureCoordVarying;
uniform sampler2D Texture;

void main () {
    
    vec4 reversalcolor = texture2D(Texture,vec2(textureCoordVarying.x,1.0-textureCoordVarying.y));
    gl_FragColor = reversalcolor;
}
