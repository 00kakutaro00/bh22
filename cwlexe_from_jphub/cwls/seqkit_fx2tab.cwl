
cwlVersion: v1.0
class: CommandLineTool
baseCommand: [ fx2tab ]
hints:
    DockerRequirement:
        dockerPull: pegi3s/seqkit:2.3.0

inputs:
    fastx:
        type: File
        inputBinding:
            position: 1
    outputname:
        type: string
        default: "output.tsv"
outputs:
    outputfile:
        type: stdout

stdout: $(inputs.outputname)


