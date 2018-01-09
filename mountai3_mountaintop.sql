-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2018 at 03:37 AM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mountai3_mountaintop`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `client` int(10) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `time_of_day` varchar(1) NOT NULL,
  `approx_no_days` int(10) DEFAULT NULL,
  `approx_no_nights` int(10) DEFAULT NULL,
  `children` varchar(1) NOT NULL,
  `no_of_children` int(10) DEFAULT NULL,
  `comment` longtext
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client`, `first_name`, `last_name`, `phone_no`, `email`, `date`, `city`, `time_of_day`, `approx_no_days`, `approx_no_nights`, `children`, `no_of_children`, `comment`) VALUES
(1, 'samuel', 'kanyi', '700254244', 'amshelkanyi@gmail.com', '2017-12-31', 'nairobi', '0', 2, 1, '0', 2, 'commento'),
(2, 'sam', 'kanyi', '700123456', 'amshelkanyi@gmail.com', '2019-02-05', 'kiserian', 'm', 3, 3, 'n', 0, 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `itinerary`
--

CREATE TABLE IF NOT EXISTS `itinerary` (
  `itinerary` int(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itinerary`
--

INSERT INTO `itinerary` (`itinerary`, `title`, `description`, `image`, `caption`) VALUES
(9, '6DAYS SAFARI- NAIROBI-MARA- NAKURU-LAKE BARINGO- LAKE BOGORIA- NAIROBI.', 'DAY 01;NAIROBI to MASAI MARA Pick the visitors from the hotel at 0730hrs,after a short briefing depart from Nairobi.Driver to start the safari along south floor of the Great Rift valley towards Narok rd climbing the western wall entering Hemingways Serengeti\r\n							plains.Arrive for lunch at Mara Leisure in the Mara Game Reserve.Afternoon game drive,back in the evening for dinner and overnight stay at Mara Sarova Luxury Tented camp.\r\n							<br><br> DAY 02:MASAI MARA After breakfast full day game drive tracking in search of wildlife,Elephants,zebra,wildebeest,buffalo,lion,leopard,cheetah,giraffes and other plains wildlife. All meals and overnight stay at Mara Sarova\r\n							Tented camp.\r\n							<br><br> DAY 03:MASAI MARA Full day game viewing.All meals and overnight stay at Mara Simba lodge.\r\n							<br><br> DAY 04:MASAI MARA to NAKURU After breakfast depart from the game reserve area for Nakuru.Lunch is served enroute,Lake Nakuru is renowed for large variety of birds,world famous Flamingoes.Besides the birds there are other\r\n							species of wildlife in the surrounding vegetations like Waterbuck,zebra,giraffes,gazelle,impala,baboon,antelopes.Dinner and overnight stay at Sarova Lion hill lodge.\r\n							<br><br> DAY 05: LAKE BARINGO to LAKE BOGORIA After breakfast leave for both Baringo and bogoria.Having a 1hr boat ride on Lake Baringo.Lunch at Lake bogoria hotel,dinner and overnight stay at Sheraton Baringo Hotel.\r\n							<br><br> DAY 06: LAKE NAIVASHA to NAIROBI After breakfast leave for Lake Naivasha,lunch served here,proceed in the mid afternoon for Nairobi arriving late afternoon. Drop off to the airport marking the end of Safari.       ', 'kenya-Maasai-mara.jpg', '6 Day maasai mara'),
(10, '7DAYS SAFARI NAIROBI- SAMBURU -NARUMORU -ABERDARE- NAIROBI', '                  DAY 01: Jambo! Karibu Kenya your adventures begins on arrival at Jomo Kenyatta International Airport will be picked by our driver Mountain top Safaris tranfer to Eka Hotel Accommodation Hotel(1night) optional ACTIVITIES Nairobi- Bomas of Kenya Nairobi\r\n							National park Nairobi -Langata Giraffe Sanctuary Nairobi- Karen Blixen Nairobi- Carnivore Restaurant Meals inclusive in the evening There are no meals included during the day\r\n							<br><br> DAY 02: NAIROBI SAFARI WALK - DAVID SHELDRICK After breakfast 0900hrs visit Nairobi safari walk,then at 1100hrs visit David Sheldrick Orphanage for orphaned baby elephants feeding program.Then depart for Giraffe centre\r\n							to pose and take photos while feeding the giraffes.Dinner and overnight stay at Eka Hotel\r\n							<br><br> DAY 03: NAIROBI to SAMBURU NATIONAL PARK After breakfast depart from Eka Hotel heading to Samburu via central Kenya crossing the Equator north of Mt.Kenya enroute to Samburu Game Reserve,lunch at the Samburu Game lodge.Afternoon\r\n							have a chance for game drive along the Samburu National park.Dinner and overnight stay at Samburu Game lodge. Meals included: Breakfast Lunch Dinner\r\n							<br><br> DAY 04: SAMBURU GAME RESERVE Early morning game drive before breakfast.After breakfast spend the morning by the pool or take an optional nature walk,birds viewing,safari walk within the reserve then proceed for an evening\r\n							game drive return to Samburu lodge for dinner and overnight stay at the lodge. Meals included: Breakfast Lunch Dinner\r\n							<br><br> DAY 05: SAMBURU to NARUMORU,MOUNTAIN LODGE After breakfast depart from Samburu drive along southwards to Narumoru enroute to Mountain lodge which is set at 7200 feet`s high on the flanks of Mt.Kenya,highest mountain in\r\n							the country.The only "Tree hotel"ever to be built on the slopes of Kenya`s legendary mountain.Mountain lodge offers an opportunity to view game in an ancient forest.Dinner and overnight stay at Serena Mountain lodge Meals included:\r\n							Breakfast Lunch Dinner\r\n							<br><br> DAY 06: NARUMORU to NYERI,ABERDARE NATIONAL PARK After breakfast depart from Narumoru for Aberdares National Park arriving in time for lunch at the Outspan Hotel,Nyeri.Then transfer to the Treetops Lodge for the Treetops\r\n							experience,the most famous game viewing lodge in the world overlooking a water hole and salt lick visited by various species of wildlife to quench their thirst.The lodge is best known for being the home of the Treetops Hotel where\r\n							Princess Elizabeth became the Queen of England in 1952. The habitat ranges from botanical rich forest and torrential waterfalls and plunges including the Gura waterfall which is very prestigious in central part of Kenya.The area\r\n							is very rich in wildlife with more than 2000 elephants. Dinner and overnight stay at the Treetops Lodge.\r\n							<br><br> DAY 07: ABERDARE NATIONAL PARK to NAIROBI Wake up early for pre-breakfast game drive and thereafter have breakfast and depart for Nairobi enroute to the largest open air market in East and Central Africa,Karatina.Enroute\r\n							will have a visit at Sagana town which some scenic places for water activities such as water rafting,water boat ride,water-jumping then proceed to Nairobi to arrive early evening.Drop off to the airport marking the end of Safari.              ', 'aberdare.jpg', '7 Day aberdare'),
(11, '8DAYS SAFARI ROAD TRIP& FLIGHT PACKAGE ENROUTE- NAIROBI -LEWA DOWNS -SHABA- MOUNT KENYA -MASAI MARA -NAIROBI', '     DAY 01;Jambo! Welcome to Kenya at the Jomo Kenyatta International Airport(JKIA)after a meet and greet session transfer to the city hotel along mombasa rd towards city centre,OLE SERENI Hotel check in for a bed and breakfast,overnight stay at leisure there.This\r\n							is typical country luxury hotel of its kind built alongside the Nairobi National Park proximity to the ultra-modern facility in the city of Nairobi.\r\n							<br><br> DAY 02; NAIROBI LEWA DOWNS(LEWA WILDLIFE CONSERVANCY) After breakfast from Ole sereni hotel check out a short briefing with the driver, depart at 0800hrs for transfer to Wilson airport,arrive in time for a flight to Lewa\r\n							downs Airstrip.Upon arrival at the Lewa you will be met by a driver,guide who will do the transfer to Lewa Wildlife Conservancy,lunch at Lewa Safari Camp.This Conservancy is set in a riverine habitat amid gently rolling hills,this\r\n							park hosts the world largest single grevy`s zebra population over 350 large black Rhino population,all the `Big Five`cheetahs,eland oryx,waterbuck,impala,reticuled giraffes,afew hyenas,warthogs.It has also an array of interesting\r\n							birdlife like the blue-legged somalia ostrich,falcon,sunbirds,hammingbird and lesser flamingoes.Dinner and overnight stay at the Lewa lodge.\r\n							<br><br> DAY 03; LEWA to SHABA NATIONAL RESERVE After breakfast check out and depart from Lewa Conservancy for Shaba National Reserve,an early morning game drive heading towards north-eastwards to Shaba Reserve,after arrival have\r\n							lunch at Shaba Sarova Game Lodge.After a short afternoon rest embark on a late afternoon game drive,get back in the evening for dinner and overnight stay at Shaba Sarova Lodge.\r\n							<br><br> DAY 04; SHABA NATIONAL GAME RESERVE After breakfast take an early morning game drive.This game reserve is set by the extinct volcanic Shaba mountain (1525m)dotted with acacia riverine and thorn trees savanna landscape\r\n							is home to a variety of wildlife such as lion,cheetah,grevy`s zebra,gerenuk,buffalo,gazelle,dik-dik,waterbuck,and the rare leopard.The forested area along its life supporting river Uaso Nyiro provides array of birdlife including\r\n							rare Williams lark,the game reserve is also known for its setting of a book and Film(Born Free)about Elsa the lioness authored by the late Joy and George Adamson.After lunch an afternoon game viewing and drive,then get back to\r\n							the lodge before sunset for dinner and overnight stay at the Shaba Sarova lodge.\r\n							<br><br> DAY 05; SHABA to MOUNT KENYA Early morning pre-breakfast game drive,then back to the lodge for breakfast and check out with the last game drive en route driving across the Equator to the southern hemisphere and arrive\r\n							at MT.Kenya Safari Club in Nanyuki in time for lunch.Then nature walk to the Mau Mau caves of our country freedom fighters hideouts during the country`s struggle for independence.Exprience of the dense Mt. Kenya forest with its\r\n							indigenious tree species.The colourful butterflies,occasional 3-horned chameleone,melodious sounds of singing birds and crickets as well.Dinner and overnight stay at Mt. Kenya Safari Club.\r\n							<br><br> DAY 06: MOUNT KENYA to MASAI MARA After breakfast check out the Mt. Kenya Safari club for a drive to Nanyuki Airstrip for a flight to the Mara arrival at Mara Keekorok Airstrip to be met by a driver and guide who will\r\n							do transfer to the adjacent Keekorok Lodge for lunch.Then late afternoon game drive back in the evening for dinner and overnight stay at the lodge.\r\n							<br><br> DAY 07: MASAI MARA This will be a full day game tracking with the guide,that is after breakfast.The mara landscape is scenic savannah grassland on rolling hills which enables the reserve to attract sufficient rainfall\r\n							to maintain the large population of herbivores,together with the predators that follow also there is a necessary factor for spotting `Big Five`elephants,buffalo,lion,rhino,cheetah,leopard and the famous wildebeest,zebra,masai giraffes,antelopes,gazelle,dik-dik,impala,thompson`s\r\n							gazelle.In the evening get back to the lodge for dinner and overnight stay.\r\n							<br><br> DAY 08: MASAI MARA to NAIROBI After breakfast we check out,depart for Nairobi(optional) by flight to Wilson airport or by road trip en route to Nairobi through Narok,Naivasha route.Lunch enroute Arrive in Nairobi in the\r\n							early afternoon for excursions,then drop off to the airport marking the end of safari. This Package includes: Park entrance fee Flight package- NBO-LEWA DOWNS AIRSTRIP NANYUKI-KEEKOROK AIRSTRIP MASAI MARA-NBO,WILSON AIRPORT Transport\r\n							and game drives Accommodation in lodges All meals Breakfast,Lunch,Dinner(full board basis) Drivers, guides allowance The Package excludes: Any other assorted drinks Tips Nature walk fee Items of personal nature                           ', 'mtkenyabig.jpg', '8 day mt kenya'),
(12, '3DAYS SAFARI ENROUTE NYAHURURU to NANYUKI to SWEETWATERS-NAIROBI', '      DAY 01:NAIROBI - NYAHURURU THOMPSON FALLS Departure at 0800hrs from Nairobi for Nyahururu town,Thompson fall through Naivasha,Gilgil,Olkalau route.A very prestigious experience,arrive at Thompson fall lodge for lunch then visit the site which is named\r\n							after Joseph Thompson one of the first European who walked from Mombasa to Lake Victoria then to central part in Kenya in the 1880`s.Dinner and overnight stay at Thompson fall lodge. The package includes: Entrance fee Accommodation\r\n							in lodges All meals(full board basis) ;breakfast,lunch,dinner Driver-guide Allowance Transport and game drives\r\n							<br><br> DAY 02: THOMPSON LODGE to SWEETWATERS, OL PEJETA CONSERVANCY After breakfast the driver will have a brief session,departure at 0800hrs for Nanyuki northwards across the Equator have lunch in Nanyuki town then proceed to\r\n							Sweetwaters Tented camp in Ol pejeta Conservancy.Afternoon spend leisure with a short game drive,a good viewing of wildlife,different species of birds and trees.The camp is built around a central water hole and salt-lick that is\r\n							floodlit at night.This game sanctuary set in the typical Africa savanna dotted acacia whistling thorn to host a wide array of wildlife including all the `Big Five`and well populated black Rhino and Chimpanzee sanctuaries.Dinner\r\n							and overnight stay at the Tented camp.\r\n							<br><br> DAY 03: SWEETWATERS TENTED CAMP to NAIROBI Early morning pre-breakfast game drive, thereafter breakfast and check out,visit the Rhino and Chimpanzee Sanctuaries and depart the Conservancy with lunch enroute.Arrive back\r\n							in Nairobi early afternoon.Drop off to the airport marking the end of safari.                          ', 'thompson_falls.jpg', '3 day thompson falls'),
(13, '4days/3 nights- Lake Manyara-Serengeti and Ngorongoro Crater Safari', 'Arrival in Arusha Airport/Kilimanjaro Airport(KIA) Meet and greet upon arrival. A free transfer to Arusha hotel(mt. meru lodge) in good time. Accommodation and lunch before the tour starts all can be arranged in the hotel for extra cost..this means if\r\n							not yet arranged before. <br><br>Day 01;Arusha- Lake manyara National park Non- game viewing travel time- 2and half hours. Distance 130km from Arusha town. Arrival in time for lunch at the camp and fter\r\n							lunch we proceed into the lake ,manyara national park for an afternoon game drive.This national park is one of a massive but shallow soda lake covering two-thirds of the lake the park is located at the foot of the Great Rift valley\r\n							western escarpment, The park habitat attracts a wide variety of wild animals including Africas largest herds of elephant,lake manyara unique tree-climbing lions..large flocks of flamingoes attracted by the algae in the lake.\r\n							Dinner and overnight stay at the camp..extra accommodation upgrades are available(for a higher cost). Meals and drinks(drinking water)other assorted drinks not included Accommodation-Budget camping(bordering lake manyara) <br><br>Day\r\n							02: Lake manyara - Serengeti Plains Non-game viewing travel time-6 hours Distance 205km After breakfast we proceed towards the Serengeti National park through the beautiful high lying farmland of Karatu and the Ngorongoro conservation\r\n							area..leaving the highlands behind we descend into the heart of wild africa- the Serengeti National park with its endless plains rolling into the distance as far as the eye can see..heading to the central park known as Seronera\r\n							area,one of the richest wildlife habitats in this park featuring Seronera River which is a valuable source of water to this area, therefore attracts wildlife well representatives of most of the serengeti species..Thomson gazelles,Topi,ostrich\r\n							and cheetah sightings the lions. Arrive for lunch and enjoy an afternoon game drive in the Serengeti National park,around the maasai kopjes some formidably large cobras in the area. Dinner and overnight stay at the camp at Seronera\r\n							area though extra accommodation upgrades are available( for a higher cost) main destination- Serengeti National park Accommodation- Budget camping(bordering serengeti park) Meals and drinks(drinking water) other assorted drinks\r\n							not included. <br><br>Day03; Serengeti Plains - Ngorongoro Crater Non-game drive viewing travel time 4 hours Distance 145km Early morning sunrise game drive and viewing of wildlife in this park,there after late breakfast to follow\r\n							at 08.45am.then extend another game viewing in serengeti park until 13.00hours after lunch together with the guide exit the serengeti for Ngorongoro Conservation National park for a night at the rim though an extra cost,if you\r\n							opt for Olduvai gorge museum,then the stopover at the gorge boasting with history dating back to the dawn of time. it was here that the Anthropologists Dr. Lois and Mary Leakey discovered the skulls of Nut cracker man and Handy\r\n							man both very significant links in the chain of human evolution. NB; if one can sail using a boat alongside river seronera to have a chance to explore the crater on the day 4 early morning from 06.30am till around 15.00hours when\r\n							the conservation and park area closes.\r\n							<br><br>Day 04; Ngorongoro Crater- Arusha Town Non-game drive viewing travel time 3 hours Distance 195km Enjoy breakfast, then later we descend over 600m into the crater to view wildlife supported by a year round water supply and\r\n							fodder vegetation in the forest.The crater supports a vast variety of animals includes Chimpanzees,gorrillas,baboons,herds of wildebeest,zebras,buffalo,eland,warthog,hippo,gazelle,impala and giant African elephants.Another big\r\n							draw card to this picturesque national park is its dense population of predators which includes the lions,hyenas,jackals,cheetah,ever-elusive leopard which sometimes required a trained guide eye to spot it. Lunch to be served\r\n							within the crater.Later in the afternoon we shall exit the park and crater area for a journey back to Arusha in good time for the next destination. This marks the end of safari/tour Drop off to the Airport/Hotel Package Includes;\r\n							*Transport in a custom minibus or pop-up roof landcruiser for ideal game viewing and sightseeing. *English speaking driver and guide(professional) *Full board accommodation in the lodge,camp(tented) *Park entrance fee *All meals\r\n							Package Excludes; *International Flights *Cultural visits *Expenses of personal nature such as visas,travel/baggage,insurance,laundry,beverages,tips etc *Assorted drinks. *Extra cost of nature walk fee', 'lake-manyara.jpg', 'Serengeti, Lake manyara arusha'),
(14, '5days/4nights -Tarangire National park/Kilimanjaro Trek-Rongai Route', '     Arrival in Arusha Kilimanjaro Airport(KIA) Visitors to be picked for a transfer to the hotel in Arusha town. Accommodation before the tour departs any extra cost can arranged prior to safari.\r\n							<br><br> Day 01; Tarangire National park Drive from Arusha at 08.00am hours to the Tarangire National park. This park is often reffered to as the home of elephants you have a great chance to spot e;lephants in large groups gathering\r\n							around Tarangire river..other wildlife includes leopards, lions, giraffes,buffalo and tree-climbing pythons Dinner and overnight stay at Panorama campsite. Main destination- Tarangire National park Accommodation- Budget camping\r\n							outside the Tarangire park Meals and drinks all inclusive(other assorted drinks not included)\r\n							<br><br> Day 02; Moshi -Nale moru - Simba camp Arusha to moshi towards the village of Nale moru(Rongai 1950m) where the climb begins taking 4-5 hours walking to simba camp(2600m) for dinner and overnight stay. Simba camp-3rd cave\r\n							superb view of kibo and the eastern ice fields on the crater rims..then continue to ascend for 3-4 hours walking to the 3rd cave (3800m) later for dinner and overnight stay at the camp.\r\n							<br><br> Day 03; Simba Cave -Kibo Hut Early morning continue ascending on the East side of kibo crossing the saddle between mawenzi and kibo taking 4-5 hours to reach kibo hut(4700m) on mid-night trek up to the summit via Gilmans\r\n							point(5695m)\r\n							<br><br> Day 04; Kibo Hut -Horombo Hut Enjoying sunrise at the summit horizontal views, photos, then descend to kibo hut for brief rest..coffe,tea and snacks..continue descending to Horombo hut(3700m) for dinner and overnight stay\r\n							at the camp.\r\n							<br><br> Day 05; Horombo Hut - Mandara Hut - Marangu Gate Early morning sunrise ascending, then descend about 5 hours passing through mandara hut to the National park gate at marangu (1830m) where we drive back to Moshi or Arusha\r\n							optional This marks the end of tour/trekking safari.\r\n							<br><br>\r\n							<hr> Package Includes; *Transport in a custom safari minibus/landcruiser pop-up roof ideal for game viewing. *Services of a guide and driver(professional)English speaking *Full board accommodation in the lodge/tented camp. *Park entrance\r\n							fee. Package Excludes; *International Flights *Cultural visits *Expenses of personal nature such as visas, insurance.laundry, beverages,travel baggages, tips etc. *Extra travel cost and nature walk fee * Assorted drinks                           ', 'tangarire.jpg', 'Tarangire, Kilimanjaro'),
(15, 'Mara 2 Days Flight safaris(EXCLUSIVE SAFARI)', 'Day 01 Nairobi-Masai Mara\r\n						Driver will pick you from your city hotel @7.30am for departure to the Masai Mara National Reserve in a twin-engine aircraft from Wilson Airport(morning flight)to Ol kiombo Airstrip,the flight takes about 50 minutes upon arrival there will be a waiting safari van/landcruiser which will take you on a short game drive enroute to the lodge/camp(Governors camp) lunch will be served followed by an afternoon game drive. Masai Mara is renowned for its high wildlife concentrarion and abundance.Black-maned lions,elephants,buffalo can be seen though luck is essential for spotting leopard and rhino which make the other 2 of Big Five..The  reserve borders Tanzania Serengeti National Park and is the home to numerous plains game including wildebeest,common zebra and the Masai giraffe as well as antelopes like Thompsons gazelle,hartebeest, impala,dik dik among others.\r\n						Dinner and overnight stay at the campsite/lodge.<br><br>\r\n						Day 02- Masai Mara\r\n						Early morning game drive @0700hrs.The landscape here is scenic savanna grassland on rolling hills this reserve is the best park for game in Kenya as it has abundant wildlife with an extensive road and track network enabling close range viewing and photography.After breakfast transfer with a game drive enroute to the Airstrip for your return flight to Nairobi,Wilson Airport.\r\n						NB; Afternoon flights to and from the Mara are Available throughout.\r\n						The above schedule can be done as 3 days/2 nights flight package with the second day being full day at the Masai Mara National Reserve\r\n						The above program is applicable for both Samburu National Reserve and Amboseli National Park.\r\n						<br><br>\r\n						The Package costs include;\r\n						*Return flight tickets\r\n						*Park entrance fees\r\n						*Airstrip transfers\r\n						*Transport and game drives\r\n						*Accommodation at the campsite/lodge\r\n						*All meals(full board basis)\r\n						*Drivers and guides allowances\r\n						The Package excludes;\r\n						*Assorted drinks\r\n						*Extra drinking water\r\n						*Tribal village visits\r\n						*Items of personal nature                              ', 'mara_exclusive.jpg', '2 Day maasai Exclusive (Flight)'),
(16, '7Days Safari/tour- Bird Watchers Paradise', 'Day 01 -Nairobi-Lake Baringo\r\n						Pick up from your city hotel@0800hrs and drive depart for Great Riftvalley through the Limuru tea farms descending to the floor of Riftvalley with a brief stopover at the view point Mt. Longonot and Lakes Elmentaita and Naivasha can be seen from afar as we proceed to Nakuru town then lake Baringo.This is one of the two fresh water lakes in the Riftvalley and a Birdwatchers Paradise hosting over 460 recorded bird species and a number of hippos.Arrive,check-in have lunch at the campsite\r\n						Dinner and overnight stay at the campsite\r\n						NB; A resident Ornithologist leads walks before breakfast and in the evenings.<br><br>\r\n						Day 02 Lake Baringo- Lake Bogoria\r\n						After breakfast take an hour bird watching walk and trip by boat to the island to view more birds and hippos. On the island at an extra cost you can organise short excursions to see the local tribe Njemps village and traditional dances.Theres a snake farm to visit around as well.Afterwards we proceed to the nearby lake Bogoria which is 1hr drive away.The lake is famous of shallow soda and hot spring geyser hosting thousands of pink flamingoes a larger number of birds there and lesser Kudu.Hundreds of singing weaverbirds and flamingoes species feeding in the bluish water present a very rare scenic beauty.\r\n						Dinner and overnight stay at the campsite<br><br>\r\n						Day 03 Lake Bogoria -Kakamega\r\n						After breakfast drive for approx 6hours to Kakamega National Reserve. This is the countrys only remaining indigenous Tropical rain forest that forms part of the dense rain forest stretching from west Africa across central Africa and in to the highlands areaeast and west of the Great Riftvalley.The forest is renowned as home to several hundred species of birds including rare-snake eating birds ,insects,monkeys and other mammals and countless exotic tree species.\r\n						Lunch enroute arrival in the park in time for dinner and overnight stay in campsite/budget hotel<br><br>\r\n						Day 04 Kakamega\r\n						After breakfast spend a full day in kakamega National Reserve with birds walks accompained by game wardens and our driver guides.\r\n						Dinner and overnight at the campsite<br><br>\r\n						Day 05 Kakamega-Nakuru\r\n						After an early breakfast drive to Nakuru arriving at Lake Nakuru National Park in time for lunch,later proceed for an afternoon game drive in this unique park home for stunning flocks of greater flamingoes.The birdlife here is renown and over 400species can be seen like white pelicans, marabou stock among numerous other water birds that breeds in the lake alkaline waters.Also you can spot white rhino,rare rothschild giraffe and other plain game.\r\n						Dinner and overnight stay at the campsite/logde<br><br>\r\n						Day 06 Nakuru-Naivasha\r\n						A pre-breakfast bird spotting game drive in the park and around the lake before returning to the campsite/lodge for breakfast.Later depart for Naivasha with a brief stop at the lake Elmentaita view point.Lunch at Naivasha afterwards proceed to Hells Gate National Park, the park is famous for its natural steaming geysers its a haven for birdwatchers.The walk/hiking in this park gives one a sense of freedom,also open space and clear view of wildlife.This is the only park that allows you to walk among the wild animals because of lack of predators.The cliffs are breeding grounds for vultures,verreaux eagles,augur buzzards and thousand of swifts.Over 120 species have been recorded here.\r\n						Dinner and over night stay at the campsite/lodge<br><br>\r\n						Day07 Naivasha-Nairobi\r\n						After leisurely breakfast proceed to lake Naivasha for an hour boat ride where you will have a chance to spot more species of birds and hippos.After lunch take a drive back to Nairobi and drop off at your hotel or drop off at the airport JKIA to catch a flight back home.\r\n						End of safari\r\n						<br><br>\r\n						The package includes;\r\n						*Park entrance fee\r\n						*Game drives in various parks accompanied by an English speaking driver/tour guide\r\n						*Transport in a comfortable roof pop up safari vehicle\r\n						*Accommodation in the campsite\r\n						*All meals on safari\r\n						The packages excludes;\r\n						*Extra water and other assorted drinks\r\n						*Gratuities\r\n						*Extra activities\r\n						*Visit in the tribal villages                          ', 'baringo_bird.jpg', '7 Day Bird watchers paradise'),
(17, '3 DAYS SAMBURU N.RESERVE SAFARI', 'Samburu National Reserve is situated north of Nairobi above the equator line.Its home to species unique to the famous reserve like the Gerenuk also known as giraffe necked antelope due to its long neck adapted for browsing the high bushes.Also the Greys zebra which differs from the common zebra by having wide stripes that do not go all the way under its belly.Most felines can be found also 365 species of birds,for the big cats lovers the Samburu National reserve is the place to be and visit.\r\n						<br><br>\r\n						Day 01 NAIROBI -SAMBURU\r\n						Depart Nairobi in the morning to Samburu at the north rugged semi desert region through harsh vegetation contains some of the wildlife species rarely found elsewhere e.g Reticulated giraffes, grevys zebra, kuchi, Beisa oryxs,somali ostrich,gerenuk/vulturine,guinea fowl among others.Arrive in time for lunch,then afternoon game drive.\r\n						Dinner and overnight stay at the Samburu lodge.\r\n						<br><br>\r\n						Day 02 SAMBURU RESERVE\r\n						After breakfast full day game drive,(morning and afternoon)\r\n						optional visit to the samburu villages\r\n						All meals and overnight stay at the Samburu lodge.\r\n						<br><br>\r\n						Day 03 SAMBURU -NAIROBI\r\n						Pre- breakfast game drive,then afterwards depart for Nairobi arriving in the afternoon.\r\n						For drop off to the airport JKIA to catch a flight back home\r\n						<br><br>\r\n						The Package Includes:\r\n						*Park entrance fee\r\n						*The two game drives per day expect on the day of transfer.\r\n						*Professional fluent-English speaking driver/tour guide.\r\n						*Comfortable safari vehicle with the poop-up roof fitted with VHF radio.\r\n						*Accommodation in safari lodges/tents(full board)<br><br>\r\n						Packages excludes:\r\n						*International flights\r\n						*Visa and travel insurance\r\n						*Items of personal nature\r\n						*Assorted drinks\r\n						*Tips                        ', 'Samburu2.jpg', '3 day Samburu national reserve'),
(18, '4Days safari Tsavo West/Amboseli(Return via STANDARD GAUGE RAILWAY)SGR SERVICES', 'Day 01 Nairobi -Tsavo West\r\n						The driver will pick you up @0800hrs drive via Chyullu hills to Tsavo West National Park to arrive in time for lunch and proceed for afternoon game viewing drive.The park is set with gently rolling plains the picturesque Taita hills and lava flows off in a plateau dotted with acacia,shrubs and bush lands.This is home to a variety of wildlife including the famous Tsavo elephants and lions,while in the park you have a chance of visiting Mzima springs that hyas an underground aquantic life viewing tank.\r\n						Dinner and overnight stay at the lodge/camp<br><br>\r\n						Day 02 Tsavo West - Amboseli\r\n						After breakfast depart for Amboseli National Park lunch enroute on the way.Arrive for an afternoon game drive,the park set beautifully with the snow-capped Mt. Kilimanjaro as its backdrop Africas highest mountain free- standing 5895m,it has a contrast of habitats swamps and springs fed by underground rivers from the mountains melting snow giving permanent water to the wildlife,dustbowls,forests, seasonal lakes and hills.\r\n						Dinner and overnight stay at Ol tukai lodge.<br><br>\r\n						Day 03 Amboseli - Mombasa\r\n						After breakfast proceed for a game drive in the park.The wildlife are mainly found around the Ol kenya swamp,this includes lion,elephant,cheetah,buffalo,plains game animals, waterbuck,gerenuk,the rare taita weaver among others.If the weather is clear and theres no low clouds cover good view to see the peak of the mountain.The observation hills offers a view of the entire park and beyond.Depart for lunch enroute to Mombasa arriving early in the afternoon.\r\n						Dinner and overnight stay at the hotel(south coast)<br><br>\r\n						Day 04 Mombasa - Nairobi(VIA SGR RAILWAY)\r\n						After breakfast depart from the hotel for Nairobi to the mombasa train service station get in time an hour before departure time 0945hrs,check-in to board the train on an economy class.The train takes 4-5hours travel time to Nairobi.Snack and drinks served enroute as you view the wildlife along the way.0145hrs arrival time in Nairobi Syokimau terminus station..On arrival you will picked by driver with the tour/safari van for a drop off to the city hotel or drop off to the airport at JKIA\r\n						End of the safari<br><br>\r\n						Package includes;\r\n						*Park entrance fee\r\n						*Transport and game drives\r\n						*Accommodation in camp/lodges\r\n						*All meals(full board)\r\n						*Drivers/guide allowances\r\n						*Train tickets\r\n						Package excludes;\r\n						*Extra drinks\r\n						*Assorted drinks\r\n						*Tips\r\n						*Tribal village visit\r\n						*Extra Activities                ', 'sgr_tsavo.jpg', '4 day Tsavo/Amboseli(Return SGR train)'),
(19, 'KENYA COAST by AIR 					LAMU ISLAND AIR SAFARI -MOMBASA SAFARI', 'Day 01 NAIROBI -LAMU FLIGHT(airkenya/safarilink air services)\r\n						Depart from your hotel early morning to take a flight to lamu island from Wilson airport,arrive mid morning hours spend time leisurely along the coastline stone town doing some shopping around then transfered to a hotel for lunch.Later dinner and overnight stay at the hotel\r\n						<br><br>\r\n						Day 02 LAMU TOWN\r\n						After breakfast spend full day in lamu at leisure with a variety of activities like walks along the beach seashores,boat rides,scuba diving, water sports activities or just enjoying the sunshine on the beaches.Walks to visit the stone town pre-historic sites are optional activities that can be arranged.The hotel is booked on bedand breakfast basis to allow visitors sample the swahili variety of food available around the various eateries. Overnight stay at the hotel.\r\n						<br><br>\r\n						Day 03 LAMU -NAIROBI(FLIGHT)\r\n						After breakfast you will be transfered to Manda Airstrip for a flight back to Nairobi,Wilson Airport\r\n						Transfer to Mombasa Airport(optional) for a flight to JKIA,Nairobi depending on the itinerary.\r\n						<br><br>\r\n						Package Includes:\r\n						*Flight return tickets.\r\n						*Accommodation\r\n						*Airstrip transfers\r\n						*Transport\r\n						*Drivers allowance\r\n						*All meals\r\n						<br><br>\r\n						Package excludes:\r\n						*Assorted drinks\r\n						*Items of personal nature\r\n						*Swahili village visits\r\n						*Visa and travel insurance\r\n						*International flights\r\n						*Tips                    ', 'lamu.jpg', '3 day kenya coast by air'),
(20, 'ZANZIBAR ISLAND TOUR EXCURSION 					7DAYS/6NIGHTS TOUR ZANZIBAR ISLAND', 'Day 01 NAIROBI -ZANZIBAR\r\n						Depart from Wilson Airport take morning flight to Zanzibar airport,the island of Zanzibar also known as the spice island for its production of cloves.Shortly after arrival a transfer to the beach hotel which will be home for the next few days around.\r\n						Dinner and overnight stay at the beach hotel.\r\n						<br><br>\r\n						Day 02 ZANZIBAR ISLAND\r\n						After breakfast an optional Dolphin tour to swim with the dolphins(at extra cost)\r\n						<br><br>\r\n						Day 03 ZANZIBAR\r\n						After breakfast morning tour to the stone town and some shopping around.Dinner and overnight stay at the beach hotel.\r\n						<br><br>\r\n						Day 04-06 ZANZIBAR ISLAND\r\n						All this days are spent at leisure with optional activities including sailing,fishing,snorkering,scuba diving and wind surfing.\r\n						Dinner and overnight stay at the hotel.\r\n						<br><br>\r\n						Day 07 ZANZIBAR -NAIROBI\r\n						After breakfast visit central market and gifts shop then transfer to the Zanzibar airport take a flight for Nairobi,Wilson airport.After arrival you be picked by a driver with a safari van for late lunch at the Carnivore the meat eaters paradise then later drop off to the airport JKIA for a flight back home.\r\n						Marks end of holiday excursion.\r\n						<br>\r\n						Package Includes:\r\n						*Flight return tickets\r\n						*Accommodation\r\n						*All meals(full board basis in the hotel)\r\n						*Drivers allowance\r\n						<br>\r\n						Packages Excludes:\r\n						*International flights.\r\n						*Visa and travel insurance\r\n						*Assorted drinks\r\n						*Items of personal nature\r\n						*Tips                              ', 'zanzibar.jpg', '7 Day 6Night Zanzibar island'),
(22, 'TWENDE THE FOREST.', ' 8:00 am: pick up at Karen.\r\n8:45 am: Pick up at Nairobi.\r\n09:00 am: Departure\r\n11:00am: - 1:00 pm: Optional swimming.\r\n               - Lunch  (Swatch place along Nairobi-Nakuru highway).\r\n               - Stop over at the Great Rift Valley view point\r\n2:00 pm -5:00 pm: Team building / games / fun/ activities zip line / paintball challenge and archery (optional and self sponsored).\r\n5:30 pm: De- brief and depart for Nairobi.\r\n7:00 pm: Drop off at Nairobi and later at Karen.\r\nActivities\r\nZip lining adventure\r\nPaintball Challenge \r\nTeam building\r\nArchery \r\nNature walk\r\nSwimming \r\nWHAT TO WEAR:\r\nCasual slacks or cargo pants\r\nNo skirts\r\nComfy shoes (no heels)\r\nWHAT TO CARRY:\r\nDrinking water\r\nA jacket / something warm\r\nSnacks\r\nCamera\r\nHat\r\n             ENJOY YOUR SAFARI\r\n         ', '25393963_1774156262657639_1564575769_n.jpg', 'The forest,Kereita');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
  `picture` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`picture`, `name`, `caption`, `location`, `id`) VALUES
(2, 'care-of-the-people-andbeyond-kichwa-tembo-masai.jpg', NULL, 'slider', NULL),
(3, 'tz-top-image-61.jpg.1920x506_default.jpg', NULL, 'slider', NULL),
(4, 'tangarire.jpg', NULL, 'slider', NULL),
(5, 'luxury-experiential-travel-experts.jpg', NULL, 'slider', NULL),
(6, 'kenya-lamu.jpg', 'lamu', 'places', NULL),
(7, 'mara4.jpg', 'mara', 'places', NULL),
(8, 'kenya-mount-kenya-national-park.jpg', 'mtkenya', 'places', NULL),
(9, 'longonot4.jpg', 'longonot', 'places', NULL),
(10, 'kenya-tsavo-national-park.jpg', 'tsavo', 'places', NULL),
(11, 'nairobi3.jpg', 'nairobi', 'places', NULL),
(12, 'Shimoni.jpg', NULL, 'inner', 'lamu'),
(13, 'Kilifi-Creek-2.jpg', NULL, 'inner', 'lamu'),
(14, 'Watamu-Coastalines.jpg', NULL, 'inner', 'lamu'),
(15, 'mara.jpg', NULL, 'inner', 'mara'),
(16, 'mara1.jpg', NULL, 'inner', 'mara'),
(17, 'mara2.jpg', NULL, 'inner', 'mara'),
(18, 'aberdere1.jpg', NULL, 'inner', 'mtkenya'),
(19, 'aberdere2.jpg', NULL, 'inner', 'mtkenya'),
(20, 'aberdere3.jpg', NULL, 'inner', 'mtkenya'),
(21, 'longonot.jpg', NULL, 'inner', 'longonot'),
(22, 'longonot2.jpg', NULL, 'inner', 'longonot'),
(23, 'Tsavo1.jpg', NULL, 'inner', 'tsavo'),
(24, 'Tsavo2.jpg', NULL, 'inner', 'tsavo'),
(25, 'Tsavo3.jpg', NULL, 'inner', 'tsavo'),
(26, 'nairobi.jpg', NULL, 'inner', 'nairobi'),
(27, 'nairobi2.jpg', NULL, 'inner', 'nairobi'),
(28, 'african-safari-animals.jpg', 'Leopard at rest', 'gallery', NULL),
(29, 'antelope1.png', 'Antelope grazing', 'gallery', NULL),
(30, 'aherdofelephants-31.jpg', 'Herd of elephants(Tsavo)', 'gallery', NULL),
(31, 'beast1.png', 'Herd of wildbeast(mara)', 'gallery', NULL),
(32, 'andbeyond-expeditions-on-a-superior-explorer-botswana-safari.jpg.1920x506_default.jpg', 'olonana camp mara', 'gallery', NULL),
(33, 'beast2.png', 'Wildbeast grazing mara', 'gallery', NULL),
(34, 'andbeyond-kichwa-tembo-tented-camp-in-kenya_1.jpg.1920x810_default.jpg', 'tembo', 'gallery', NULL),
(35, 'bateleur-camp4.jpg.950x0.jpg', 'Mara', 'gallery', NULL),
(36, 'bestkenya.jpg', 'Elephants grazing (mara)', 'gallery', NULL),
(37, 'camping.jpg', 'olonana camp (mara)', 'gallery', NULL),
(38, 'care-of-the-people-andbeyond-kichwa-tembo-masai.jpg', 'morans @kichwa tembo', 'gallery', NULL),
(39, 'care-of-the-people-masai-2.jpg', 'Tourists care community @kichwa tembo', 'gallery', NULL),
(40, 'car1.png', 'mountaintop van', 'gallery', NULL),
(41, 'car2.png', 'mountaintop van', 'gallery', NULL),
(42, 'DSC03010.png', 'Amboseli national park', 'gallery', NULL),
(43, 'DSC03028.png', 'Amboseli main entrance', 'gallery', NULL),
(44, 'DSC03398.png', 'Buffalo Amboseli', 'gallery', NULL),
(45, 'DSC06618.JPG', 'Outspan hotel nyeri', 'gallery', NULL),
(46, 'DSC06982.JPG', 'Tea picking @karatina', 'gallery', NULL),
(47, 'DSC06985.JPG', 'Visitors enjoy stay @ karatina', 'gallery', NULL),
(48, 'DSC06998.JPG', 'Equator line along Nanyuki', 'gallery', NULL),
(49, 'DSC07563.JPG', 'Ngong hills hiking', 'gallery', NULL),
(50, 'care-of-the-wildlife-rhinos-without-borders1.jpg', 'Vetenirery service for Rhino                ', 'gallery', NULL),
(51, 'city_of_Nairobi.jpg', 'Nairobi city                ', 'gallery', NULL),
(52, 'handpicked-lux-saf-and-tours.jpg', 'Lions rest @mara                ', 'gallery', NULL),
(53, 'handpicked-luxury-safaris-and-tours.jpg', 'olonana camp mara                ', 'gallery', NULL),
(54, 'kenya-animal-tsavo-west.jpg', 'Tsavo west                ', 'gallery', NULL),
(55, 'kichwa-tembo-rebuild-3.jpg.950x0.jpg', 'bateleur-camp mara                ', 'gallery', NULL),
(56, 'kichwa-tembo-tented-camp.jpg.950x0.jpg', 'bateleur-camp mara                ', 'gallery', NULL),
(57, 'kichwa-tembo-tented-camp10.jpg.950x0.jpg', 'bateleur-camp mara                ', 'gallery', NULL),
(58, 'kichwa-tembo-tented-camp5.jpg.950x0.jpg', 'mahali mzuri camp mara                ', 'gallery', NULL),
(59, 'kichwa-tembo-tented-camp6.jpg.950x0.jpg', 'kichwa tembo camp mara', 'gallery', NULL),
(60, 'luxury-experiential-travel-experts-2.jpg', 'bateleur-camp mara                ', 'gallery', NULL),
(61, 'luxury-experiential-travel-experts.jpg', 'bateleur-camp mara                ', 'gallery', NULL),
(62, 'mahali_mzuri_mara.jpg', 'mahali mzuri camp mara                ', 'gallery', NULL),
(63, 'mara.jpg', 'mahali mzuri camp mara', 'gallery', NULL),
(64, 'mara4.jpg', ' wildbeast migration @mara', 'gallery', NULL),
(65, 'tsavoeast.jpg', 'Tsavo east national park', 'gallery', NULL),
(66, 'tz-top-image-61.jpg.1920x506_default.jpg', 'Lion rest Serengeti national park', 'gallery', NULL),
(67, 'wilderbeest.jpg', 'Wildbeast @mara river', 'gallery', NULL),
(68, 'xcity-of-nairobi-110.jpg.pagespeed.ic.u5bU008tq7.jpg', 'Nairobi city', 'gallery', NULL),
(69, 'DSC07567.JPG', 'Ngong hills hike', 'gallery', NULL),
(70, 'DSC07568.JPG', 'Ngong hills hike', 'gallery', NULL),
(71, 'DSC07570.JPG', 'Ngong hills hike', 'gallery', NULL),
(72, 'DSC07583.JPG', 'Ngong hills hike', 'gallery', NULL),
(73, 'Gerunuk.jpg', 'Gazelles @lewa game reserve', 'gallery', NULL),
(74, 'manjaro3.png', 'View of Mt kilimanjaro', 'gallery', NULL),
(75, 'lion4.png', 'Lion @ maasai mara', 'gallery', NULL),
(76, 'elephant1.png', 'Amboseli national park', 'gallery', NULL),
(77, 'elephant2.png', 'Elephants @ amboseli', 'gallery', NULL),
(78, 'elephant3.png', 'Elephants @ Mt kenya lodge', 'gallery', NULL),
(79, 'elephant4.png', 'mountain lodge, serena swamp', 'gallery', NULL),
(80, 'giraffe1.png', 'Giraffe @maasai mara', 'gallery', NULL),
(81, 'giraffe2.png', 'Giraffe @maasai mara', 'gallery', NULL),
(82, 'giraffe3.png', 'Giraffe @maasai mara', 'gallery', NULL),
(83, 'manjaro2.png', 'Kilimanjaro slopes around Amboseli                ', 'gallery', NULL),
(88, 'Acacia Tree Over the Savannah, Kenya.jpg', 'Acacia Tree Over the Savannah, Kenya', 'slider', NULL),
(89, 'Bedroom at the cottage.jpg', 'Bedroom at the cottage', 'gallery', NULL),
(90, 'Cottage master bedroom.jpg', 'Cottage master bedroom', 'gallery', NULL),
(91, 'Cottage bedroom double.jpg', 'Cottage bedroom double', 'gallery', NULL),
(92, '25393963_1774156262657639_1564575769_n.jpg', 'The forest,Kereita', 'slider', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `users` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users`, `name`, `email`, `password`) VALUES
(2, 'mountaintop', 'mountaintopsafaris@gmail.com', '21zach31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client`), ADD UNIQUE KEY `id` (`phone_no`,`date`), ADD UNIQUE KEY `id2` (`email`,`date`);

--
-- Indexes for table `itinerary`
--
ALTER TABLE `itinerary`
  ADD PRIMARY KEY (`itinerary`), ADD UNIQUE KEY `id` (`title`,`image`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`picture`), ADD UNIQUE KEY `identification` (`name`,`location`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users`), ADD UNIQUE KEY `identification` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `itinerary`
--
ALTER TABLE `itinerary`
  MODIFY `itinerary` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `picture` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
