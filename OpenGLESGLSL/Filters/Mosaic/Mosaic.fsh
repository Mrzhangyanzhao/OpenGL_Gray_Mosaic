precision highp float;
varying lowp vec2 textureCoordVarying;
uniform sampler2D Texture;

const vec2 TexSize = vec2(400.0,400.0);
const vec2 MasaicSize = vec2(6.0,6.0);

void main () {
    vec2 intXY = vec2(textureCoordVarying.x * TexSize.x,textureCoordVarying.y * TexSize.y);
    vec2 XYMasaic = vec2(floor(intXY.x/MasaicSize.x) * MasaicSize.x,floor(intXY.y/MasaicSize.y) * MasaicSize.y);
    
    vec2 UVMasic = vec2(XYMasaic.x/TexSize.x,XYMasaic.y/TexSize.y);
    
    gl_FragColor = texture2D(Texture,UVMasic);
}
