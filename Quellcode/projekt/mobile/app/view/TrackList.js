Ext.define("Trackliste.view.TrackList", {
	extend: 'Ext.dataview.List',
	xtype: 'tracklist',
	config: {
		store: 'Tracks',
		itemTpl: '<div>{name}</div>',
		emptyText: 'Liste LEER'
		
	}
});