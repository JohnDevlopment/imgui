project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++11"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
    
    files {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }

filter "toolset:gcc"
    buildoptions "-fPIC"

filter "system:windows"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "On"

filter { "system:windows", "configurations:Release" }
    buildoptions "/MT"
