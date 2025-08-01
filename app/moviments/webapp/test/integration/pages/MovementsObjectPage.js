sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'pt.cap.moviments.moviments',
            componentId: 'MovementsObjectPage',
            contextPath: '/Movements'
        },
        CustomPageDefinitions
    );
});