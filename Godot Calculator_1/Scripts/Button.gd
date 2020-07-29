extends Node2D

var ans = 0
var flag = 0

func _on_Button0_pressed():
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text += "0"

func _on_Button1_pressed():
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text += "1"

func _on_Button2_pressed():
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text += "2"

func _on_Button3_pressed():
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text += "3"

func _on_Button4_pressed():
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text += "4"

func _on_Button5_pressed():
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text += "5"

func _on_Button6_pressed():
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text += "6"

func _on_Button7_pressed():
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text += "7"

func _on_Button8_pressed():
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text += "8"

func _on_Button9_pressed():
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text += "9"

func _on_ButtonDec_pressed():
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text += "."

func _on_ButtonAdd_pressed():
	calculate()
	flag = 1
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text = "0"

func _on_ButtonSub_pressed():
	calculate()
	flag = 2
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text = "0"

func _on_ButtonMul_pressed():
	calculate()
	flag = 3
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text = "0"

func _on_ButtonDiv_pressed():
	calculate()
	flag = 4
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text = "0"

func _on_ButtonEqual_pressed():	
	calculate()
	flag = 0
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text = str(ans)

func _on_ButtonClear_pressed():
	ans = 0
	flag = 0
	$AudioStreamPlayer.play()
	$TextureRect/LabelAns.text = "0"

func calculate():
	if flag == 1:
		ans += float($TextureRect/LabelAns.text)
	elif flag == 2:
		ans -= float($TextureRect/LabelAns.text)
	elif flag == 3:
		ans *= float($TextureRect/LabelAns.text)
	elif flag == 4:
		ans /= float($TextureRect/LabelAns.text)
	else:
		ans = float($TextureRect/LabelAns.text)
