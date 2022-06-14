const std = @import("std");

const searching = @import("/searching/index.zig");

pub fn main() anyerror!void {
}

test "searching" {
    const alloc = std.heap.page_allocator;

    var list = std.ArrayList(i32).init(alloc);
    list.appendSlice(&[_] i32 { 1, 2, 3, 5, 4, 0, 9 });

    var found = searching.linear_search(i32, list, 5);
    try std.testing.expect(found == 3);
}
