//menu
switch (menuPos)
{
    case 0:
    {
        room_goto(room1);
        break;
    }
    
    case 1:
    {
        
        room_goto(room_levels);
        break;
    }
      
    case 2:
    {
        game_end();
        break;
    }
    default:
    break;
}
