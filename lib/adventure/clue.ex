defmodule Adventure.Clue do

  def clue(clue_command) do
    clue_command = clue_command
    |> String.downcase
    |> IO.inspect

    cond do
      String.starts_with?(clue_command, "jump") == true ->
       "Oh no! You didn’t jump high enough! Try something else!"
      String.starts_with?(clue_command, "dig") == true ->
     "Oh no! You didn’t dig deep enough! Try something else!"
      String.starts_with?(clue_command, "run") == true ->
     "Oh no! You didn’t run fast enough! Try something else!"
      String.starts_with?(clue_command, "climb") == true ->
       "Hurray!! You made it!"
        true ->
       "You have used an incorrect command! Make sure you ask Jabari to either jump, dig, run, or climb!"


    end
    # take in string
    # decide if string starts with acceptable command
    # respond appropriately according to command


  end

end
