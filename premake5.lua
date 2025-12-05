project "Lua"
    kind "StaticLib"
    language "C"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
    
    files
    {
        "*.h",
        "*.c"
    }
    
    removefiles
    {
        "lua.c",
        "luac.c"
    }
    
    filter "system:windows"
        systemversion "latest"
        staticruntime "On"
    
    filter "system:macosx"
        systemversion "10.15"
    
    filter "system:linux"
        systemversion "latest"
        staticruntime "On"
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"
    
    filter "configurations:Release"
        runtime "Release"
        optimize "On"
