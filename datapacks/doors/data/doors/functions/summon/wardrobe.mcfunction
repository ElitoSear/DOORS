execute if entity @s[y_rotation=-45..45] align xyz run summon interaction ~0.5 ~ ~0.5 {Rotation:[0f,0f],Tags:["wardrobeinteraction","hidinginteraction"],width:1.6f,height:2f,response:1b,CustomName:'{"bold": true,"text": "Hide"}'}
execute if entity @s[y_rotation=-45..45] align xyz run summon interaction ~0.5 ~0.5 ~0.5 {Rotation:[0f,0f],Tags:["wardrobe","hidingspot"],width:0.1f,height:0.1f}

execute if entity @s[y_rotation=46..135] align xyz run summon interaction ~0.5 ~ ~0.5 {Rotation:[90f,0f],Tags:["wardrobeinteraction","hidinginteraction"],width:1.6f,height:2f,response:1b,CustomName:'{"bold": true,"text": "Hide"}'}
execute if entity @s[y_rotation=46..135] align xyz run summon interaction ~0.5 ~0.5 ~0.5 {Rotation:[90f,0f],Tags:["wardrobe","hidingspot"],width:0.1f,height:0.1f}

execute if entity @s[y_rotation=136..-135] align xyz run summon interaction ~0.5 ~ ~0.5 {Rotation:[180f,0f],Tags:["wardrobeinteraction","hidinginteraction"],width:1.6f,height:2f,response:1b,CustomName:'{"bold": true,"text": "Hide"}'}
execute if entity @s[y_rotation=136..-135] align xyz run summon interaction ~0.5 ~0.5 ~0.5 {Rotation:[180f,0f],Tags:["wardrobe","hidingspot"],width:0.1f,height:0.1f}

execute if entity @s[y_rotation=-134..-44] align xyz run summon interaction ~0.5 ~ ~0.5 {Rotation:[-90f,0f],Tags:["wardrobeinteraction","hidinginteraction"],width:1.6f,height:2f,response:1b,CustomName:'{"bold": true,"text": "Hide"}'}
execute if entity @s[y_rotation=-134..-44] align xyz run summon interaction ~0.5 ~0.5 ~0.5 {Rotation:[-90f,0f],Tags:["wardrobe","hidingspot"],width:0.1f,height:0.1f}