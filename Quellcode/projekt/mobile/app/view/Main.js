Ext.define('Trackliste.view.Main', {
    extend: 'Ext.navigation.View',
	xtype: 'main',
	config: {
		items: {
			xtype: 'tracklist'
		},
		defaultBackButtonText: 'Zurück'
	}
	
});
