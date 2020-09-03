/obj/item/ammo_casing/energy/beamshot/inferno
	name = "inferno generator"
	beam_icon = "inferno"
	cap_icon = "red_laser"
	beam_name = "inferno beam"
	damage = 40
	meltwalls = 1
	damage_type = BURN
	flag = "laser"
	select_name = "inferno shot"
	fire_sound = 'sound/weapons/flamer.ogg'
	flamable = 1
	antivehicle = 1

/obj/item/ammo_box/magazine/inferno
	name = "Inferno Magazine"
	icon_state = "sicklemaginf"
	origin_tech = "combat=2"
	ammo_type = /obj/item/ammo_casing/energy/beamshot/inferno
	caliber = "Serious Burns"
	max_ammo = 20
	multiple_sprites = 1

/obj/item/weapon/gun/projectile/inferno
	name = "Inferno Pistol"
	desc = "An inferno pistol. Utilizes melta technology in a portable form."
	icon_state = "inferno"
	item_state = "inferno"
	fire_sound = 'sound/weapons/flamer.ogg'
	w_class = 3.0
	m_amt = 2000
	origin_tech = "combat=6;magnets=10"
	mag_type = /obj/item/ammo_box/magazine/inferno
	ejectcasing = 0
	var/cooldown = 1

/obj/item/weapon/gun/projectile/inferno/afterattack()
	if(cooldown)
		..()
		cooldown = 0
		sleep 15
		cooldown = 1
	else
		return


/obj/item/weapon/gun/projectile/inferno/update_icon()
	return