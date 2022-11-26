extends Control

onready var http : HTTPRequest = $HTTPRequest
onready var cor : Label = $Cor
onready var notification : Label = $Notification
onready var idade : SpinBox = $Idade
onready var choice1 : Label = $HBoxContainer/Choice1

var new_profile := false
var information_sent := false
var profile := {
	"cor": {},
	"idade": {},
	"choice1": {}
} setget set_profile


func _on_HTTPRequest_request_completed(result, response_code, headers, body):
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
	dialogico1()
	Firebase.get_document("users/%s" % Firebase.user_info.id, http)
	olo2()
	

func dialogico1():
	var dialogo = Dialogic.start("Conversa1")
	add_child(dialogo)


func olo2():
	yield(get_tree().create_timer(3.0), "timeout")
	choice1.text = "Escolheu não Nadar"
	profile.cor = { "stringValue": cor.text}
	profile.idade = { "integerValue": idade.value }
	profile.choice1 = { "stringValue": choice1.text}
	match new_profile:
		true:
			Firebase.save_document("users?documentId=%s" % Firebase.user_info.id, profile, http)
		false:
			Firebase.update_document("users/%s" % Firebase.user_info.id, profile, http)
	information_sent = true




func set_profile(value: Dictionary) -> void:
	profile = value
	cor.text = profile.cor.stringValue
	idade.value = int(profile.idade.integerValue)
	choice1.text = profile.choice1.stringValue



