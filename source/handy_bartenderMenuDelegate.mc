import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;

class handy_bartenderMenuDelegate extends WatchUi.MenuInputDelegate {

    function initialize() {
        MenuInputDelegate.initialize();
    }

    function onMenuItem(item as Symbol) as Void {
        if (item == :aperol_spritz) {
            WatchUi.pushView(new handy_bartenderRecipeView("3 parts Prosecco\n2 parts Aperol\n1 part soda water\nOrange slice for garnish\nIce"), null, WatchUi.SLIDE_UP);
        } else if (item == :margarita) {
            WatchUi.pushView(new handy_bartenderRecipeView("2 oz tequila\n1 oz lime juice\n1 oz Cointreau\nSalt for rimming the glass\nLime slice for garnish\nIce"), null, WatchUi.SLIDE_UP);
        } else if (item == :mojito) {
            WatchUi.pushView(new handy_bartenderRecipeView("2 oz white rum\n1/2 oz lime juice\n1 tsp sugar\n6-8 fresh mint leaves\nSoda water\nLime slice & mint sprig\nIce"), null, WatchUi.SLIDE_UP);
        } else if (item == :old_fashioned) {
            WatchUi.pushView(new handy_bartenderRecipeView("2 oz bourbon/rye whiskey\n1 sugar cube\n2 dashes Angostura bitters\nOrange twist for garnish\nIce"), null, WatchUi.SLIDE_UP);
        } else if (item == :cosmopolitan) {
            WatchUi.pushView(new handy_bartenderRecipeView("1 1/2 oz vodka\n1 oz cranberry juice\n1/2 oz Cointreau\n1/2 oz fresh lime juice\nLime twist for garnish\nIce"), null, WatchUi.SLIDE_UP);
        } else if (item == :pina_colada) {
            WatchUi.pushView(new handy_bartenderRecipeView("2 oz light rum\n1 oz coconut cream\n1 oz heavy cream\n6 oz fresh pineapple juice\n1/2 cup crushed ice\nPineapple slice\nMaraschino cherry"), null, WatchUi.SLIDE_UP);
        } else if (item == :martini) {
            WatchUi.pushView(new handy_bartenderRecipeView("2 1/2 oz gin\n1/2 oz dry vermouth\nLemon twist or olive garnish\nIce"), null, WatchUi.SLIDE_UP);
        } else if (item == :daiquiri) {
            WatchUi.pushView(new handy_bartenderRecipeView("2 oz light rum\n1 oz lime juice\n3/4 oz simple syrup\nLime twist for garnish\nIce"), null, WatchUi.SLIDE_UP);
        } else if (item == :manhattan) {
            WatchUi.pushView(new handy_bartenderRecipeView("2 oz rye whiskey\n1 oz sweet vermouth\n2 dashes Angostura bitters\nMaraschino cherry garnish\nIce"), null, WatchUi.SLIDE_UP);
        } else if (item == :bloody_mary) {
            WatchUi.pushView(new handy_bartenderRecipeView("2 oz vodka\n4 oz tomato juice\n1/2 oz lemon juice\n2 dashes Worcestershire\n2 dashes hot sauce\nSalt and pepper to taste\nCelery stalk\nLemon wedge\nIce"), null, WatchUi.SLIDE_UP);
        }
    }
}
