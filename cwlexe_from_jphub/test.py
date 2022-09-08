## 成功例：fastxにFile objectを渡す.

import cwltool
import cwltool.factory

fac = cwltool.factory.Factory()
print( fac.runtime_context.rm_tmpdir )
print( fac.runtime_context.outdir )

fac.runtime_context.rm_tmpdir = False
fac.runtime_context.outdir = "./result_seqkit/"

seqkit_1 = fac.make("./cwls/seqkit_fx2tab.cwl")
# fastx_obj = cwltool.hogehoge
result = seqkit_1( fastx= {"class": "File", "path":"./data/il7.fa","basename":"il7.fa", "contents":""} )

