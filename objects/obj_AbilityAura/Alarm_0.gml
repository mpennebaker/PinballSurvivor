var ball = instance_find(obj_MainBall, 0);
if (instance_exists(ball)) {
    pulseAlpha = 1.0;
    // Offset to sprite center (origin is top-left, sprite is 64x64)
    var ball_cx = ball.x + sprite_get_width(ball.sprite_index) * 0.5;
    var ball_cy = ball.y + sprite_get_height(ball.sprite_index) * 0.5;
    with (obj_EnemyBase) {
        if (phy_active && point_distance(x, y, ball_cx, ball_cy) <= other.auraSize) {
            enemyHealth -= other.damage;
        }
    }
}

if (unlocked) {
    alarm[0] = room_speed * reloadSpeed;
}
