project "ImGuizmo"
	kind "StaticLib"
	language "C++"
    staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"ImZoomSlider.h",
		"ImSequencer.h",
		"ImSequencer.cpp",
		"ImGuizmo.h",
		"ImGuizmo.cpp",
		"ImGradient.h",
		"ImGradient.cpp",
		"ImCurveEdit.h",
		"ImCurveEdit.cpp",
		"GraphEditor.h",
		"GraphEditor.cpp"
	}

	includedirs
	{
		"%{includeDir.ImGui}"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++20"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"