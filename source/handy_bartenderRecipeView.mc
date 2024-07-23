import Toybox.Lang;
import Toybox.Graphics;
import Toybox.WatchUi;

class handy_bartenderRecipeView extends WatchUi.View {

    hidden var recipeText as Lang.String;
    hidden var myText;

    function initialize(recipe as Lang.String) {
        View.initialize();
        recipeText = recipe;
    }

    function onShow() as Void {
        myText = new WatchUi.Text({
            :text => recipeText,
            :color => Graphics.COLOR_WHITE,
            :font => Graphics.FONT_TINY,
            :locX => WatchUi.LAYOUT_HALIGN_CENTER,
            :locY => WatchUi.LAYOUT_VALIGN_CENTER
        });
    }

    function onUpdate(dc as Graphics.Dc) {
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);
        dc.clear();
        myText.draw(dc);
    }

    public function draw(dc as Dc) as Void {
        var font = Graphics.FONT_XTINY;

        dc.setColor(Graphics.COLOR_DK_GRAY, Graphics.COLOR_TRANSPARENT);
        dc.drawText(dc.getWidth() / 2,
                    dc.getHeight() / 2,
                    font,
                    Graphics.fitTextToArea(myText, font, dc.getWidth()-10, dc.getHeight(), true),
                    Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER);
    }

        function onHide() as Void {
    }
}
