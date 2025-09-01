/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (mouse_check_button_pressed(mb_left)) {
	
	for (var _i = 0; _i < array_length(soundInfoArr); _i++) {
		if (point_in_rectangle(mouse_x, mouse_y, 100, 100 + _i * yOffset, 400, 150 + _i * yOffset)) {
			soundInfoArr[_i].sfxName = get_string("효과음 이름을 입력하세요.", soundInfoArr[_i].sfxName);
		}
		
		if (point_in_rectangle(mouse_x, mouse_y, 650, 100 + _i * yOffset, 850, 150 + _i * yOffset)) {
			soundInfoArr[_i].volume = get_string("볼륨 값을 입력하세요.(0 ~ 1 사이)", soundInfoArr[_i].volume);
			
			if (audio_is_playing(asset_get_index(soundInfoArr[_i].sfxName))) {
				audio_sound_gain(asset_get_index(soundInfoArr[_i].sfxName), real(soundInfoArr[_i].volume), 0);

			}
		}
		
		if (point_in_rectangle(mouse_x, mouse_y, 900, 100 + _i * yOffset, 1100, 150 + _i * yOffset)) {
			soundInfoArr[_i].pitch = get_string("피치 값을 입력하세요.", soundInfoArr[_i].pitch);
			
			if (audio_is_playing(asset_get_index(soundInfoArr[_i].sfxName))) {
				audio_sound_pitch(asset_get_index(soundInfoArr[_i].sfxName), real(soundInfoArr[_i].pitch));

			}
		}
		
		if (point_in_rectangle(mouse_x, mouse_y, 1100, 100 + _i * yOffset, 1250, 150 + _i * yOffset)) {
			var _sound = asset_get_index(soundInfoArr[_i].sfxName);
			if (_sound == -1) {
				show_message($"{soundInfoArr[_i].sfxName} - 존재하지 않는 파일명입니다.");
			}
			else {
				if (!audio_is_playing(_sound)) {
					audio_play_sound(_sound, 0, false, real(soundInfoArr[_i].volume), 0, real(soundInfoArr[_i].pitch));	
				}
				else {
					audio_stop_sound(_sound);
				}
				
			}
		}
		
	}
	
	for (var _i = 1; _i < playerCount; _i++) {
		if (point_in_rectangle(mouse_x, mouse_y, 1250, 100 + _i * yOffset, 1350, 150 + _i * yOffset)) {
			if (audio_is_playing(asset_get_index(soundInfoArr[_i].sfxName))) {
				audio_stop_sound(asset_get_index(soundInfoArr[_i].sfxName));
			}
			array_delete(soundInfoArr, _i, 1);
			playerCount--;
			
			break;
		}
	}
	
	if (point_in_rectangle(mouse_x, mouse_y, 450, 225 + yOffset * (playerCount - 1), 550, 275 + yOffset * (playerCount - 1))) {
			playerCount++;
			array_push(soundInfoArr, {sfxName: "", volume: "1", pitch: "1"});
	}
}