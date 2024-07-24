import Toybox.Lang;
import Toybox.WatchUi;
import Toybox.Application;

class handy_bartenderRecipeDelegate extends WatchUi.BehaviorDelegate {

    hidden var _M_view;

    function initialize(view) {
        BehaviorDelegate.initialize();
        _M_view = view;
    }

    function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new handy_bartenderMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

    function onBack() as Boolean {
        // WatchUi.pushView(new Rez.Menus.MainMenu(), new handy_bartenderMenuDelegate(), WatchUi.SLIDE_UP);
        WatchUi.popView(WatchUi.SLIDE_IMMEDIATE);
        return true;
    }

    // Input Delegate
    function onKey(event) {
        if(WatchUi.KEY_DOWN == event.getKey()) {
            _M_view.scrollUp();
        }
        else if(WatchUi.KEY_UP == event.getKey())
        {
            _M_view.scrollDown();
        }
        return true;
    }

    function onSwipe(swipeEvent) {
        if(swipeEvent.getDirection() == WatchUi.SWIPE_DOWN) {
            _M_view.scrollDown();
        }
        else if(swipeEvent.getDirection() == WatchUi.SWIPE_UP) {
            _M_view.scrollUp();
        }
        return true;
    }
}