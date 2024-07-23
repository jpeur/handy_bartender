import Toybox.Lang;
import Toybox.WatchUi;

class handy_bartenderRecipeDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new handy_bartenderMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }
}