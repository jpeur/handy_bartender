import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class handy_bartenderApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {

    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
        System.exit();
        
    }

    // Return the initial view of your application here
    function getInitialView() as [Views] or [Views, InputDelegates] {
        return [ new handy_bartenderView(), new handy_bartenderDelegate() ];
    }

}

function getApp() as handy_bartenderApp {
    return Application.getApp() as handy_bartenderApp;
}