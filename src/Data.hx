import data.*;

class Data {

    public static var cellActions:Array<CellAction>;
    public static var farmers:Array<Farmer>;
    public static var cells:Map<TileId, MetaData.TileTypeKind>;
    public static var turns:Array<TurnData>;

    public static function init() {
        cellActions = [];
        var numWorkers:Int = MetaData.constants.get(initial_workers).value + 1;
        farmers = [for (i in 1...numWorkers) createFarmer(i)];
    }

    static function createFarmer(id:Int):Farmer {
        return {
            id:new FarmerId(id),
            hoursLeft:0,
            actions:[]
        };
    }
}
