Ext.define('Trackliste.model.Track', {
	extend: 'Ext.data.Model',
	config: {
		fields: [
			{
				name:'name'
			},
			{
				name:'distance'
			},
			{
				name:'location'
			},
			{
				name:'type'
			},
			{
				name:'difficulty'
			},
			{
				name:'time'
			},
			{
				name:'description'
			}
		]
	}
});