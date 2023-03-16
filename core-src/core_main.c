#define _XOPEN_SOURCE
#include <signal.h>
#include <lauxlib.h>

static const char* load_config = "\
    local result = {}\n\
";

int
sigign() {
    struct sigaction sa;
    sa.sa_handler = SIG_IGN;
    sa.sa_flags = 0;
    sigemptyset(&sa.sa_mask);
    sigaction(SIGPIPE, &sa, NULL);
    return 0;
}

int
main(int argc, char* argv[]) {
    sigign();
    struct lua_State* L = luaL_newstate();
    LuaL_openlibs(L);

    for(;;) {

    }
    return 0;
}