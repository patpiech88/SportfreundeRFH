Ext.define('Trackliste.store.Tracks', {
  extend: 'Ext.data.Store',
  config: {
	proxy:{
		type: 'rest',
		url: '/SportfreundeRFH/Quellcode/projekt/tracks',
		reader: {
			type: 'json'
		},
		listeners: {
			exception: function(proxy, response) {
				Ext.Msg.alert('Fehler', response.statusText);
			}
		}
	},
    model: 'Trackliste.model.Track',
	autoLoad: true
  }
});