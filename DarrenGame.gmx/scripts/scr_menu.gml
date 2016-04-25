//menu
switch (menuPos) //break statement for the menu
{
    case 0:
    {
        room_goto(room1);       //goes to room1
        break;
    }
    
    case 1:
    {
        
        room_goto(room_levels); //goes to room levels
        break;
    }
      
    case 2:
    {
        game_end(); // quits game
        break;
    }
    default:
    break;
}
