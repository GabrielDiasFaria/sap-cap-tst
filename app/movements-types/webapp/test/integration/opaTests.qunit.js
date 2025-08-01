sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pt/cap/movementstypes/movementstypes/test/integration/FirstJourney',
		'pt/cap/movementstypes/movementstypes/test/integration/pages/movementsTypesList',
		'pt/cap/movementstypes/movementstypes/test/integration/pages/movementsTypesObjectPage'
    ],
    function(JourneyRunner, opaJourney, movementsTypesList, movementsTypesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pt/cap/movementstypes/movementstypes') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThemovementsTypesList: movementsTypesList,
					onThemovementsTypesObjectPage: movementsTypesObjectPage
                }
            },
            opaJourney.run
        );
    }
);