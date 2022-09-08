
cwlVersion: v1.2
class: CommandLineTool
baseCommand: "echo"
hints:
    DockerRequirement:
        dockerPull: biocontainers/htseq:v0.11.2-1-deb-py3_cv1
stdout: hello.txt
inputs:
    inp:
        type: string
        default: "Hello CWL"
        inputBinding:
            position: 1
outputs:
    output:
        type: stdout
