///Create oEffect_ScreenShake and shakes screen based on intensity and length of time
//argument0 = X coordinate intensity of shake
//argument1 = Y coordinate intensity of shake
//argument2 = length of shake

shakeEff = instance_create(0,0, oFxScreenShake)

shakeEff.alarm[0] = argument2
shakeEff.intensity_X = argument0
shakeEff.intensity_Y = argument1