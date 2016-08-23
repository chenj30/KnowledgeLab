//Overwrite save file
if (file_exists("KnowledgeLabSave.sav")) 
    file_delete("KnowledgeLabSave.sav");
//Create Save file
saveFile = file_text_open_write("KnowledgeLabSave.sav");
saveRoom = room;
file_text_write_real(saveFile, saveRoom);
file_text_close(saveFile);
//Display message saying it is saved
show_message("Your game has been saved!");
