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
// and the menu system will still function even though they are no longer in game.
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
                    
                    with( __item)
                    {
                        // Other in the below statements will refer to the __id
                        // since that is the containter of this with.
                        // Otherwise the variables assigned won't be correct.
                        parent_menu       = other.id;
                        has_focus         = other.id;
                        has_general_focus = false;
                    }
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
                    
                    with( __item)
                    {
                        parent_menu = other.id;
                    }
                }
            }
        }
    }
}


