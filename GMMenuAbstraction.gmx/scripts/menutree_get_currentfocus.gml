///menutree_get_currentfocus(menu)

var __node = argument0;

while( __node.has_focus != __node)
{
    __node = __node.has_focus;
}

return __node;
