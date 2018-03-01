#ifndef FLOOR_H
#define FLOOR_H

    #define FLOOR_COUNT 10
    
    #include "list.h"
    #include "map.h"

    typedef struct floor {
        int loaded;
        list_t *enemy_list;
        list_t *item_list;
        map_t map;
        int down_y;
        int down_x;
        int up_y;
        int up_x;
    } floor_t;

    void floor_goto(int f);
    void floor_down();
    void floor_up();
    int floor_get();
    void floor_add_enemy_list(list_t * enemies);
#endif
