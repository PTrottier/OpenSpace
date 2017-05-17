return {
    {
        Name = "Sun Imagery",
        Parent = "SolarSystemBarycenter",
        Dependencies = {"SDO Plane", "Stereo Plane"},
        Renderable = {
            -- This is a really bad name
            Type = "RenderableSpacecraftCameraSphere",
        },
        Transform = {
            Translation = {
                Type = "SpiceTranslation",
                Body = "SUN",
                Observer = "SSB",
                Kernels = "${OPENSPACE_DATA}/spice/de430_1850-2150.bsp"
            },
            Rotation = {
                Type = "SpiceRotation",
                SourceFrame = "IAU_SUN",
                DestinationFrame = "GALACTIC"
            }
        }
    },
}