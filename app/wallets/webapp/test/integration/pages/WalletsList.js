sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pt.cap.wallets.wallets',
            componentId: 'WalletsList',
            contextPath: '/Wallets'
        },
        CustomPageDefinitions
    );
});