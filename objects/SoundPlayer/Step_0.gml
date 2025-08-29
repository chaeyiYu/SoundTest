/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (mouse_check_button_pressed(mb_left)) {
	if (point_in_rectangle(mouse_x, mouse_y, 100, 100, 400, 150)) {
		sfxName = get_string("효과음 이름을 입력하세요.", sfxName);
	}
	
	if (point_in_rectangle(mouse_x, mouse_y, 450, 100, 650, 150)) {
		volume = get_string("볼륨 값을 입력하세요.(0 ~ 1 사이)", volume);
	}
	
	if (point_in_rectangle(mouse_x, mouse_y, 700, 100, 900, 150)) {
		pitch = get_string("피치 값을 입력하세요.", pitch);
	}
	
	if (point_in_rectangle(mouse_x, mouse_y, 950, 100, 1050, 150)) {
		//audio_play_sound(ball_bag1, 10, false, real(volume), 0, real(pitch));
		var _sound = asset_get_index(sfxName);
		if (_sound == -1) {
			show_message($"{_sound} 존재하지 않는 파일명입니다.");
		}
		else {
			audio_play_sound(_sound, 0, false, real(volume), 0, real(pitch));
		}
	}
	
	if (point_in_rectangle(mouse_x, mouse_y, 450, 225, 550, 275)) {
		
	}
}