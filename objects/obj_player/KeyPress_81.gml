/// @description equip/unequip helmet

if (helmet_equipped) {helmet_equipped = false; instance_destroy(obj_helmet)}
else helmet_equipped = true