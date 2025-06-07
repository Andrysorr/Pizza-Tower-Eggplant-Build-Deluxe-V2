function scr_collide_destructibles()

{

                with (obj_player)

                {

                        if ((state == (92 << 0) && sprite_index == spr_playerN_noisebombspinjump) or state == (165 << 0) or state == (31 << 0) or state == (187 << 0) or state == (198 << 0) or (state == (58 << 0) && pogochargeactive == 1))

                        {

                                var arr = [[xscale, 0], [hsp + xscale, 0], [0, vsp + 1], [0, vsp - 1], [0, 1], [0, -1]];

                        for (var i = 0; i < array_length(arr); i++)

                        {

                                var b = arr[i];

                                if (place_meeting(x + b[0], y + b[1], obj_destructibles))

                                {

                                        var num = instance_place_list(x + b[0], y + b[1], obj_destructibles, global.instancelist, false);

                                        for (var j = 0; j < num; j++)

                                        {

                                                var inst = ds_list_find_value(global.instancelist, j);

                                                if (inst != -4 && inst != -1 && inst != undefined)

                                                {

                                                        with (inst)

                                                        {

                                                                GamepadSetVibration(0, 0.8, 0.8, 0.5);

                                                                instance_destroy();

                                                        }

                                                }

                                        }

                                        ds_list_clear(global.instancelist);

                                }

                        }

                }

                        if (state == (211 << 0) or state == (34 << 0) or ratmount_movespeed == 12 or state == (259 << 0) or state == (201 << 0) or state == (80 << 0) or state == (42 << 0) or state == (193 << 0) or state == (43 << 0) or state == (21 << 0) or state == (53 << 0) or state == (184 << 0) or state == (70 << 0) or state == (124 << 0) or state == (94 << 0) or state == (20 << 0) or sprite_index == spr_barrelroll or state == (41 << 0) or state == (121 << 0) or state == (47 << 0) or state == (65 << 0) or state == (38 << 0) or state == (48 << 0) or state == (5 << 0) or state == (19 << 0) or state == (153 << 0))

                        {

                                if place_meeting((x + hsp), y, obj_destructibles)

                                {

                                        if (character != "V")

                                        {

                                                with (instance_place((x + hsp), y, obj_destructibles))

                                                {

                                                        GamepadSetVibration(0, 0.8, 0.8, 0.5)

                                                        instance_destroy()

                                                }

                                                if (state == (104 << 0))

                                                        machpunchAnim = 1

                                        }

                                }

                        }

                        if (state == (107 << 0) && thrown == true)

                        {

                                if place_meeting((x - hsp), y, obj_destructibles)

                                {

                                        with (instance_place((x - hsp), y, obj_destructibles))

                                        {

                                                GamepadSetVibration(0, 0.8, 0.8, 0.5)

                                                instance_destroy()

                                        }

                                }

                        }

                        if ((state == (47 << 0) or sprite_index == spr_lonegustavo_groundpoundstart or sprite_index == spr_lonegustavo_groundpound or state == (254 << 0) or state == (10 << 0) or state == (165 << 0) or state == (76 << 0) or state == (19 << 0) or (state == (54 << 0) && bombup_dir == 1)) && vsp > 0)

                        {

                        var vy = 1;

                        if (state == (198 << 0) || sprite_index == spr_lonegustavo_groundpoundstart || sprite_index == spr_lonegustavo_groundpound)

                                vy = vsp;

                        if (place_meeting(x, y + vy, obj_destructibles))

                        {

                                var num = instance_place_list(x, y + vy, obj_destructibles, global.instancelist, false);

                                for (i = 0; i < num; i++)

                                {

                                        with (ds_list_find_value(global.instancelist, i))

                                        {

                                                GamepadSetVibration(0, 0.8, 0.8, 0.5);

                                                instance_destroy();

                                        }

                                }

                                ds_list_clear(global.instancelist);

                                if (state == (10 << 0) || state == (254 << 0))

                                {

                                        with (instance_place(x, y + vy, obj_tntblock))

                                        {

                                                GamepadSetVibration(0, 0.8, 0.8, 0.5);

                                                instance_destroy();

                                        }

                                        if (vsp > -11)

                                                vsp = -11;

                                        jumpstop = false;

                                }

                        }

                }

                if (state == (10 << 0))

                {

                        with (instance_place(x + xscale, y, obj_tntblock))

                        {

                                instance_destroy();

                                if (other.vsp > -11)

                                        other.vsp = -11;

                                jumpstop = false;

                        }

                        with (instance_place(x, y + vsp, obj_tntblock))

                        {

                                instance_destroy();

                                if (other.vsp > -11)

                                        other.vsp = -11;

                                jumpstop = false;

                        }

                        with (instance_place(x, y + 1, obj_tntblock))

                        {

                                instance_destroy();

                                if (other.vsp > -11)

                                        other.vsp = -11;

                                jumpstop = false;

                        }

                        with (instance_place(x, y - 1, obj_tntblock))

                        {

                                instance_destroy();

                                if (other.vsp > -11)

                                        other.vsp = -11;

                                jumpstop = false;

                        }

                }

               

                        var num = instance_place_list(x, (y + 1), obj_destructibleplatform, global.instancelist, 0)

                        for (var k = 0; k < num; k++)

                        {

                                with (ds_list_find_value(global.instancelist, k))

                                {

                                        falling = 1

                                        if (falling == 1)

                                                image_speed = 0.35

                                }

                        }

                        ds_list_clear(global.instancelist)

                        if (vsp <= 0.5 && (state == (92 << 0) or state == (192 << 0) or state == (121 << 0) or state == (104 << 0) or state == (265 << 0) or state == (58 << 0) or (state == (54 << 0) && bombup_dir == -1) or state == (80 << 0) or state == (37 << 0) or state == (9 << 0) or state == (97 << 0) or state == (22 << 0) or state == (121 << 0) or (state == (80 << 0) && (sprite_index == spr_player_breakdanceuppercut or sprite_index == spr_player_breakdanceuppercutend))))

                        {

                                var vy = -1

                                if (state == (80 << 0) && (sprite_index == spr_player_breakdanceuppercut or sprite_index == spr_player_breakdanceuppercutend))

                                        vy = vsp

                                if place_meeting(x, (y + vy), obj_destructibles)

                                {

                                        with (instance_place(x, (y + vy), obj_destructibles))

                                        {

                                                GamepadSetVibration(0, 0.6, 0.6, 0.5)

                                                instance_destroy()

                                                with (other)

                                                {

                                                        if (state != (97 << 0) && state != (80 << 0) && state != (37 << 0))

                                                                vsp = 0

                                                        if (state == (97 << 0))

                                                                vsp = -11

                                                }

                                        }

                                }

                        }

                        if (vsp >= 0 && (state == (108 << 0) or state == (76 << 0) or state == (111 << 0) or state == (197 << 0) or (state == (165 << 0) && vsp >= 10)))

                        {

                                if (place_meeting(x, y + vsp + 2, obj_destructibles))

                        {

                                var num = instance_place_list(x, y + vsp + 2, obj_destructibles, global.instancelist, false);

                                for (j = 0; j < num; j++)

                                        instance_destroy(ds_list_find_value(global.instancelist, j));

                                ds_list_clear(global.instancelist);

                        }

                }

                if (state == (108 << 0) || state == (76 << 0) || state == (111 << 0) || state == (165 << 0) || (state == (198 << 0) && vsp > 0))

                {

                        vy = 1;

                        if (state == (198 << 0))

                                vy = vsp + 4;

                        if (place_meeting(x, y + vy, obj_metalblock) && (freefallsmash >= 10 || state == (165 << 0) || state == (198 << 0)))

                        {

                                with (instance_place(x, y + vy, obj_metalblock))

                                        instance_destroy();

                        }

                }

                if (state == (102 << 0) || state == (65 << 0) || state == (104 << 0) || state == (80 << 0))

                {

                        with (instance_place(x + hsp, y, obj_destructibles))

                        {

                                var _destroyed = false;

                                with (other)

                                {

                                        if (place_meeting(x + hsp, y, obj_bigdestructibles) && state != (102 << 0) && state != (104 << 0) && state != (65 << 0))

                                        {

                                                instance_destroy(other);

                                                _destroyed = true;

                                        }

                                        else if (other.object_index != obj_bigdestructibles)

                                        {

                                                instance_destroy(other);

                                                _destroyed = true;

                                        }

                                        if (_destroyed && state == (43 << 0))

                                                hit_connected = true;

                                }

                        }

                }

        }

}

