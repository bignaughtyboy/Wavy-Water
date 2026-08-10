#version 330

const float height = 0.15;
const float frequency = 0.5;
const float speed = 3000.0;

float getWaveOffset(vec3 worldPos) {

    float time = GameTime * 900.0;

    if (round(texture(Sampler0, UV0).a * 1000.0) != 706.0)
        return 0.0;

    float wave1 = sin(worldPos.x * 0.12 + time);
    float wave2 = cos(worldPos.z * 0.15 + time * 1.15);
    float wave3 = sin((worldPos.x + worldPos.z) * 0.05 + time * 0.6);

    return (wave1 + wave2 * 0.8 + wave3 * 0.5) * height;
}
