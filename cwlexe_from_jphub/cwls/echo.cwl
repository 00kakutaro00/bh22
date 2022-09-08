
cwlVersion: v1.2
class: CommandLineTool
baseCommand: "echo"
hints:
    DockerRequirement:
        dockerPull: biocontainers/htseq:v0.11.2-1-deb-py3_cv1
stdout: hello.txt
inputs:
    inp1:
        type: string
        default: "Hello CWL"
        inputBinding:
            position: 1
    inp2:
        type: string
        default: "Hello jupyter"
        inputBinding:
            position: 2
outputs:
    output:
        type: stdout
