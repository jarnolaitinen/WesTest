class: CommandLineTool

cwlVersion: v1.0

baseCommand: [ "gunzip" ]

arguments: [ "-c" ]

requirements:
#  - class: InlineJavascriptRequirement
  - class: DockerRequirement
    dockerPull: jlaitinen/lftpalpine

inputs:
  - id: zip_file
    type: File
    inputBinding:
      position: 1

outputs:
  - id: gunzipped_file
    type: stdout
stdout: $(inputs.zip_file.nameroot)
