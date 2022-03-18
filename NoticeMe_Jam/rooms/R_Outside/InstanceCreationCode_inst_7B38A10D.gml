//wave, type, spawnpoint, delay

waves = ds_list_create();
ds_list_add(waves, [0, O_Blob, 0, 0]);
ds_list_add(waves, [0, O_Blob, 1, 50]);
ds_list_add(waves, [0, O_Blob, 0, 100]);

ds_list_add(waves, [1, O_Skull, 0, 150]);
ds_list_add(waves, [1, O_Skull, 0, 200]);
ds_list_add(waves, [1, O_Skull, 0, 250]);

ds_list_add(waves, [2, O_Enemy_Parent, 1, 300]);
ds_list_add(waves, [2, O_Enemy_Parent, 1, 350]);
ds_list_add(waves, [2, O_Enemy_Parent, 1, 400]);

spawn[0, 0] = 100;
spawn[0, 1] = 200;
spawn[1, 0] = 300;
spawn[1, 1] = 200;

