Ext.define('Trackliste.controller.AppController', {
	extend: 'Ext.app.Controller',
	config: {
		control: {
			tracklist: {
				itemtap: 'showTrackDetails'
			}
			
		},
		refs: {
			main: 'main'
		}
	},
	
	showTrackDetails: function(list, index, target, record) {
		var main = this.getMain();
		var trackForm = Ext.widget('trackform');
		trackForm.setRecord(record);
		main.push(trackForm);
	}
});