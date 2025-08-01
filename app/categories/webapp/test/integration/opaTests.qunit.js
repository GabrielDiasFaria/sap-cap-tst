sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pt/cap/categories/categories/test/integration/FirstJourney',
		'pt/cap/categories/categories/test/integration/pages/CategoriesList',
		'pt/cap/categories/categories/test/integration/pages/CategoriesObjectPage'
    ],
    function(JourneyRunner, opaJourney, CategoriesList, CategoriesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pt/cap/categories/categories') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCategoriesList: CategoriesList,
					onTheCategoriesObjectPage: CategoriesObjectPage
                }
            },
            opaJourney.run
        );
    }
);