var ball = instance_find(obj_MainBall, 0);
if (instance_exists(ball)) {
    pulseAlpha = 1.0;
    with (obj_EnemyBase) {
        if (phy_active && point_distance(x, y, ball.x, ball.y) <= other.auraSize) {
            enemyHealth -= other.damage;
        }
    }
}

if (unlocked) {
    alarm[0] = room_speed * reloadSpeed;
}
