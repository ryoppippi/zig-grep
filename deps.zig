const std = @import("std");
const Pkg = std.build.Pkg;
const FileSource = std.build.FileSource;

pub const pkgs = struct {
    pub const regex = Pkg{
        .name = "regex",
        .source = FileSource{
            .path = ".gyro/zig-regex-omgtehlion-github.com-01bc351b/pkg/src/regex.zig",
        },
    };

    pub fn addAllTo(artifact: *std.build.LibExeObjStep) void {
        artifact.addPackage(pkgs.regex);
    }
};
