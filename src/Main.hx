import systems.*;
import data.*;
import scenes.*;

class Main extends hxd.App {
    var updates:List<Float -> Bool>;

     override function init() {
        updates = new List<Float -> Bool>();
        engine.backgroundColor = 0xffffff;
        var data:String = hxd.Res.meta.entry.getText();
        MetaData.load(data);
        Data.init();
        //Render.init(s2d);
        var title = new TitleScene();
        title.enter();
        s2d.addChild(title);
    }

    override function update(dt:Float) {
        Actions.update(dt);
        Render.update(dt);
        processUpdates(dt);
    }

    function processUpdates(dt:Float) {
        updates = updates.filter(function(update) return update(dt));
    }

    static function main() {
        hxd.Res.initEmbed();
        new Main();
    }
}