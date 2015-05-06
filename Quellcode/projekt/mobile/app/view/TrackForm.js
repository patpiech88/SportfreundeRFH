Ext.define('Trackliste.view.TrackForm', {
	extend: 'Ext.form.Panel',
	xtype: 'trackform',
	requre: 'Ext.field.Text',
		config: {
		items: [
			{
				xtype: 'textfield',
				name: 'name',
				label: 'Name',
				readOnly: true
			},
			{
				xtype: 'textfield',
				name: 'distance',
				label: 'Distanz',
				readOnly: true
			},
			{
				xtype: 'textfield',
				name: 'type',
				label: 'Typ',
				readOnly: true
			},
			{
				xtype: 'textfield',
				name: 'difficulty',
				label: 'Schwierigkeitsgrad',
				readOnly: true
			},
			{
				xtype: 'textfield',
				name: 'time',
				label: 'Zeit',
				readOnly: true
			},
			{
				xtype: 'textareafield',
				name: 'description',
				label: 'Beschreibung',
				readOnly: true
			}
		]
	}
});