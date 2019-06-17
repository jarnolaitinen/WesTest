class: Workflow
cwlVersion: v1.0
id: unzip_test
label: unzip_test

inputs:
  - id: reference_genome
    type: File
outputs: 
  - id: unzipped
    outputSource:
      - gunzip/unzipped_file
    type: File

steps:
  - id: gunzip
    in:
      - id: zip_file
        source:
          - reference_genome
    out:
      - id: unzipped_file
    run: gunzip.cwl

