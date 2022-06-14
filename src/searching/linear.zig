const std = @import("std");


pub fn linear_search(comptime T: type, array: std.ArrayList, finding: type) ?usize {
    for (array) |idx, ele| {
        if (ele == finding) {
            return idx;
        }
    }

    return null;
}