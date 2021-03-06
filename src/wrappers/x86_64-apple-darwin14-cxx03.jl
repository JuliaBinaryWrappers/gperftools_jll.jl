# Autogenerated wrapper script for gperftools_jll for x86_64-apple-darwin14-cxx03
export libtcmalloc, libtcmalloc_and_profiler, libprofiler, libtcmalloc_debug, libtcmalloc_minimal_debug, libtcmalloc_minimal

using LibUnwind_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"
LIBPATH_default = "~/lib:/usr/local/lib:/lib:/usr/lib"

# Relative path to `libtcmalloc`
const libtcmalloc_splitpath = ["lib", "libtcmalloc.4.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtcmalloc_path = ""

# libtcmalloc-specific global declaration
# This will be filled out by __init__()
libtcmalloc_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtcmalloc = "@rpath/libtcmalloc.4.dylib"


# Relative path to `libtcmalloc_and_profiler`
const libtcmalloc_and_profiler_splitpath = ["lib", "libtcmalloc_and_profiler.4.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtcmalloc_and_profiler_path = ""

# libtcmalloc_and_profiler-specific global declaration
# This will be filled out by __init__()
libtcmalloc_and_profiler_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtcmalloc_and_profiler = "@rpath/libtcmalloc_and_profiler.4.dylib"


# Relative path to `libprofiler`
const libprofiler_splitpath = ["lib", "libprofiler.0.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libprofiler_path = ""

# libprofiler-specific global declaration
# This will be filled out by __init__()
libprofiler_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libprofiler = "@rpath/libprofiler.0.dylib"


# Relative path to `libtcmalloc_debug`
const libtcmalloc_debug_splitpath = ["lib", "libtcmalloc_debug.4.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtcmalloc_debug_path = ""

# libtcmalloc_debug-specific global declaration
# This will be filled out by __init__()
libtcmalloc_debug_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtcmalloc_debug = "@rpath/libtcmalloc_debug.4.dylib"


# Relative path to `libtcmalloc_minimal_debug`
const libtcmalloc_minimal_debug_splitpath = ["lib", "libtcmalloc_minimal_debug.4.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtcmalloc_minimal_debug_path = ""

# libtcmalloc_minimal_debug-specific global declaration
# This will be filled out by __init__()
libtcmalloc_minimal_debug_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtcmalloc_minimal_debug = "@rpath/libtcmalloc_minimal_debug.4.dylib"


# Relative path to `libtcmalloc_minimal`
const libtcmalloc_minimal_splitpath = ["lib", "libtcmalloc_minimal.4.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libtcmalloc_minimal_path = ""

# libtcmalloc_minimal-specific global declaration
# This will be filled out by __init__()
libtcmalloc_minimal_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libtcmalloc_minimal = "@rpath/libtcmalloc_minimal.4.dylib"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"gperftools")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (LibUnwind_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (LibUnwind_jll.LIBPATH_list,))

    global libtcmalloc_path = normpath(joinpath(artifact_dir, libtcmalloc_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtcmalloc_handle = dlopen(libtcmalloc_path)
    push!(LIBPATH_list, dirname(libtcmalloc_path))

    global libtcmalloc_and_profiler_path = normpath(joinpath(artifact_dir, libtcmalloc_and_profiler_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtcmalloc_and_profiler_handle = dlopen(libtcmalloc_and_profiler_path)
    push!(LIBPATH_list, dirname(libtcmalloc_and_profiler_path))

    global libprofiler_path = normpath(joinpath(artifact_dir, libprofiler_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libprofiler_handle = dlopen(libprofiler_path)
    push!(LIBPATH_list, dirname(libprofiler_path))

    global libtcmalloc_debug_path = normpath(joinpath(artifact_dir, libtcmalloc_debug_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtcmalloc_debug_handle = dlopen(libtcmalloc_debug_path)
    push!(LIBPATH_list, dirname(libtcmalloc_debug_path))

    global libtcmalloc_minimal_debug_path = normpath(joinpath(artifact_dir, libtcmalloc_minimal_debug_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtcmalloc_minimal_debug_handle = dlopen(libtcmalloc_minimal_debug_path)
    push!(LIBPATH_list, dirname(libtcmalloc_minimal_debug_path))

    global libtcmalloc_minimal_path = normpath(joinpath(artifact_dir, libtcmalloc_minimal_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libtcmalloc_minimal_handle = dlopen(libtcmalloc_minimal_path)
    push!(LIBPATH_list, dirname(libtcmalloc_minimal_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

