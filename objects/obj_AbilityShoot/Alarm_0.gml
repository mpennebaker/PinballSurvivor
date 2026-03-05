var ball = instance_find(obj_MainBall, 0);
if (instance_exists(ball)) {
    var spd = point_distance(0, 0, ball.phy_speed_x, ball.phy_speed_y);
    if (spd > 0) {
        var proj = instance_create_layer(ball.x, ball.y, "Instances", obj_Projectile);
        proj.dirX = ball.phy_speed_x / spd;
        proj.dirY = ball.phy_speed_y / spd;
        proj.moveSpeed = projectileSpeed;
        proj.damage = damage;
    }
}

if (unlocked) {
    alarm[0] = room_speed * reloadSpeed;
}
