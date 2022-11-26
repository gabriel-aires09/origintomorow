extends Control

onready var http : HTTPRequest = $HTTPRequest
onready var cor : LineEdit = $Container/VBoxContainer2/Name/LineEdit
onready var notification : Label = $Container/Notification
onready var idade : SpinBox = $Container/VBoxContainer2/Idade/SpinBox
onready var choice1 : Label = $Container/VBoxContainer2/Choice/Choice1

var new_profile := false
var information_sent := false
var profile := {
	"cor": {},
	"idade": {},
	"choice1": {}
} setget set_profile

func _on_HTTPRequest_request_completed(result: int, response_code: int, headers: PoolStringArray, body: PoolByteArray) -> void:
	var result_body := JSON.parse(body.get_string_from_ascii()).result as Dictionary
	match response_code:
		404:
			notification.text = "Please, enter your information"
			new_profile = true
			return
		200:
			if information_sent == true:
				notification.text = "Information saved successfully"
				information_sent = false
			self.profile = result_body.fields

func _ready() -> void:
	Firebase.get_document("users/%s" % Firebase.user_info.id, http)

func _on_ConfirmButton_pressed() -> void:
	profile.cor = { "stringValue": cor.text}
	profile.idade = { "integerValue": idade.value }
	profile.choice1 = { "stringValue": choice1.text}
	match new_profile:
		true:
			Firebase.save_document("users?documentId=%s" % Firebase.user_info.id, profile, http)
			yield(get_tree().create_timer(2.0), "timeout")
			get_tree().change_scene("res://Menu.tscn")
		false:
			Firebase.update_document("users/%s" % Firebase.user_info.id, profile, http)
			yield(get_tree().create_timer(2.0), "timeout")
			get_tree().change_scene("res://Menu.tscn")
	information_sent = true


func set_profile(value: Dictionary) -> void:
	profile = value
	cor.text = profile.cor.stringValue
	idade.value = int(profile.idade.integerValue)
	choice1.text = profile.choice1.stringValue
