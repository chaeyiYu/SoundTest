/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

// 사운드 입력 필드
draw_text_transformed(100, 100, sfxName, 2, 2, 0);
draw_line_width(100, 150, 400, 150, 1.3);

// 볼륨
draw_rectangle(450, 100, 650, 150, true);
draw_text_transformed(450, 100, "volume ", 2, 2, 0);
draw_text_transformed(600, 100, volume, 2, 2, 0);

// 피치
draw_rectangle(700, 100, 900, 150, true);
draw_text_transformed(700, 100, "pitch ", 2, 2, 0);
draw_text_transformed(850, 100, pitch, 2, 2, 0);

draw_sprite_ext(play, 0, 1000, 125, 0.5, 0.5, 1, c_white, 1);

draw_sprite_ext(plus, 0, 500, 250, 0.5, 0.5, 1, c_white, 1);
