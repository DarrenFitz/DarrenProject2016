hsp = dir * movespeed;
vsp += grav;

//This is the horizontal collision of enemy with wall
if (place_meeting(x+hsp,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall))
    {
        x += sign(hsp);
        //Enemy head towards to player
        mp_potential_step(obj_player.x,obj_player.y,2,true);
    }
    hsp=0
    
    dir *= -1;
    image_xscale *= -1;  
}
x += hsp;

//This is the  vertical collison with wall
if (place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp=0
    
    if(offEdge) && !position_meeting(x + (sprite_width/2)*dir, y+(sprite_height/2)+8, obj_wall)
    {
        dir *= -1;
    }
    
}
y += vsp;


//The collision detection between enemy and player 
if (place_meeting(x,y,obj_player))
{
    if (obj_player.y < y-16)
    {
        with(obj_player) vsp = -jumpspeed;
         instance_destroy();
         audio_play_sound(snd_enemy,0,0);      
    }
    else
    {
           scr_death();
    }
}
