# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Company.create(name:"Myk Construction Ltd.", address:"828 W 8th Ave, Vancouver, BC V5Z 1E2")
Company.create(name:"Squareone Contracting", address:"2140 124 St, Surrey, BC V4A 3M5")
Company.create(name:"D Henriksen Contracting and Construction Inc", address:"5811 Oliver Dr, Richmond, BC V6V 2P1")
Company.create(name:"RGC Construction Management Ltd", address:"104-18677 52 Ave, Surrey, BC V3S 8E5 ")
Company.create(name:"BC Coastal Projects", address:"19662 Joyner Pl, Pitt Meadows, BC V3Y 2S3")
Company.create(name:"Coastline Development Group Ltd", address:"150-21900 Westminster Hwy, Richmond, BC V6V 0A8")
Company.create(name:"Blue Ocean Construction Inc", address:"221-17 Fawcett Rd, Coquitlam, BC V3K 6V2")
Company.create(name:"W S Nicholas Western Construction Ltd", address:"851 Derwent Way, Delta, BC V3M 5R4 ")
Company.create(name:"Graham construction and Engineering Ltd", address:"7216 Brown St, Delta, BC V4G 1G8")
Company.create(name:"Pagilaro Projects Ltd", address:"3940 Charles St, Burnaby, BC V5C 3K8")

Login.create(email: "admin@gurvircheema.com", password: "admin123", superuser: true)
Login.create(email: "test@example.com", password: "test1234", superuser: false)

Hazard.create(name: "Falls from working at height")
Hazard.create(name: "Crush injuries in excavation work")
Hazard.create(name: "Slips and trips")
Hazard.create(name: "Being struck by falling objects")
Hazard.create(name: "Moving heavy loads")
Hazard.create(name: "Bad working positions, often in confined spaces")
Hazard.create(name: "Being struck or crushed by a workplace vehicle")
Hazard.create(name: "Receiving injuries from hand tools")
Hazard.create(name: "Inhalation of dust")
Hazard.create(name: "Handling of rough materials")
Hazard.create(name: "Exposure to dangerous substances (chemical and biological)")
Hazard.create(name: "Working near, in, or over water")
Hazard.create(name: "Exposure to radiation")
Hazard.create(name: "Loud noise")
Hazard.create(name: "Vibration from tools or vibrating machinery")




Worker.create(first_name: "Gay", last_name: "Garner", contact: "(564) 229-9507", email: "consequat.dolor@gmail.com", type: "Employee",company_id:1)
Worker.create(first_name: "Vaughan", last_name: "Sanford", contact: "(598) 953-1160", email: "rutrum.eu@domain.net", type: "Employee", company_id:2)
Worker.create(first_name: "Chase", last_name: "Williams", contact: "(723) 587-1593", email: "est.ac.facilisis@etmagnis.org", type: "Manager", company_id: 3)
Worker.create(first_name: "Abraham", last_name: "Meritt", contact: "(951) 205-4225", email: "cubilia@Nunc.com", type: "Contractor", company_id: 4)
Worker.create(first_name: "Rhona", last_name: "Stevenson", contact: "(867) 998-0298", email: "ante.dictum@interdum.edu", type: "Employee", company_id: 4)
Worker.create(first_name: "Keefe", last_name: "Key", contact: "(707) 626-8002", email: "pellentesque@libero.edu", type: "Contractor", company_id: 6)
Worker.create(first_name: "Drew", last_name: "Kaufman", contact: "(329) 556-5294", email: "ac.mattis@nascet.com", type: "Employee", company_id: 6)
Worker.create(first_name: "Aimee", last_name: "Christen", contact: "(464) 733-7165", email: "risus@est.com", type: "Contractor", company_id: 7)
Worker.create(first_name: "Jane", last_name: "Garner", contact: "(393) 217-2402", email: "Quisque@liberoest.org", type: "Employee", company_id: 8)
Worker.create(first_name: "Evan", last_name: "Peters", contact: "(920) 221-1805", email: "magna.vel@mumet.net", type: "Employee", company_id: 9)
Worker.create(first_name: "Imani", last_name: "Le", contact: "(450) 751-6269", email: "mollis.libero@interdum.edu", type: "Contractor", company_id: 7)
Worker.create(first_name: "Ciaro", last_name: "Stuart", contact: "(237) 474-1951", email: "Aliqua.liaculis@Aliquam.net", type: "Employee", company_id: 2)
Worker.create(first_name: "Kelsie", last_name: "Graham", contact: "(606) 201-8560", email: "non@Maecenas.ca", type: "Contractor", company_id: 3)
Worker.create(first_name: "Carol", last_name: "Mosley", contact: "(393) 193-7968", email: "diam.ullamcorper@turps.edu", type: "Employee", company_id: 5)
Worker.create(first_name: "Charlotte", last_name: "Ferguson", contact: "(715) 787-1924", email: "arcu.et@ultriciesligula.ca", type: "Contractor", company_id: 1)
Worker.create(first_name: "Gray", last_name: "Ward", contact: "(133) 223-8023", email: "vitae@suscipitestac.co.uk", type: "Contractor", company_id: 4)
Worker.create(first_name: "Imelda", last_name: "Vance", contact: "(517) 685-9809", email: "Etiam.laoreet@vinara.edu", type: "Manager", company_id: 7)
Worker.create(first_name: "Jackson", last_name: "Clay", contact: "(127) 904-2473", email: "Duis.at@est.net", type: "Manager", company_id: 4)
Worker.create(first_name: "Byron", last_name: "Rosa", contact: "(987) 910-2987", email: "libero.est@ornare.org", type: "Manager", company_id: 2)
Worker.create(first_name: "Melinda", last_name: "Bryant", contact: "(236) 541-0859", email: "orci@faucibuslectusa.edu", type: "Manager", company_id: 7)
Worker.create(first_name: "Gray", last_name: "Vance", contact: "(987) 555-4321", email: "vance.gray@hotmail.ca", type: "Manager", company_id: 9)

Site.create(name: "Foot of Bewicke", manager_id: 3, company_id: 3)
Site.create(name: "Intersection of Hamilton Avenue & West 16th Street", manager_id: 17, company_id: 10)
Site.create(name: "500 Block of West 28th Street", manager_id: 18, company_id: 4)
Site.create(name: "105 Carrie Cates Court (Foot of Lonsdale)", manager_id: 19, company_id: 2)
Site.create(name: "2358 Western Avenue", manager_id: 20, company_id: 7)
Site.create(name: "131 East 3rd Street", manager_id: 21, company_id: 9)



