import Toybox.Lang;
import Toybox.WatchUi;

class handy_bartenderDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onSelect() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new handy_bartenderMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}