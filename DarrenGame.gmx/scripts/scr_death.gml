if (global.checkpointRoom == room) //if player is in the room
{
   obj_player.x = global.checkpointx; //send the player to the checkpoint coordinates
   obj_player.y = global.checkpointy;
}
else
{
    obj_player.x = obj_player.startx   //send player to the srat coordinates
    obj_player.y = obj_player.starty
}


