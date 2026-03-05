// Start the alarm the first time the ability becomes unlocked
if (unlocked && alarm[0] == -1) {
    alarm[0] = room_speed * reloadSpeed;
}
