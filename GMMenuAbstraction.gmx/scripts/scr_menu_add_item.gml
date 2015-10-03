///scr_menu_add_item(id,obj_item,scr_attachment)

if( argument_count == 2)
{
    var __id   = argument[0];
    var __item = argument[1];
}

if( argument_count == 3)
{
    var __id   = argument[0];
    var __item = argument[1];
    var __atch = argument[2];
}

// Instance exists is important since some menu items can be dependant on a global
// state. Which can allow the objects to destroy themselves in their create events,
// and the menu system will still function even though they are no longer in.
if( instance_exists( __item))
{
    with( __id)
    {
        if( object_is_ancestor( object_index, par_menu))
        {
            if( argument_count == 2)
            {        
                if(  object_is_ancestor( __item.object_index, par_menu))
                {
                    var __width  = ds_grid_width( menu);
                    var __height = ds_grid_height( menu);
                    ds_grid_resize( menu, __width+1, __height);
                    menu[# __width, 0] = __item;
                    
                    __item.parent_menu = __id;
                    __item.has_focus = __id;
                }
            }
            
            if( argument_count == 3)
            {
                object_is_ancestor( __item.object_index, par_menu_item)
                {
                    var __width  = ds_grid_width( menu);
                    var __height = ds_grid_height( menu);
                    ds_grid_resize( menu, __width+1, __height);
                    menu[# __width, 0] = __item;
                    menu[# __width, 1] = __atch;
                    
                    __item.parent_menu = __id;
                }
            }
        }
    }
}


