var ball = instance_find(obj_MainBall, 0);
if (!instance_exists(ball) || !unlocked) exit;

// Always-visible faint outline showing aura range
draw_set_alpha(0.2);
draw_set_color(c_aqua);
draw_circle(ball.x, ball.y, auraSize, true);

// Pulse flash: filled circle that fades out after each damage tick
if (pulseAlpha > 0) {
    draw_set_alpha(pulseAlpha * 0.5);
    draw_circle(ball.x, ball.y, auraSize, false);
}

// Always reset draw state
draw_set_alpha(1);
draw_set_color(c_white);
