partSys = part_system_create();

//Exhaust
partTypeExhaust = part_type_create();
part_type_sprite(partTypeExhaust, SprExhaust, false, false, false);
part_type_size(partTypeExhaust, .4, .5, 0.07, 0);
part_type_color3(partTypeExhaust, c_white, c_purple, c_lime);
part_type_alpha3(partTypeExhaust, 1,1,0);
part_type_life(partTypeExhaust, 20,20);

partTypeEnemyExhaust = part_type_create();
part_type_sprite(partTypeEnemyExhaust, SprExhaust, false, false, false);
part_type_size(partTypeEnemyExhaust, .4, .5, 0.07, 0);
part_type_color3(partTypeEnemyExhaust, c_red, c_black, c_navy);
part_type_alpha3(partTypeEnemyExhaust, 1,1,0);
part_type_life(partTypeEnemyExhaust, 20,20);

//Debris
partTypeAsteroidDebris = part_type_create();
part_type_sprite(partTypeAsteroidDebris, SprAsteroidDebrisStrip4, false, false, true)
part_type_life(partTypeAsteroidDebris, 60, 80);
part_type_alpha3(partTypeAsteroidDebris, .8, .8, 0);
part_type_direction(partTypeAsteroidDebris, 0, 359, 0, false);
part_type_orientation(partTypeAsteroidDebris, 0, 359, 1, false, false);
part_type_speed(partTypeAsteroidDebris, 2,2.4, -0.02, 0);

partTypeShipDebris = part_type_create();
part_type_sprite(partTypeShipDebris, SprShipDebrisStrip5, false, false, true)
part_type_size(partTypeShipDebris, .5,1,0,0);
part_type_life(partTypeShipDebris, 60, 80);
part_type_alpha3(partTypeShipDebris, .6, .6, 0);
part_type_direction(partTypeShipDebris, 0, 359, 0, false);
part_type_orientation(partTypeShipDebris, 0, 359, 1, false, false);
part_type_speed(partTypeShipDebris, 3,4, -0.05, 0);
