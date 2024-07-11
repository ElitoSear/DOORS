def generate_json_files(num_files):
  """
  Generates num_files JSON files with the specified structure,
  updating texture path based on the achievement number.
  """
  for i in range(1, num_files + 1):
    data = {
      "credit": "Elito",
      "ambientocclusion": False,
      "texture_size": [128, 128],
      "textures": {
        0: f"achievement/{i}"  # Update only path with achievement number and extension
      },
      "elements": [
        {
          "from": [0, 0, 8],
          "to": [16, 16, 8],
          "faces": {
            "north": {"uv": [0, 0, 16, 16], "texture": "#0"},
            "east": {"uv": [0, 0, 0, 1], "texture": "#0"},
            "south": {"uv": [0, 0, 1, 1], "texture": "#0"},
            "west": {"uv": [0, 0, 0, 1], "texture": "#0"},
            "up": {"uv": [0, 0, 1, 0], "texture": "#0"},
            "down": {"uv": [0, 0, 1, 0], "texture": "#0"}
          }
        }
      ],
      "display": {
        "gui": {
          "rotation": [0, 180, 0]
        }
      }
    }

    filename = f"{i}.json"
    with open(filename, "w") as outfile:
      import json
      json.dump(data, outfile, indent=4)  # Indent for readability

# Change this number to modify the number of generated files
num_files_to_generate = 37

generate_json_files(num_files_to_generate)
print(f"Generated {num_files_to_generate} JSON files.")
