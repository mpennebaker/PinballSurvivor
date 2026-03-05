var ball = instance_find(obj_MainBall, 0);
if (!instance_exists(ball) || !unlocked) exit;

// Offset to sprite center (origin is top-left, sprite is 64x64)
var ball_cx = ball.x + sprite_get_width(ball.sprite_index) * 0.5;
var ball_cy = ball.y + sprite_get_height(ball.sprite_index) * 0.5;

// Always-visible faint outline showing aura range
draw_set_alpha(0.2);
draw_set_color(c_aqua);
draw_circle(ball_cx, ball_cy, auraSize, true);

// Pulse flash: filled circle that fades out after each damage tick
if (pulseAlpha > 0) {
    draw_set_alpha(pulseAlpha * 0.5);
    draw_circle(ball_cx, ball_cy, auraSize, false);
}

// Always reset draw state
draw_set_alpha(1);
draw_set_color(c_white);
