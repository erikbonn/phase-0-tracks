classroom = {
	desk: {
		pencil: 'sharp', 
		paper: 'college ruled',
		marker: 'non-erase',
		binder: [
			'spanish divider',
			'math divider',
			'geography divider'
		]
	},
	teacherdesk: {
		pen: 'red',
		apple: 'green', 
		computer: {
			folder: "first period",
			background: "beach landscape",
			hardrive: "full"	
		}
	},
	homework_basket: 'empty'
}

#put a few examples of calling a few deeply nested data pieces
p classroom[:desk][:binder][2]
p classroom[:teacherdesk][:computer][:hardrive]
p classroom[:homework_basket]
p classroom[:teacherdesk][:apple] 