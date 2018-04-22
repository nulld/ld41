package data;

abstract TileId(String) to String {

    public static inline var yAxis = "0,1,2,3,4,5";
    public static inline var xAxis = "A,B,C,D,E,F,G,H";

    public function new(x:String, y:String) {
        if (xAxis.indexOf(x) < 0)
            throw 'wrong x:$x';

        if (yAxis.indexOf(y) < 0)
            throw 'wrong y:$x';
        this = '$x$y';
    }

    public static function getAllX():Array<String> {
        return xAxis.split(",");
    }

    public static function getAllY():Array<String> {
        return yAxis.split(",");
    }
}