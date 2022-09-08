
cwlVersion: v1.2
class: CommandLineTool
baseCommand: [ seqkit fx2tab ]
hints:
    DockerRequirement:
        dockerPull: pegi3s/seqkit:2.3.0

inputs:
    fastx:
        type: File
        inputBinding:
            position: 2
    outputname:
        type: string
        default: "output.tsv"
outputs:
    outputfile:
        type: stdout

stdout: $(inputs.outputname)


