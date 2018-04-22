package systems;

class Actions {
    
    public static function update(dt:Float) {
        for (action in Data.cellActions) {
            trace(action);
        }
    }
}