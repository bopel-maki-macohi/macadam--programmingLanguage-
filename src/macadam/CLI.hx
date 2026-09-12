package macadam;

using StringTools;

class CLI {
	static var args:Array<String> = [];
	static var workingDirectory:String = '';

	static function log(message:Dynamic)
		Sys.println('macadam : $message');

	static function main() {
		args = Sys.args();
		args.remove(args[args.length - 1]);

		workingDirectory = Sys.getCwd();

		// log(workingDirectory);
		// log(args);

		if (args.length < 1) {
			log('No Args');
			return;
		}

		if (args[0].toLowerCase() == 'interp') {
			args.shift();
			interp();
			return;
		}

		log('No implementation for params: $args');
	}

	static function interp() {
		if (args.length < 1) {
			log('No Args for interp');
			return;
		}

        var code:Array<String> = [];

        switch (args[0].toLowerCase())
        {
            case '-file', '-f':

            default:
        }
	}
}
