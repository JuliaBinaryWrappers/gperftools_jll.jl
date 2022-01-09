# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule gperftools_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("gperftools")
JLLWrappers.@generate_main_file("gperftools", UUID("c8ae51e6-ca1b-5cf7-8aa4-ff5973bfb1e4"))
end  # module gperftools_jll
