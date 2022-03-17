//wave, type, spawnpoint, delay

waves = ds_list_create();
ds_list_add(waves, [0, O_Enemy_Parent, 0, 0]);
ds_list_add(waves, [0, O_Enemy_Parent, 1, 50]);
ds_list_add(waves, [0, O_Enemy_Parent, 0, 100]);

ds_list_add(waves, [1, O_Enemy_Parent, 0, 10]);
ds_list_add(waves, [1, O_Enemy_Parent, 0, 20]);
ds_list_add(waves, [1, O_Enemy_Parent, 0, 30]);

ds_list_add(waves, [2, O_Enemy_Parent, 1, 10]);
ds_list_add(waves, [2, O_Enemy_Parent, 1, 20]);
ds_list_add(waves, [2, O_Enemy_Parent, 1, 30]);

spawn[0, 0] = 0;
spawn[0, 1] = 50;
spawn[1, 0] = 150;
spawn[1, 1] = 500;