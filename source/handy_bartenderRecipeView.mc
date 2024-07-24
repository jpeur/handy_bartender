import Toybox.Lang;
import Toybox.Graphics;
import Toybox.WatchUi;

class handy_bartenderRecipeView extends WatchUi.View {

    hidden var recipeText as Lang.String;
    hidden var myText;
    //View
    hidden var mYOffset = 0;

    function scrollUp(){
        mYOffset -= 50;
        System.println("Scroll Up: mYOffset = " + mYOffset);
        requestUpdate();
    }

    function scrollDown(){
        mYOffset += 50;
        System.println("Scroll Down: mYOffset = " + mYOffset);
        requestUpdate();
    }

    function initialize(recipe as Lang.String) {
        View.initialize();
        recipeText = recipe;
        mYOffset = 0;
    }

    function onShow() as Void {
        myText = new WatchUi.Text({
            :text => recipeText,
            :color => Graphics.COLOR_WHITE,
            :font => Graphics.FONT_TINY,
            :locX => WatchUi.LAYOUT_HALIGN_CENTER,
            :locY => WatchUi.LAYOUT_VALIGN_CENTER + mYOffset
        });
    }

    function onUpdate(dc as Graphics.Dc) {
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);
        dc.clear();
        var textHeight = dc.getTextDimensions(recipeText, Graphics.FONT_TINY)[1];
        myText = new WatchUi.Text({
            :text => recipeText,
            :color => Graphics.COLOR_WHITE,
            :font => Graphics.FONT_TINY,
            :locX => WatchUi.LAYOUT_HALIGN_CENTER,
            :locY => (dc.getHeight() - textHeight) / 2 + mYOffset
        });
        System.println("center plus offset:" + (dc.getHeight() / 2) + mYOffset);
        myText.draw(dc);
    }

    // public function draw(dc as Dc) as Void {
    //     var font = Graphics.FONT_XTINY;

    //     dc.setColor(Graphics.COLOR_DK_GRAY, Graphics.COLOR_TRANSPARENT);
    //     dc.drawText(dc.getWidth() / 2,
    //                 dc.getHeight() / 2,
    //                 font,
    //                 Graphics.fitTextToArea(myText, font, dc.getWidth()-10, dc.getHeight(), true),
    //                 Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER);
    // }

    function onHide() as Void {
    }
}
