// Fade pulse visual out over ~20 steps
pulseAlpha = max(0, pulseAlpha - 0.05);

// Start alarm the first time the ability becomes unlocked
if (unlocked && alarm[0] == -1) {
    alarm[0] = room_speed * reloadSpeed;
}
