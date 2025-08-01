sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pt/cap/moviments/moviments/test/integration/FirstJourney',
		'pt/cap/moviments/moviments/test/integration/pages/MovementsList',
		'pt/cap/moviments/moviments/test/integration/pages/MovementsObjectPage'
    ],
    function(JourneyRunner, opaJourney, MovementsList, MovementsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pt/cap/moviments/moviments') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMovementsList: MovementsList,
					onTheMovementsObjectPage: MovementsObjectPage
                }
            },
            opaJourney.run
        );
    }
);