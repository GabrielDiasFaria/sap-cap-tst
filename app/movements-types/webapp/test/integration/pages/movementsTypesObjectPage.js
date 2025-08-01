sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'pt.cap.movementstypes.movementstypes',
            componentId: 'movementsTypesObjectPage',
            contextPath: '/movementsTypes'
        },
        CustomPageDefinitions
    );
});