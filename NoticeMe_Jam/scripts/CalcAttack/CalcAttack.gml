////Use Attack Hitbox and Check for Hits

//mask_index = argument0;
//var hitByAttackNow = ds_list_create();
//var hits = instance_place_list(x, y, P_Entity, hitByAttackNow, true);
//if(hits > 0)
//{
//	for (var i = 0; i < hits; i++)
//	{
//		//if this instance has not yet been hit by this attack, hit it
//		var hitID = hitByAttackNow[| i];
//		if(ds_list_find_index(hitByAttack, hitID) == -1) 
//		{
//			ds_list_add(hitByAttack, hitID);
//			with(hitID)
//			{
//				image_blend = c_red;
//			}
//		}
//	}
//}

//ds_list_destroy(hitByAttackNow);

//mask_index = S_Player_down;
