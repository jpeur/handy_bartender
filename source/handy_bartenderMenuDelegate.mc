import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;

class handy_bartenderMenuDelegate extends WatchUi.MenuInputDelegate {

    function initialize() {
        MenuInputDelegate.initialize();
    }

    function onMenuItem(item as Symbol) as Void {
        var view = null;
        if (item == :aperol_spritz) {
            view = new handy_bartenderRecipeView("3 parts Prosecco\n2 parts Aperol\n1 part soda water\nOrange slice for garnish\nIce");
        } else if (item == :margarita) {
            view = new handy_bartenderRecipeView("2 oz tequila\n1 oz lime juice\n1 oz Cointreau\nSalt for rimming the glass\nLime slice for garnish\nIce");
        } else if (item == :mojito) {
            view = new handy_bartenderRecipeView("2 oz white rum\n1/2 oz lime juice\n1 tsp sugar\n6-8 fresh mint leaves\nSoda water\nLime slice & mint sprig\nIce");
        } else if (item == :old_fashioned) {
            view = new handy_bartenderRecipeView("2 oz bourbon/rye whiskey\n1 sugar cube\n2 dashes Angostura bitters\nOrange twist for garnish\nIce");
        } else if (item == :cosmopolitan) {
            view = new handy_bartenderRecipeView("1 1/2 oz vodka\n1 oz cranberry juice\n1/2 oz Cointreau\n1/2 oz fresh lime juice\nLime twist for garnish\nIce");
        } else if (item == :pina_colada) {
            view = new handy_bartenderRecipeView("2 oz light rum\n1 oz coconut cream\n1 oz heavy cream\n6 oz fresh pineapple juice\n1/2 cup crushed ice\nPineapple slice\nMaraschino cherry");
        } else if (item == :martini) {
            view = new handy_bartenderRecipeView("2 1/2 oz gin\n1/2 oz dry vermouth\nLemon twist or olive garnish\nIce");
        } else if (item == :daiquiri) {
            view = new handy_bartenderRecipeView("2 oz light rum\n1 oz lime juice\n3/4 oz simple syrup\nLime twist for garnish\nIce");
        } else if (item == :manhattan) {
            view = new handy_bartenderRecipeView("2 oz rye whiskey\n1 oz sweet vermouth\n2 dashes Angostura bitters\nMaraschino cherry garnish\nIce");
        } else if (item == :bloody_mary) {
            view = new handy_bartenderRecipeView("2 oz vodka\n4 oz tomato juice\n1/2 oz lemon juice\n2 dashes Worcestershire\n2 dashes hot sauce\nSalt and pepper to taste\nCelery stalk\nLemon wedge\nIce");
        }
        WatchUi.pushView(view, new handy_bartenderRecipeDelegate(view), WatchUi.SLIDE_UP);
    }

    // exit app on back
    function onBack() as Boolean {
        WatchUi.popView(WatchUi.SLIDE_IMMEDIATE);
        Application.getApp().onStop(null);
        System.exit();
    }
}
