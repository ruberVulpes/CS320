    #include <stdio.h>
    #include <string.h>
    #include <lua.h>
    #include <lauxlib.h>
    #include <lualib.h>
    
    int main (int argc, char *argv[]) {
	printf("Assignment #4-1, William Fox, wfox96@gmail.com");
        lua_State *L = luaL_newstate();   /* opens Lua */
        luaL_openlibs(L);             /* opens the lua libs */
	luaL_dofile (L, argv[1]);
    
      lua_close(L);
      return 0;
    }
