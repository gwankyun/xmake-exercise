add_rules("mode.debug", "mode.release")

add_requires("vcpkg::fmt", "vcpkg::spdlog", {
    configs = {
        shared = true,
        runtimes = "MD"
    }
})

target("hello")
    set_kind("binary")
    add_files("src/*.cpp")
    add_packages("vcpkg::fmt", "vcpkg::spdlog")
    add_cxflags("/utf-8")
