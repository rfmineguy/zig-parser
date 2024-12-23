const std = @import("std");

const Token = enum { identifier, number, equal };

const Parser = struct {
    fn push(self: @This()) void {
        _ = self;
    }
    fn pop(self: @This()) void {
        _ = self;
    }
    fn check(self: @This(), token: Token) !Token {
        _ = self;
        _ = token;

        return Token.identifier;
    }
};

const AstFuncDecl = struct {
    pub fn parse(parser: Parser) !AstFuncDecl {
        parser.push();
        errdefer {
            parser.pop();
        }
        _ = try parser.check(Token.identifier);
        _ = try parser.check(Token.equal);
        return error.Fail;
    }
};

pub fn main() !void {
    const p = Parser{};
    _ = try AstFuncDecl.parse(p);
}
