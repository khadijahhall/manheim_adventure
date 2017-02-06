defmodule Adventure.Clue do

  def clue(clue_command) do
    clue_command = clue_command
    |> String.downcase
    |> IO.inspect

    cond do
      String.starts_with?(clue_command, "jump") == true ->
      IO.puts "Oh no! You didn’t jump high enough! Try something else!"
      String.starts_with?(clue_command, "dig") == true ->
      IO.puts "Oh no! You didn’t dig deep enough! Try something else!"
      String.starts_with?(clue_command, "run") == true ->
      IO.puts "Oh no! You didn’t run fast enough! Try something else!"
      String.starts_with?(clue_command, "climb") == true ->
      IO.puts "Hurray!! You made it!"


    end
    # take in string
    # decide if string starts with acceptable command
    # respond appropriately according to command


  end

end
