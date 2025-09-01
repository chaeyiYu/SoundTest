/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
draw_set_font(Font1);
for (var _i = 0; _i < playerCount; _i++) {
	var _sound = asset_get_index(soundInfoArr[_i].sfxName);
	// 사운드 입력 필드
	draw_text_transformed(30, 100 + _i * yOffset, "sfx :", 2, 2, 0);
	draw_text_transformed(120, 100 + _i * yOffset, soundInfoArr[_i].sfxName, 1.5, 1.5, 0);
	draw_line_width(120, 150 + _i * yOffset, 600, 150 + _i * yOffset, 1.3);
	
	// 볼륨
	draw_text_transformed(650, 100 + _i * yOffset, "volume :", 2, 2, 0);
	draw_text_transformed(800, 100 + _i * yOffset, soundInfoArr[_i].volume, 2, 2, 0);

	// 피치
	draw_text_transformed(900, 100 + _i * yOffset, "pitch :", 2, 2, 0);
	draw_text_transformed(1020, 100 + _i * yOffset, soundInfoArr[_i].pitch, 2, 2, 0);
	
	if (!audio_is_playing(_sound)) {
		draw_sprite_ext(play, 0, 1150, 125 + _i * yOffset, 0.5, 0.5, 1, c_white, 1);
	}
	else {
		draw_sprite_ext(pause, 0, 1150, 125 + _i * yOffset, 1, 1, 1, c_white, 1);

	}
	
	
	if (playerCount >= 2 && _i != 0) {
		draw_sprite_ext(sp_delete, 0, 1300, 125 + _i * yOffset, 0.5, 0.5, 1, c_white, 1);
	}
	
	
}

// plus
if (playerCount < 5) {
	draw_sprite_ext(plus, 0, 500, 250 + yOffset * (playerCount - 1), 0.5, 0.5, 1, c_white, 1);
}