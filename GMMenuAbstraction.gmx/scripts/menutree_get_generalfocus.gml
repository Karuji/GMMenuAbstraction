///menutree_get_generalfocus(menu)

var __node = argument0;

while( __node.parent_menu != __node)
{
    __node.has_general_focus = true;
    __node.actionable = false;
    __node = __node.parent_menu;
}

__node.has_general_focus = true;
__node.actionable = false;
