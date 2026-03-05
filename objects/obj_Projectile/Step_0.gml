image_angle = point_direction(0, 0, dirX, dirY);
x += dirX * moveSpeed;
y += dirY * moveSpeed;

var hit = instance_place(x, y, obj_EnemyBase);
if (hit != noone && hit.phy_active) {
    hit.enemyHealth -= damage;
    instance_destroy();
}
