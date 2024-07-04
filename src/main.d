// import necessary libctru functions
import ys3ds.ctru._3ds.gfx : gfxInitDefault, gfxScreen_t, gfxSwapBuffers, gfxExit;
import ys3ds.ctru._3ds.console : consoleInit;
import ys3ds.ctru._3ds.services.apt : aptMainLoop;
import ys3ds.ctru._3ds.services.hid : hidScanInput, hidKeysDown, KEY_START;
import ys3ds.ctru._3ds.services.gspgpu : gspWaitForVBlank;

// links to devkitarm, don't use `core`
pragma(printf)
extern (C) int printf(scope const char* format, scope const...);

extern(C) void main()
{
	gfxInitDefault();
	consoleInit(gfxScreen_t.GFX_TOP, null);

	printf("Hello, World!");

	while (aptMainLoop())
	{
		gspWaitForVBlank();
		gfxSwapBuffers();
		hidScanInput();

		uint kDown = hidKeysDown();
		if (kDown & KEY_START)
			break; // return to hbmenu
	}

	gfxExit();
}
