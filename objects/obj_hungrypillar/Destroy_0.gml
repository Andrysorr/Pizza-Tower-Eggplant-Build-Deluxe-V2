if (room == rm_editor)

{

}

if (ds_list_find_index(global.saveroom, id) == -1 && global.snickchallenge == 0)

{

    with (obj_baddie)

    {

        if (escape == 1)

        {

            visible = true

            instance_create(x, y, obj_genericpoofeffect)

        }

    }

    global.combo += 1

    global.combotime = 60

    global.fill = 4000

    switch room

    {

        case entrance_10:

            global.fill = 1800

            break

        case dungeon_secret1:

            global.fill = 1800

            break

        case farm_12b:

            global.fill = 2280

            break

        case saloon_6:

            global.fill = 1800

            break

        case saloon_1:

            global.fill = 1800

            break

        case saloon_5b:

            global.fill = 2640

            break

        case badland_treasure:

            global.fill = 3120

            var lay = layer_get_id("Backgrounds_scroll")

            layer_set_visible(lay, 1)

            break


    }

    instance_create_unique(0, 0, obj_baddiebutton_perma)

    with (obj_tv)

        chunkmax = global.fill

    with (obj_escapecollect)

        image_alpha = 1

    with (obj_escapecollectbig)

        image_alpha = 1

    scr_soundeffect(sfx_escaperumble)

    obj_camera.alarm[1] = 60

    instance_create(x, y, obj_bangeffect)

    instance_create(x, y, obj_slapstar)

    instance_create(x, y, obj_slapstar)

    instance_create(x, y, obj_slapstar)

    instance_create(x, y, obj_baddiegibs)

    instance_create(x, y, obj_baddiegibs)

    instance_create(x, y, obj_baddiegibs)

    if (global.coop == 1)

    {

        obj_player1.x = x

        obj_player2.x = x

        obj_player1.y = y

        obj_player2.y = y

    }

    with (obj_camera)

    {

        shake_mag = 3

        shake_mag_acc = 3 / room_speed

    }

    instance_destroy()

    with (instance_create(x, y, obj_sausageman_dead))

        sprite_index = spr_hungrypillar_dead

    scr_soundeffect(sfx_killenemy)

    instance_create(x, (y + 600), obj_itspizzatime)

    global.panic = 1

    switch room

    {

        case entrance_10:

            global.minutes = 2

            global.seconds = 30

            break

        case dungeon_secret1:

            global.minutes = 2

            global.seconds = 15

            break

        case farm_12b:

            global.minutes = 3

            global.seconds = 59

            break

        case badland_treasure:

            global.minutes = 5

            global.seconds = 30

            break

        case saloon_3:

            global.minutes = 5

            global.seconds = 30

            break

        case freezer_secret3:

            global.minutes = 5

            global.seconds = 30

            break

        case freezer_17:

            global.minutes = 6

            global.seconds = 30

            break

        case war_12:

            global.minutes = 9

            global.seconds = 59

            break

        case 803:

            global.minutes = 2

            global.seconds = 15

            break

        default:

            global.minutes = 5

            global.seconds = 30

            break

    }

    ds_list_add(global.saveroom, id)

}