import Rotor.BasicRotors
import SassRotor

output_path = "priv/static/assets/application.css"
Rotor.watch :stylesheets, ["priv/assets/stylesheets/*.sass"], fn(_changed_files, all_files)->
  read_files(all_files)
  |> sass
  |> concat
  |> output_to(output_path)
end
