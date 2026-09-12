package macadam;

class CLI {

    static var args:Array<String> = [];
    static var workingDirectory:String = '';

	static function main() {
        final a = Sys.args();
        a.remove(a[a.length - 1]);
        args = a;
        workingDirectory = Sys.getCwd();

		Sys.println(workingDirectory);
		Sys.println(args);
	}
}
