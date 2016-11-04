building = {
	rooms: [1,2,3,4,5,6,7],
	people: {
		jim: ["funny", "nice", "hardworking"],
		karen: ["focused", "intense", "driven"],
		brock: ["rude", "total-bro", "wears axe body spray"],
		tina: {
			hair: "brown",
			personality: ["loving", "diligent", "funnyAF"],
			department: "billing"
		}
	},
	floors: [1,2,3,4,5,6,7,8,9,10,11,12,14]
}

p building[:rooms][3]
p building[:people][:tina][:personality][1]
p building[:people][:brock][2]
p building[:floors][12]