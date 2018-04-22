package scenes;

class TitleScene extends h2d.Scene {
    
    public function new() {
        super();
        
    }

    public function enter() {
        new h2d.Bitmap(hxd.Res.title.toTile(), this);
    }

    public function exit() {

    }
}
