//put things to do with the textbox in here
//if you just need a next line just do i++ , str = ""  
//etc.
if(global.pause) {exit;}
if(count < string_length(message)) {exit;}
if(count >= string_length(message))
{
    if(i == 0){
        if(global.musicOn)
            audio_play_sound(snd_text,0,0);
        i++;
        str = "";
    }
    else{
        instance_destroy();
    }
}    
