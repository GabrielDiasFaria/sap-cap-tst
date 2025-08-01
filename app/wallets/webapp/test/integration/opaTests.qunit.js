sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pt/cap/wallets/wallets/test/integration/FirstJourney',
		'pt/cap/wallets/wallets/test/integration/pages/WalletsList',
		'pt/cap/wallets/wallets/test/integration/pages/WalletsObjectPage'
    ],
    function(JourneyRunner, opaJourney, WalletsList, WalletsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pt/cap/wallets/wallets') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheWalletsList: WalletsList,
					onTheWalletsObjectPage: WalletsObjectPage
                }
            },
            opaJourney.run
        );
    }
);