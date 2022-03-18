//wave, type, spawnpoint, delay

waves = ds_list_create();

for (var i = 0; i < 100; i += 1)
{
	ds_list_add(waves, [0, O_Blob, 0, 0 + (i * 100)]);
	ds_list_add(waves, [0, O_Skull, 0, 5 + (i * 100)]);
	
	ds_list_add(waves, [1, O_Skull, 1, 50 + (i * 70)]);
	ds_list_add(waves, [1, O_Blob, 1, 50 + (i * 70)]);
	ds_list_add(waves, [1, O_Eyeball, 1, 50 + (i * 70)]);
	
	ds_list_add(waves, [2, O_Eyeball, 1, 100 + (i * 60)]);
	
	ds_list_add(waves, [3, O_Eyeball, 1, 500 + (i * 50)]);
	ds_list_add(waves, [3, O_Skull, 1, 600 + (i * 50)]);
	ds_list_add(waves, [3, O_Blob, 1, 700 + (i * 50)]);
	
	ds_list_add(waves, [3, O_Wasp, 1, 900 + (i * 40)]);
	
	
		
}

spawn[0, 0] = 40;
spawn[0, 1] = 90;
spawn[1, 0] = 550;
spawn[1, 1] = 90;




//ds_list_add(waves, [0, O_Blob, 0, 0]);
//ds_list_add(waves, [0, O_Blob, 0, 50]);
//ds_list_add(waves, [0, O_Blob, 0, 100]);
//ds_list_add(waves, [0, O_Blob, 0, 150]);
//ds_list_add(waves, [0, O_Blob, 0, 200]);
//ds_list_add(waves, [0, O_Blob, 0, 250]);
//ds_list_add(waves, [0, O_Blob, 0, 300]);
//ds_list_add(waves, [0, O_Blob, 0, 350]);
//ds_list_add(waves, [0, O_Blob, 0, 400]);
//ds_list_add(waves, [0, O_Blob, 0, 450]);
//ds_list_add(waves, [0, O_Blob, 0, 500]);

//ds_list_add(waves, [1, O_Skull, 1, 350]);
//ds_list_add(waves, [1, O_Skull, 1, 400]);
//ds_list_add(waves, [1, O_Skull, 1, 450]);
//ds_list_add(waves, [1, O_Skull, 0, 500]);
//ds_list_add(waves, [1, O_Skull, 1, 550]);
//ds_list_add(waves, [1, O_Skull, 1, 600]);
//ds_list_add(waves, [1, O_Skull, 0, 650]);
//ds_list_add(waves, [1, O_Skull, 1, 700]);
//ds_list_add(waves, [1, O_Skull, 1, 750]);
//ds_list_add(waves, [1, O_Skull, 0, 800]);
//ds_list_add(waves, [1, O_Skull, 1, 850]);
//ds_list_add(waves, [1, O_Skull, 1, 950]);
//ds_list_add(waves, [1, O_Skull, 0, 950]);
//ds_list_add(waves, [1, O_Skull, 1, 1050]);
//ds_list_add(waves, [1, O_Skull, 1, 1150]);
//ds_list_add(waves, [1, O_Skull, 1, 1250]);

//ds_list_add(waves, [2, O_Enemy_Parent, 0, 1000]);
//ds_list_add(waves, [2, O_Enemy_Parent, 1, 1050]);
//ds_list_add(waves, [2, O_Enemy_Parent, 1, 1100]);
//ds_list_add(waves, [2, O_Enemy_Parent, 1, 1150]);
//ds_list_add(waves, [2, O_Enemy_Parent, 0, 1200]);
//ds_list_add(waves, [2, O_Enemy_Parent, 0, 1250]);
//ds_list_add(waves, [2, O_Enemy_Parent, 1, 1300]);
//ds_list_add(waves, [2, O_Enemy_Parent, 1, 1350]);
//ds_list_add(waves, [2, O_Enemy_Parent, 0, 1400]);
//ds_list_add(waves, [2, O_Enemy_Parent, 0, 1450]);
//ds_list_add(waves, [2, O_Enemy_Parent, 1, 1550]);
//ds_list_add(waves, [2, O_Enemy_Parent, 1, 1550]);
//ds_list_add(waves, [2, O_Enemy_Parent, 1, 1550]);



