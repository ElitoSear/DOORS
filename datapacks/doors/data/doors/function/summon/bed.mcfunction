execute if entity @s[y_rotation=-45..45] align xyz run summon interaction ~ ~ ~ {Rotation:[0f,0f],Tags:["bed_interaction","hiding_interaction"],width:2.1f,height:0.6f,response:1b}
execute if entity @s[y_rotation=-45..45] align xyz run summon interaction ~ ~ ~ {Rotation:[0f,0f],Tags:["bed","hiding_spot"],width:0.1f,height:0.1f}

execute if entity @s[y_rotation=46..135] align xyz run summon interaction ~ ~ ~ {Rotation:[90f,0f],Tags:["bed_interaction","hiding_interaction"],width:2.1f,height:0.6f,response:1b}
execute if entity @s[y_rotation=46..135] align xyz run summon interaction ~ ~ ~ {Rotation:[90f,0f],Tags:["bed","hiding_spot"],width:0.1f,height:0.1f}

execute if entity @s[y_rotation=136..-135] align xyz run summon interaction ~ ~ ~ {Rotation:[180f,0f],Tags:["bed_interaction","hiding_interaction"],width:2.1f,height:0.6f,response:1b}
execute if entity @s[y_rotation=136..-135] align xyz run summon interaction ~ ~ ~ {Rotation:[180f,0f],Tags:["bed","hiding_spot"],width:0.1f,height:0.1f}

execute if entity @s[y_rotation=-134..-44] align xyz run summon interaction ~ ~ ~ {Rotation:[-90f,0f],Tags:["bed_interaction","hiding_interaction"],width:2.1f,height:0.6f,response:1b}
execute if entity @s[y_rotation=-134..-44] align xyz run summon interaction ~ ~ ~ {Rotation:[-90f,0f],Tags:["bed","hiding_spot"],width:0.1f,height:0.1f}