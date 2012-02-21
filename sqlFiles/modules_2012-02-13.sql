# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.9)
# Database: modules
# Generation Time: 2012-02-13 16:25:26 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table 01_department
# ------------------------------------------------------------

DROP TABLE IF EXISTS `01_department`;

CREATE TABLE `01_department` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `01_department` WRITE;
/*!40000 ALTER TABLE `01_department` DISABLE KEYS */;

INSERT INTO `01_department` (`id`, `departmentName`)
VALUES
	(1,'Lincoln School of Computer Science'),
	(2,'Agricultural and Land-Based Studies');

/*!40000 ALTER TABLE `01_department` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 02_staff
# ------------------------------------------------------------

DROP TABLE IF EXISTS `02_staff`;

CREATE TABLE `02_staff` (
  `staffID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `staffName` varchar(50) DEFAULT NULL,
  `samID` varchar(11) DEFAULT NULL,
  `staffNum` int(6) DEFAULT NULL,
  PRIMARY KEY (`staffID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `02_staff` WRITE;
/*!40000 ALTER TABLE `02_staff` DISABLE KEYS */;

INSERT INTO `02_staff` (`staffID`, `staffName`, `samID`, `staffNum`)
VALUES
	(1,'Kevin Jacques','kjacques',NULL),
	(2,'Mark Doughty','mdoughty',NULL),
	(3,'John Lewak','jlewak',NULL),
	(4,'Grzegorz Cielniak','gcielniak',NULL),
	(5,'David Cobham','dcobham',NULL),
	(6,'John Murray','jomurray',NULL),
	(7,'Nicola Bellotto','nbellotto',NULL),
	(8,'Rose Spilberg','rspilberg',NULL),
	(9,'Tom Duckett','tduckett',NULL),
	(10,'Bashir Al-Diri','baldiri',NULL),
	(12,'Shaun Lawson','slawson',NULL),
	(13,'Mark Swainson','mswainson',NULL),
	(14,'Dr Yunus Khatri','ykhatri',NULL),
	(15,'Prof. Gerrit Meerdink','gmeerdink',NULL),
	(16,'S. Goodger','sgoodger',NULL),
	(17,'D. Stainton','dstainton',NULL),
	(18,'Dr P Lovatt','plovatt',NULL),
	(19,'Prof. T Taylor','ttaylor',NULL);

/*!40000 ALTER TABLE `02_staff` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 03_module
# ------------------------------------------------------------

DROP TABLE IF EXISTS `03_module`;

CREATE TABLE `03_module` (
  `code` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `owningDepartment` int(10) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `creditRating` int(11) DEFAULT NULL,
  `level` varchar(1) DEFAULT NULL,
  `moduleCoordinator` int(5) DEFAULT NULL,
  `moduleSynopsis` longtext,
  `outlineSyllabus` longtext,
  `l_tMethods` longtext,
  `accreditation` longtext,
  `indicativeReading` longtext,
  `marketing` longtext,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `03_module` WRITE;
/*!40000 ALTER TABLE `03_module` DISABLE KEYS */;

INSERT INTO `03_module` (`code`, `title`, `owningDepartment`, `subject`, `creditRating`, `level`, `moduleCoordinator`, `moduleSynopsis`, `outlineSyllabus`, `l_tMethods`, `accreditation`, `indicativeReading`, `marketing`)
VALUES
	('AGR1009M','Crop Science',2,'Agriculture',15,'1',16,'This module investigates the principles of crop science which will be further developed in the Crop Husbandry and Crop Production modules. The areas of focus are soils, plants, pests and diseases. The emphasis is on practical techniques some of the work is lab-based. Selected examples of a range of monocotyledons and dicotyledons will be used to illustrate nutritional and physiological aspects of plant growth.','?	Taxonomy and anatomy and an introduction to the physiology of plants;\r?	Soil Science:  including classification, texture, structure, water and nutrient relations;\r?	Plant Nutrition: including the role of major and minor nutrients; their deficiency symptoms and strategies to correct deficiencies;\r?	Plant physiology: including the mechanisms of plant growth; water relations and photosynthesis.\r','Teaching and learning strategy will take the form of lectures, seminars and tutorials. Where appropriate to the learning, guest speakers from industry will be invited to present current topics and solutions to issues.  Some of the work will be laboratory based with students working as individuals or in small groups. ',NULL,'Reading materials relating to this module may be found at:\rwww.agindustries.org.uk\rwww.defra.gov.uk\rwww.pgro.org\rwww.potato.org.uk\rwww.hgca.com\rwww.assuredproduce.co.uk \r\rAlford, D.A., (1999), A Textbook of Agricultural Entomology, Blackwell Science. \rAgrios, GN. (1997) Plant Pathology. 4th edition. Academic Press.\rDavies, B., Finney, B., and Eagle, D.(2001) Resource Management; Soil. Farming Press\rDefra (expected 2010) Fertiliser Recommendations for Agricultural and Horticultural Crops (RB209). The Stationary office\rLanger RHM and Hill GD (1991) Agricultural Plants. 2nd edition. Cambridge University Press.\rRidge I. (2002) Plants. Oxford University Press\rRowell, D.L., (1994), Soil Science: Methods and Applications. Longman Scientific and Technical.\rStern, KR (2000) Introductory Plant Biology. 8th edition. McGraw-Hill\rWilliams, J.B., and Morrison, J.R. (1987) ADAS Colour Atlas of Weed Seedlings. Wolfe Publishing Ltd\r',NULL),
	('AGR1010M','Animal Science',2,'Agriculture',15,'1',17,'This module introduces the student to the fundamental scientific principles of animal science and is designed to develop their knowledge and understanding of the similarities and differences in anatomy and physiology of domesticated livestock. This knowledge will provide a basis for the student to develop their understanding of how the producer may manipulate growth and development of the animal, through nutritional programmes for example, to produce livestock which meets the demands of the market and consumer.','The module syllabus will introduce the student to animal science and develop a detailed understanding of the scientific principles underlying the management of animals in each of the following areas:\r\rGrowth and Development: Definition of growth and development; patterns of growth and development in domesticated livestock and the factors influencing animal growth and carcass characteristics;\rBreeding and genetics: traits of economic importance; breeding schemes; index systems; animal welfare;\rNutrition composition and utilisation of foodstuffs; energy, protein and micronutrient provision in the diet;\rReproduction and hormones; the principles of reproduction in domesticated livestock and role of hormones in the reproductive cycle.\r','Teaching methods and learning strategy will include: lectures, seminars, laboratory practicals, tutorials, group and individual study, and where appropriate within the subject, visits to appropriate companies and invited speakers on specialist topics.',NULL,'www.defra.gov.uk\r\rCollege of Animal Welfare (2000) 300 Questions and Answers in Anatomy and Physiology. Oxford: Butterworth-Heinemann\rClayton, Hilary, M (1996) Colour Atlas of Large Animal Applied Anatomy, London: Mosby Wolfe\rFrandson, R D (1992) Anatomy and Physiology of Farm Animals, 5th edition Philadelphia: Lea & Febiger\rMacgregor, Roderick (1965) The Structure of the Meat Animals: a guide to their anatomy and physiology, 2nd Edition, London: Technical Press\rMichell, A R (1989) An Introduction to Veterinary Anatomy and Physiology, Cheltenham: British Small Animal Veterinary Association\rMcCracken, Thomas O (1999) Spurgeon?s Colour Atlas of Large Animals Anatomy: the essentials, Philadelphia, PA: Lippincott Williams and Wilkins\rMcDonald P., Edwards R. A., Greenhalgh J. F. D. and Morgan C. A. (2002) Animal Nutrition. 7th Edition. Prentice Hall\rReece, William O (2004) Functional Anatomy and Physiology of Domestic Animals, 3rd Edition, Baltimore: Lippincott Williams and Wilkins\rReece, William O (1997) Physiology of Domestic Animals, 2nd edition Baltimore: Williams & Wilkins\rTartaglia, Louise (2005) Veterinary Physiology and Applied Anatomy: a textbook for veterinary nurses and technicians, Rev Reprint, Oxford: Elsevier\r',NULL),
	('AGR1011M','Plant Pests, Weeds and Pathogens',2,'Agriculture',15,'1',16,' Pests, weeds and disease can have serious consequences upon the yield and quality of a crop. With recent and potential further reduction in the growers? armoury of plant protection products available, it is becoming increasingly important for those involve in crop production to understand the nature of the ?enemy? and the available options for control. Implementation of control measures requires an understanding of anatomy and life cycles of the organism, and the ability to correctly identify the problem. Pests and weeds are often more susceptible to control measures at certain growth stages ? these need to be correctly assessed and will be carried out in the field. The module will not only examine the current more conventional control measures available but will also embrace innovative approaches, including biological control.','The module will build upon the scientific principles of anatomy and physiology studied in the crop science module and relates them to the biology of weeds. The student will then be introduced to the biology of crop pests and diseases and the impact of all three components upon yield and quality of final product. \r\r?	Taxonomy, anatomy & biology of weeds, pests and diseases\r?	Impact of disease, pests and weeds on yield potential and quality\r?	Crop walking and methods of reporting\r?	Identification of crop and weed  growth stages \r?	Identify related legislation to the control of crop pests, weeds and disease\r','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study, field walks and where appropriate within the subject, visits to appropriate companies and invited speakers on specialist topics.',NULL,'Agrios, G.N (2005) Plant Pathology, 5th Edition. Academic Press\r\rHubbard, C.E (1992) Grasses, A Guide to their Structure, Identification, Uses and Distribution. Penguin\rNaylor, R.E.L (2002) Weed Management Handbook 9th Edition. Wiley-Blackwell\r\rPedigo, L.P (2007) Entomology and Pest Management. 6th Edition. Prentice Hall.\r\r\r\rhttp://www.bayercropscience.co.uk    Bayer UK: Pest and Weed Spotter Guides \r\r',NULL),
	('AGR2004M','Resource Management',2,'Agriculture',15,'2',15,'Pollution control, the management of waste and the search and development of alternative energy sources is of prime importance not only in the UK, but also throughout the world today. It is of public interest, heightened by the media, that natural resources such as water are protected, pollution is reduced to minimum levels wherever practicable and that the finite energy sources that have been relied upon, particularly during the last two centuries, are replaced with ?environmentally friendly? sources which do not pollute the environment. Legislation and Codes of Good Practice have rapidly been introduced to add a level of enforcement on local government and industries to speed up the progress towards these goals. This module is designed to consider the subject of waste management and pollution, and to critically evaluate the possibilities of alternative energy sources.','The module will allow the student to investigate the broad issues of resource management as the resource agenda changes. Students will also develop an understanding of how waste arises, (particularly from agriculture and primary producers), and the options for treatment and management of that waste, whilst considering the principle of ?Reduce, Reuse, Recycle?. This will include an overview of policy and the legislative framework for waste and exploration of the concept of integrated waste management.\rStudents will investigate the hydrological principles fundamental to the solution of management problems in surface waters and groundwater, including the issues of diffuse pollution, water catchment management, irrigation and the establishment of reservoirs, groundwater protection zones and NVZ?s. As the impact of climate change looms, management of these water supply issues will become increasingly important to the producer. The topics of soil organic carbon, carbon sequestration options, CSF, rainwater harvesting will be examined.\rThe link between waste and energy will be examined, including anaerobic digestion, together with the concept of waste hierarchy and how energy might be conserved in relation to primary food production operations. \r','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study, field walks and where appropriate within the subject, visits to appropriate companies and invited speakers on specialist topics.',NULL,'Reading materials relating to this module can be found at:\rAnderson, D.A. (Not yet published - 15 Apr 10) Environmental economics and natural resource management. 3rd edition. Routledge. \rC.A.B. International. (2004) Natural resources management in agriculture: methods for assessing economic and environmental impacts. CABI Pub. \rCooper, J. (2005) Agricultural biodiversity and biotechnology in economic development: natural resource management and policy series. Illustrated edition Natural resource management and policy series edition. Springer Science+Business Media. \rCushion, E. (2010) Bioenergy development:issues and impacts for poverty and natural resource management. World Bank. \rDavies, D.B., Eagle, D.J., and Finney, J.B. (2001) Resource management soil. Rev edition. Tonbridge: Farming Press.\rNovotny, V. (2002) Water Quality: Diffuse Pollution and Watershed Management (2nd Edition) (Wiley, Chichester)\rWiebe, K.D. (2007) Agricultural resources and environmental indicators. 2006th edition. Nova Science Publishers. \r\rwww.water.org.uk\rwww.environment-agency.gov.uk\rwww.ref.org.uk\rwww.r-p-a.org.uk\rwww.climateark.org\rwww.fwag.org.uk\rwww.online-ecosurvey.co.uk \rwww.envirowise.gov.uk\rwww.tyndall.ac.uk \rwww.hgca.com\rwww.wrap.org.uk \rwww.nisp.org.uk \r',NULL),
	('AGR2018M','Livestock Production',2,'Agriculture',15,'2',17,'Over the last decade livestock production has come increasingly under the microscope with the outbreaks of Foot and Mouth, BSE and Blue Tongue which lead to reduced confidence in the home and European markets. The increased awareness of health and the welfare of animals have meant that production systems have been intensely scrutinized and more frequently monitored. Protocols and audits are far more the norm in line with arable crop production. This has been compounded by the much publicised, and well documented, outlook for the increase in world population by 2050 and the consequent demand on grain as a food source and not as animal feed. The contribution of livestock to greenhouse gases, primarily methane is also recognised and research into managing this problem is underway. These are some of the issues that the student will be confronted by in this module, which aims to increase awareness and attempt to provide a global and local perspective on livestock production.','The Livestock Production module aims to develop knowledge and understanding of wide-ranging livestock production methods including intensive and extensive systems and the future of livestock in global food production. Management techniques will be investigated and their commercial implications considered. The benefits of animal agriculture as well as the debits such as environmental degradation and potential pollution issues will be reviewed. Integrated Pollution, Prevention and Control (IPPC) protocols will also be considered from a commercial and environmental compliance perspective. The student will examine factors affecting meat quality, red meat and poultry (pre and post farm gate); consumer requirements, including perceptions and nutritional qualities and markets for meat and related products e.g. eggs, butter and cheese.','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study, field walks and where appropriate within the subject, visits to appropriate companies and invited speakers on specialist topics.',NULL,'www.defra.gov.uk\rwww.fao.org \rwww.bmesonline.org.uk \r\rAlberto, P.D. (2009) New research on livestock science and dairy farming. Nova Science Publishers. \rBattaglia, R.A. (2006) Handbook of livestock management. 4th ed. edition. Pearson Prentice Hall. \rBunte, F. and Vavra, P. (2006) Supermarkets and the Meat Supply Chain: the Economic Impact of Food Retail on Farmers, Processors and Consumers. OECD\rGillespie, J.R. (2009) Modern Livestock and Poultry Production. 8 ed. edition. Thomson Delmar Learning, Division of Thomson Learning. \rGregory N. and Grandin T. (2006) Animal Welfare and Meat Production. CABI Publications\rHall, S.J.G. (2004) Livestock biodiversity: genetic resources for the farming of the future. Blackwell Pub. \r\rKyriazakis, I. and Whittemore, C.T., eds. (2006) Whittemore?s science and practice of Pig Production. 3rd. edition. Blackwell.\rPerren, R. (2006) Taste, Trade and Technology: the Development of the International Meat Industry since 1840. Ashgate.\rSteinfeld, H. (2010) Livestock in a changing landscape. Island Press. \rThankappan, S. and Flynn, A. (2006) Exploring the UK Red Meat Supply Chain. Cardiff University Centre for Business Relationships, Accountability, Sustainability and Society.\r',NULL),
	('AGR2019M','Crop Management',2,'Agriculture',15,'2',16,'This module aims to develop an understanding of crop production systems and the management techniques involved used to produce of a range of crop types. The principles of organic production systems and the concept of integrated farm management will be introduced. Production systems will be discussed in the light of political decisions on a global and local scale, market factors and the impact of the systems on the environment. With the introduction of the Food Strqategy 2030, food production and food security have been highlighted as the pricipal issues that need to be addressed.\rThrough examination of the production systems, students will be encouraged to assess the relative merits of the machinery equirements for these systems with an emphasis on the financial implications. These will include the cost effectiveness and relative merits of electronic, satellite and other information systems used to monitor and improve the precision of machine operations; and outline the relative merits of using contractors and machinery rings.','The module will allow the student to investigate the broad issues of resource \r?	Measures to analyse enterprise performance;\r?	Develop further understanding of market demands and pressures on crop management within the supply chain;\r?	Crop agronomy, including precision farming techniques, new and innovative technologies \r?	The issues surrounding agricultural production and conservation/biodiversity will be debated and provide the link to the environmental modules\r','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study, field walks and where appropriate within the subject, visits to appropriate companies and invited speakers on specialist topics.',NULL,'Indicative reading materials for this module are:\r\rAlford, D.V (2000) Pest and Disease Management Handbook. 4th edition. Wiley-Blackwell.\rAnon. (annual) The Agricultural Budgeting & Costing Book.  ABC\rHay R. K. M. and Porter J. R. (2006) The Physiology of Crop Yield. 2nd Edition. Wiley-Blackwell\rNix, J.  (annual)  Farm Management Pocketbook. Imperial College London.\rSoffe, RJ. (2003) The Agricultural Notebook, 20th ed. Blackwell Science. ISBN 0-632-05829-3.\rWiseman, A.J.L., Finch, H.J.S., and Samuel, A.M. (2002) Lockhard and Wisemans Crop Husbandry. 8th Edition. Pergamon Press\r\r\rJournals/Periodicals\rCrops\rArable Farmer\rPotato Review\rSugar Beet Review\rVegetable Farmer\rPea & Bean Progress\rFarmers Weekly\r\rMaterial relating to this module may be found at:\r www.fwi.co.uk \rwww.agindustries.org.uk\rwww.soilassociation.org\rwww.foodstandards.gov.uk\rwww.nfu.org.uk\rwww.environment-agency.gov.uk \rwww.leafuk.org/leafuk/\rwww.assuredproduce.co.uk\rwww.hgca.com\rwww.potato.org.uk\rwww.pgro.org \r',NULL),
	('AGR2020M','Crop Husbandry',2,'Agriculture',15,'2',16,'This module provides an overview of the principles of crop husbandry, from pre-cropping preparations through to harvest and storage. Particular attention is given to environmental considerations and the requirements of cross compliance. A focus of the module will be ?growing for a market?,where the choice of crop, variety and cultural practice is driven by the demands of the market.','The module will allow the student to utilise the material previously studied in the Crop Science and Pests, Weeds and Disease modules at level 1 and apply that knowledge to producing crops. The students will examine a range of topics including:\r?	Choice of crop, seed and variety\r?	Crop establishment and cultivations\r?	Drainage and irrigation\r?	Crop protection, plant nutrient and liming requirements \r?	Harvest and storage\r','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study, field walks and where appropriate within the subject, visits to appropriate companies and invited speakers on specialist topics.',NULL,'Indicative reading materials for this module are:\r\rAnon. (annual) The Agricultural Budgeting & Costing Book.  ABC\rHay R. K. M. and Porter J. R. (2006) The Physiology of Crop Yield. 2nd Edition. Wiley-Blackwell\rNix, J.  (annual)  Farm Management Pocketbook. Imperial College London.\rSoffe, RJ. (2003) The Agricultural Notebook, 20th ed. Blackwell Science. ISBN 0-632-05829-3.\rWiseman, A.J.L., Finch, H.J.S., and Samuel, A.M. (2002) Lockhard and Wisemans Crop Husbandry. 8th Edition. Pergamon Press\r\rJournals/Periodicals\rCrops\rArable Farmer\rPotato Review\rSugar Beet Review\rVegetable Farmer\rPea & Bean Progress\rFarmers Weekly\r\rMaterial relating to this module may be found at:\r www.fwi.co.uk \rwww.agindustries.org.uk\rwww.soilassociation.org\rwww.foodstandards.gov.uk\rwww.nfu.org.uk\rwww.environment-agency.gov.uk \rwww.leafuk.org/leafuk/\rwww.assuredproduce.co.uk\rwww.hgca.com\rwww.potato.org.uk\rwww.pgro.org \rhttp://www.bsonline.co.uk/bsiframe/Default.aspx\r',NULL),
	('AGR2021M','Livestock Physiology and Nutrition',2,'Agriculture',15,'2',17,'The module aims to build on the knowledge gained from studies of animal science and livestock production at levels 1 and 2 and to provide students with an increased level of understanding of nutrition and physiology of livestock.\r\rThe module aims to build on the knowledge gained from studies of crop and plant science and crop husbandry and production at levels 1 and 2 and to provide students with an increased level of understanding of plant physiology to undertake the studies at level 3. The module will focus on the effect of environmental variables on yield, yield components, plant growth and its analysis and upon advances in biotechnology.\r','The animal physiology content of the module will build upon that previously studied in the animal science module. In this module the student will investigate a range of physiological processes, including ion transport mechanisms (passive, active and osmosis), effector systems; the endocrine, paracrine and autocrine systems; hormone synthesis and function and hormone mode of action; energy and energy evaluation systems; homeostasis and energy balance. The module will also examine the physiology of reproduction in livestock species.\r      The nutritional element of the module will enable the student to gain an understanding of how to meet the nutritional requirements for animal growth and development. This will include formulation of rations; partition of nutrients (maintenance, growth, reproduction, lactation); consideration of energy levels, supply of feedstuffs; understanding growth and how to measure growth and composition; factors affecting growth and how to control it; the influence of genotype on setting growth potential; in-feed growth promoters; examining the character and chemical composition of feedstuffs and methods of evaluation including proximate analysis, digestibility, energy and protein.\r','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study, field walks and where appropriate within the subject, visits to appropriate companies and invited speakers on specialist topics.',NULL,'Indicative reading materials for this module are:\r\rwww.hgca.com\rwww.fwi.co.uk\rwww.rothamstead.ac.uk\rwww.environmentsensitivefarming.co.uk \rwww.defra.gov.uk\r\r\rClancy,J., McVicar, A.J. (2002) Physiology and Anatomy: A Homeostatic Approach. 2nd Edition. Arnold Publishing\rKay, I. (1998) Introduction to Animal Physiology. Oxford, BIOS Scientific Publishers\rSchmidt-Nielsen, K. (1997) Animal Physiology: adaptation and environment. 5th Edition. Cambridge: Cambridge University Press\r\rJournals:\rPig Farming \rJournal of Dairy Science\rPoultry World',NULL),
	('AGR2022M','Crop Physiology',2,'Agriculture',15,'2',17,'The module aims to build on the knowledge gained from studies of crop and plant science and crop husbandry and production at levels 1 and 2 and to provide students with an increased level of understanding of plant physiology to undertake the studies at level 3. The module will focus on the effect of environmental variables on yield, yield components, plant growth and its analysis and upon advances in biotechnology.','The module will examine physiology of plants in relation to cultivated crops. The student will identify yield components and the abiotic and biotic factors that will affect crop yield including the transpiration, photoperiodism and phototropism. This will inevitably introduce the student to plant growth regulators, their mode of action and their relevance to crop production. The student will investigate radiation and temperature effects on crop performance; crop/water relationships and related irrigation practices; photosynthetic pathways and photorespiration involving C3, C4 and CAM pathways. The module will also focus on crop yield and dry matter production which will include an examination of yield components and methods of yield determination and plant analysis.\rThe subject of biotechnology will be introduced, and will include aspects of plant breeding, traditional and transgenic approaches.\r','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study, field walks and where appropriate within the subject, visits to appropriate companies and invited speakers on specialist topics.',NULL,'Indicative reading materials for this module are:\r\rHay R. K. M. and Porter J. R. (2006) The Physiology of Crop Yield. 2nd Edition. Wiley-Blackwell\rHopkins, W.G. (2004) An Introduction to Plant Physiology. 3rd Edition. New York: John Wiley\rSalisbury, F.B. and Ross, C.W. (1992) Plant Physiology. 4th Edition. Belmont. California: Wadsworth\rTaiz, L. and Zeiger, E. (2002) Plant Physiology. 3rd Edition. Sinauer\r\rJournals:\rAgronomy Research\rAgronomy journal\rSoil Technology\rCrop Science\rField Crops Research\r\rwww.hgca.com\rwww.fwi.co.uk\rwww.rothamstead.ac.uk\rwww.environmentsensitivefarming.co.uk \rwww.defra.gov.uk\rwww.agindustries.org.uk\rwww.soilassociation.org\rwww.foodstandards.gov.uk\rwww.nfu.org.uk\rwww.environment-agency.gov.uk \rwww.leafuk.org/leafuk/\rwww.assuredproduce.co.uk\rwww.potato.org.uk\rwww.pgro.org \rhttp://www.bsonline.co.uk/bsiframe/Default.aspx\r',NULL),
	('AGR2023M','Sustainable Environmental Management',2,'Agriculture',15,'2',16,'Sustainable development of land-based industries, the community and the environment in which they operate is extremely important. Effective environmental management leads to a sustainable society and a healthy earth. As society becomes more interested in the operation of businesses, a business is no longer able to operate in a vacuum and has both a corporate and social responsibility.  \rThe public concern for the state of the environment continues to grow, intensified by an apparent escalation in the frequency and severity of environmental hazards and fuelled by media attention. In addition there has been an increase in environmental legislation and policy initiatives on a global, European, national and regional scale. This module will introduce students to the practice of environmental and sustainability management and examine issues such as biofuels/biomass, crops for energy, local and global self-sufficiency, human health and transport. Issues surrounding biofuels and food production will be debated.\r','The module will encourage students to engage with the principles of sustainability and how this concept is vital to rural areas where there are critical issues affecting communities such as the rapid increase in growth of the UK?s rural population, changes in the local infrastructure and continuing financial difficulties for the agricultural sector. The module will introduce topics such as biodiversity and biodiversity action plans (BAP), conservation and ecology; integrated land use; implementation of Integrated Crop Management  (ICM) and Integrated Farm Management (IFM) practices including operation of the DEFRA Environmental Stewardship Scheme; the potential consequences of climate change; the role of legislation in protecting the environment; the role of government and non-government organisations in conservation and environmental issues; self-sufficiency and energy. ','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study, field walks and where appropriate within the subject, visits to appropriate companies  including LEAF farms, and invited speakers on specialist topics.',NULL,'www.environment-agency.gov.uk \rwww.naturalengland.org.uk\rwww.leafuk.org \rwww.tyndall.ac.uk \r\rBarrow, C.J. (1999) Environmental Management- Principles and Practice. Routledge, London\rDEFRA (Department for Environment, Food and Rural Affairs) (2002) Achieving a Better Quality of Life: Review of Progress Towards Sustainable Development-Government Annual report 2002 (Defra Publications, London)\rGaston KJ and Spicer JI. (2002) Biodiversity: an Introduction. Blackwell Science.\r\rJournals:\rJournal of Environmental Management\r',NULL),
	('AGR2024M','Research Methods and Project Management',2,'Agriculture',15,'2',18,'This module is concerned with developing skills required to collect, interpret and present primary and secondary research information. It describes and discusses the application of descriptive and quantitative statistics.\rThe module considers some of the principles of experimental design and expands them in detail. It describes statistical significance tests for comparing data and enables students to practise where and how to use each statistical test. It will provide students with the skills required to design and carry out a research project, and provide the foundation for the Independent Project at level 3.\rProject management skills are essential to any business and will enable the student to analyse a problem, produce a project plan, undertake actions to effect a solution to the problem. This will involve effective leadership and organisational skills, together with decision-making and team management. \r','Scientific research methods:  Introduce the scientific principles of research. This will include experimental design and data collection techniques.\rIdentifying research questions, aims, objectives and design of an experiment; development of hypotheses and predictions; controls and replication, sampling techniques, avoiding bias and defining data variables.\r Experimental data: Types of data, quantitative and qualitative. Populations and samples, distribution of data ? normal and non-normal, frequency, summary statistics including measures of central tendency, measures of variability, correct graphical presentation for specific types of data.\rReview statistical significance tests for comparing sets of data:\rThe basic format of a significance test ? the null and alternative hypotheses. Converting data to standard statistical modules. Matching the statistical test with the data to be compared. The limitations and assumptions of different statistical tests. Comparison of calculated values with those in statistical tables. Deducing whether to accept or reject the NH levels of significance.\rStatistical significance tests:\rStudent t-test, matched pair t-test, ANOVA, chi square test for frequency data and correlation. Use of statistical computer packages e.g. SPSS Applications of the tests on relevant practically obtained data.\rProject management:\rThis section of the module will cover 7 areas: project initiation (the factors required for a successful outcome); risks, estimates and contracts (how much will the project cost); planning; building and leading a team; project execution (the tasks that must be performed during the life of a project e.g. measuring progress against planned); standards, methodologies and reflections.\r','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study. These will be supported by data generated either by the student having taken direct measurements e.g. leaf area or taste panel results, or where the student is provided with the research data to analyse.',NULL,'Reading material relating to this module can be found at:\rwww.math.com\rwww.s-cool.co.uk \r\rBarnett, R. (2004). Schaum?s Outline of Theory and Problems of Elementary Algebra. 3rd Edition. McGraw-Hill.\rCann A.J. (2002) Maths from Scratch for Biologists.  John Wiley and Sons Ltd \rClewer A. G. and Scarisbrick D.H. (2001) Practical Statistics and Experimental Design for Plant and Crop Science. Wiley\rCoolidge, F.L. (2006). Statistics: a gentle introduction. London. Sage Publications\rCroft A. and Davison R. (2006) Foundation Maths 4th Edition. Prentice Hall\rJones A., Read R. and Weyers J. (2003) Practical Skills in Biology. 3rd Edition. Prentice Hall\rMendelson, E. (1997). Schaum?s Outline of Theory and problems of Beginning Calculus. 2nd Edition. McGraw-Hill\rRuxton, G.D., Colegrave N. (2006) Experimental Design for the Life Sciences. Oxford. Oxford University Press\rSpiegel, M.R. (1999). Schaum?s Outline of Theory and Problems of Statistics. 3rd Edition. McGraw-Hill\r',NULL),
	('AGR2025M','Quality Management and Evaluation',2,'Food Manufacture',15,'2',14,'Quality assurance plays a legal and moral role within the production of food for both the processor and producer. This module develops knowledge and understanding of available quality assurance (QA) and quality control (QC) management methods whilst adhering to required legislation and codes of practice and discusses the concept of risk. The rationale of HACCP in relation to food safety and the concept of Total Quality Management (TQM) are explored together with the schemes used to monitor management systems, all contributing to food security and traceability.\rThe learner will be introduced to the quality assessment techniques, linking back to the food commodities module, undertaken on whole and processed products for example, chemical, physical, sensory and microbiological criteria.  The results of the quality assessments against product specifications and the role of assurance schemes will be explored.\rThe learner will investigate the content of the syllabus in relation to a variety of product areas. \r','The module will examine a range of topics including:\r\rProducer / processor constraints, examine the sources of biological / chemical and physical contamination in relation to food safety, legislation and codes of practice\r\rQA and QC systems, principles and role of HACCP and TQM, Auditing Risk assessment\r\rAssurance schemes ? supplier accreditation\r\rChemical, Physical and Microbiological Assessment Techniques\r\rSensory Evaluation - evaluation of a food product using its sensory attributes through statistical analysis.\r','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study, and where appropriate within the subject, visits to appropriate companies and invited speakers on specialist topics. Laboratory practicals will form a key part of the delivery and of the assessment of this module e.g. determination of protein, gluten and mycotoxins in cereals; total cell counts, phosphatise test and adulteration in milk; and develop a sensory profile of a commodity.',NULL,'Reading materials relating to this module can be found at:\rwww.brc.org.uk\rwww.defra.gov.uk\rwww.efsis.com\rwww.fabbl.co.uk\rwww.foodstandards.gov.uk\rwww.rdg.ac.uk/iagrm \rwww.soilassociation.org\r\r\rAli I. (2004) Food Quality Assurance: Principles and Practices. CRC Press\rBedford L.V. (2002) HACCP in Agriculture: Livestock Production. CCFRA \rDillon, M (1996) How to HACCP: an Illustrated Guide. Grimsby: MD Associates\rDillon M and Griffith C (2001) How to HACCP: A Management Guide. MD Associates\rForsythe and Hayes (1998) Microbiology and HACCP. Aspen\rFox B. and Cameron A.G. (2006) Food Science Nutrition and Health. 7th Edition. London Edward\rJay J.M. (2005) Modern Food Microbiology. 7th Edition. Aspen.New York\rMontimore S. and Wallace C. (2001) HACCP, London, Blackwell Science\rParry, T (1990) Principles of Microbiology for Students of Food Technology. London, Thornes\rSpringett, M (1998) Raw Materials and the Quality of Processed Foods. London, Blackie\r',NULL),
	('AGR2026M','Agri-Food Business Management',2,'Food Manufacture',15,'2',16,'The student will acquire an understanding of the main agri-business techniques for monitoring and controlling the business including the construction and analysis of accounts, forward planning and budgeting as key management skills. The student will also learn to integrate their knowledge of crop and animal production with the management techniques to prepare recommendations for farm performance.','The module will initially look at farm/ business records, and then move on to the management and organisation of budgets (actual costs and budgeted), whole farm budgets and crop/livestock profitability or food factory budgets and food product profitability, partial budgets and cash flow budgets. The students will also be introduced into valuation and depreciation, and the difference between revenue and capital costs. The module will also examine the range of options available for business finance, tax efficient options and investment appraisal techniques. \r\rThe agricultural student will become familiar with land tenure (tenancy agreements and rent assessment), machinery planning and acquisition.  The food manufacturing student will become familiar with factory cost, plant and equipment planning and acquisition. \r','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study, and where appropriate within the subject, visits to farms and appropriate agri-food business enterprises and invited speakers on specialist topics.',NULL,'Buchanan D. and Huczynski A. (2007). Organizational Behaviour ? An Introductory Text. 6th Edition. Prentice Hall\rMason R. (2003) Finance for Non Financial Managers. 3rd. Edition. Hodder Arnold.\rNix J. (2007) Farm Management Pocketbook. 37th Edition. The Andersons Centre.\rSAC (2006) The Farm Management Handbook 2006-2007 27th Edition. Ed. Beaton C. \rSoffe RJ. (2003) The Agricultural Notebook 20th Edition. Blackwell Publishing\r',NULL),
	('AGR3009M','Independent Project',2,'Agriculture',30,'3',19,'This module is based upon individual, supervised student activity, which provides an opportunity for an in-depth study of a particular topic relevant to agriculture and/or food manufacture. The project will also enable the student to demonstrate original and critical thought, their abilities to plan, organise, and conduct their own work, evaluate and select relevant information and present a thesis. The thesis will conform to an agreed format and will be presented in a logical and coherent manner..\rThe module requires the student to generate and analyse some form of primary data. The project title will be derived from the research interests of a member of academic staff, an industrial problem with the involvement of a particular company, or one suggested by the student ( only if it is at an appropriate  level, and staff expertise and equipment are available). The research may be developed in partnership with employers and, as such will present information relevant to a specific employer needs and be significant to the development of that business.\r','The independent study will be supported by studies which will consist of the following lectures and seminars:\r?	Study planning\r?	Literature retrieval techniques\r?	Thesis format\r?	Scientific report writing\r?	Presentation skills\r?	Oral presentation feedback\r','Teaching methods and learning strategy will include a programme of lectures and tutorials.  The emphasis on the individual projects is on student centred learning, with specialist tutorial support. Opportunities will be provided to the student to undertake practical work, field work and surveys through links with industrial partners.',NULL,'Supervisors will suggest appropriate indicative reading and key references that will be unique to each student. Students will receive a project handbook, which will act as a source of reference for the project. \r\rDawson C. (2005) A Practical Guide to Research Methods: A User friendly manual for Mastering Research Techniques and Projects. How to Books\rHart C.  (1998) Doing a Literature Review: Releasing the Social Science Research Imagination Pub: Sage Publications Ltd\rHoward K., Sharp J. A., and Peters J. (2002) The Management of a Student Research Project 3rd Edition; Pub: Gower Publishing Ltd\rMoore N. (2000) How to do Research: The Complete Guide to Designing and Managing Research Projects. Library Association\rRobson C. (2006) How to do a Research Project: A guide for undergraduate students.  Pub: Blackwell Publishing\r',NULL),
	('AGR3010M','Current Issues in Agriculture and the Environment',2,'Agriculture',15,'3',17,'There is currently much debate surrounding the concepts of sustainability and food security. Sustainability may be viewed as an attempt to harmonise the economic, social and environmental dimensions of a general developmental strategy for food and energy production. This strategy is now a key feature of governmental policies world wide. A major challenge to governments and producers for the 21st century is to change the patterns of production and consumption to achieve sustainable development objectives without compromising the future viability of natural and human systems. Businesses will need to develop their own strategies to further improve their products and processes in response to consumer demand and the needs of the environment. This module will provide students with an opportunity to draw on knowledge and experience gained throughout the programme and investigates any of the above aspects of agriculture and the environment. These may be political, social, economic, moral and ethical, environmental or production issues. ','This integrative module is designed to encourage the student to investigate in depth the current agricultural and environmental issues. Such issues may have a current or future impact on crop, livestock or non-food crop production. Examples of potential study areas that may be addressed include: the future of genetically modified crops; the impact on crop production on biodiversity; management of climate change and its impact on production and perhaps the social and political dimensions of water use. Debate may ensue around whether or not genetic improvement is critical to address issues of food security for a growing world population, or whether crops are a central component of agro-ecosystems and economies worldwide, and as a consequence, there is a need to consider agriculture and environment on a global scale as well as local. Students may also investigate the application of the latest and emergent biotechnology options and bioformatics for crop improvement and production. The content of the module is likely to change each year to reflect the issues of the day.','Teaching methods and learning strategy will include lectures, seminars and involve student-led research into a specific topic. The module will also include a series of invited lectures by experts in the field with some presentations given by the students themselves. ',NULL,'Advice and guidance will be provided to students dependent on their chosen area of research.\r\rJournals:\rAgronomy Research\rAgronomy journal\rSoil Technology\rCrop Science\rField Crops Research\rPost Harvest Biology and Technology\rEnvironmental and Experimental Botany\r\rwww.hgca.com\rwww.fwi.co.uk\rwww.environmentsensitivefarming.co.uk \rwww.defra.gov.uk \rwww.ukagriculture.com \rwww.fao.org\rwww.who.int \r',NULL),
	('AGR3011M','Integrated Farm Management',2,'Agriculture',30,'3',16,'The aims behind this module are to draw together the principles studied in the first year of the programme, with the more in-depth nature of the studies in the second year, and to integrate them into a coherent module. This will provide the student with a clear understanding of the complex and multi-disciplinary nature of the industry. An industry which demands a wide range of skills and depth of knowledge, but with an understanding of how these can be applied.  Integrated farming is an approach to food production which combines traditional farming methods with modern technology, in an environmentally friendly manner. IFM aims to ensure high standards of food production with minimum environmental impact; it integrates beneficial natural processes, landscape maintenance, enhancement of wildlife habitats and increased biodiversity into modern farming practices. The concept is a whole farm, long term strategy. ','The student by embracing the IFM approach will use the management and business skills, and draw upon the scientific knowledge, studied previously in the programme. The module will introduce the student to advanced farm business techniques through a ?live? farm. \rIt is expected that the student will construct a fully detailed farm business plan (including financial statements and budgets) as part of a land tenure agreement. This plan will encompass waste and energy managements, cropping and environmental schemes. It will reflect the current legislation and government and European support mechanisms. The cropping plan and rotation will be developed in conjunction with for example, nutrient management plans. Environmental schemes (ELS and HLS) to enhance the biodiversity together with diversification options, may be considered by the student; machinery management selection to equip the production system, (using prior knowledge of finance sources), and sprayer technology, will be studied to further inform the plan. As part of the IFM approach energy and waste management on the holding will be examined.\r','Teaching methods and learning strategy will include lectures, seminars, tutorials, group and individual study, and where appropriate within the subject visits to agricultural sites and Institutions. Speakers on specialist topics will be invited to contribute to the programme.',NULL,'Boss, A. (2004) Modern farm management: principles & practice. Biotech. \rDrummond, C.J. (2006) Integrated Farm Management: Principles and Progress of Good Agricultural Practice. Proceedings of the International Fertiliser Society edition. International Fertiliser Society. \rKay, R.D. (2007) Farm management. International ed., 6th ed. edition. McGraw-Hill Higher Education. \rNix J. (2007) Farm Management Pocketbook. 37th Edition. The Andersons Centre.\rSAC (2006) The Farm Management Handbook 2006-2007 27th Edition. Ed. Beaton C. Turner, J. (1 May 10 Not yet published) Applied Farm Management. 3rd edition. John Wiley and Sons Ltd. \rWiseman, A.J.L., Finch, H.J.S., and Samuel, A.M. (2002) Lockhard and Wisemans Crop Husbandry. 8th Edition. Pergamon Press\r\rwww.hgca.com\rwww.fwi.co.uk\rwww.rothamstead.ac.uk\rwww.environmentsensitivefarming.co.uk \rwww.defra.gov.uk\rwww.environment-agency.gov.uk \rwww.naturalengland.org.uk\rwww.leafuk.org \rwww.tyndall.ac.uk \r\rJournals\rAgronomy Research\rAgronomy journal\rSoil Technology\rCrop Science\rField Crops Research\r',NULL),
	('AGR3012M','Managing the Supply Chain, Operations and Resources',2,'Food Manufacture',30,'3',18,'Supply chains, coordinated on a global and local scale, for producing and markets food products, present a fascinating and important area for study. They are re-shaping contemporary business, technological and socio-economic development. They impact on everyone?s lives, in both the industrialized and developing countries. Supply chains are central to environmental change and to sustainable business practice. Learning how to manage them and their impacts presents fundamental organisational challenges.\rManaging operations efficiently whether on the farm or in a factory is essential for any business to compete successfully. It is a factor within the supply chain and usually involves project management, with the aim of maintaining and raising quality and improving efficiency in an increasing lean environment.\rManaging people, human resource management, is concerned with the effective management and utilisation of human resources in organisations. For most organisations, human resources are their greatest assets and their optimal utilisation is the key to competitive advantage in today?s increasingly harsh economic environment. It is now so crucial to success, that is it no longer the sole responsibility of personnel management, and is the responsibility of all managers.\r','Supply Chain Management\rThe student will establish how supply chain management is extending across the total product life cycle- from production in the field, through primary processing, further processing, distribution, marketing and after-market support to end-of-life processing.\rThe 3 themes that will be examined are supply chain policy, supply chain practice and supply chain improvement with the view of an integrated supply chain. Concepts such as process mapping and the strategic management of lead times will be considered.\r \rOperations Management\rThis section of the module will provide the student with an in-depth understanding of the concepts and strategies relevant to operational management, and embed the skills necessary to analyse and solve problems associated with design, planning and control of production of food products.\r\rHuman Resource Management\rStudents will examine HRM for both a strategic and operational perspective. Strategically, HRM policies are designed to support and reinforce general business strategies; operationally, HRM is concerned with optimising the day-today management of people.\rThe topics covered in this part of the module will include: the origins and nature of HRM; models of HRM; key themes in HRM; recruitment and selection; performance appraisal and performance management.\r','Teaching methods and learning strategy will include lectures, seminars, tutorials, group and individual study, and where appropriate within the subject visits to agricultural sites and Institutions. Speakers on specialist topics will be invited to contribute to the programme.',NULL,'Christopher M. (2004) Logistics and Supply Chain Management: Creating Value - Adding Networks (Financial Times Series) Publisher: Financial Times/ Prentice Hall; 3rd edition \rChopra, S. Meindl, P. (2007) Supply Chain Management, 3rd Edition. Prentice Hall\rFawcett, S.E., El Iram, L., Ogden, J.A. (2007) Supply Chain Management: From Vision to Implementation. Prentice HallHugos M. (2006) Essentials of Supply Chain Management, Publisher: John Wiley & Sons; 2nd Edition\rJohnson, G. Scholes, K. Whittingham, R. (2006) Exploring Corporate Strategy. Harlow FT Prentice Hall\rMarchington, M. and Wilkinson, A. (2002) People Management and Development. 2nd Edition. London:CIPD\rMorgan G. (1997) Imaginization: New Mindsets for Seeing, Organizing, and Managing. Publisher: Berrett-Koehler\rMullins, L. (2004) Management and Organisational Behaviour, Prentice Hall.\rSenge P. (2006) The Fifth Discipline. Random House Business Books; 2nd Rev Edition\rSlack, N. Chambers, S. and Johnston, R. (2001) Operations management. 3rd Edition. Financial Times Prentice Hall\rWeightman, J. (2002) Managing People. London:CIPD\r',NULL),
	('AGR3013M','Environmental Management',2,'Agriculture',30,'3',17,'The module aims to introduce the student to the practice of environmental and sustainability management, covering legal and policy frameworks, regulatory and advisory bodies, the generation and implementation of environmental and sustainability strategies, techniques of environmental decision-making and information handling. The module will also enable the student to build upon knowledge gained in the sustainable environmental management module and to examine more specialist areas such as sustainable development, environmental impact assessment, ecological assessment, environmental monitoring and biodiversity.','The module will examine methods of environmental assessment; management of organisational structures to tackle environmental matters; development of environmental management systems (ISO 14001 and EMAS) and environmental management tools; policy and regulatory principles of environmental risk management and their practical application; environmental planning and rural development policies the response of businesses to environmental challenges in a range of contexts. The student will investigate auditing, of inputs and outputs, including carbon, energy and fossil fuels. Green tourism and public access to land (SSSI?s, AONB, and National parks) is an important and growing rural issue which will be reviewed.  Students will also be able to pursue an area within environmental management of specific interest of their own. This may involve biodiversity and conservation, environmental protection, climate change and impact assessment or environmental policy and legislation.','Teaching methods and learning strategy will include lectures, seminars, tutorials, group and individual study, and where appropriate within the subject visits to agricultural sites and Institutions. Speakers on specialist topics will be invited to contribute to the programme.',NULL,'Barrow, C.J. (1999) Environmental Management- Principles and Practice (Routledge, London)\rDEFRA (Department for Environment, Food and Rural Affairs) (2002) Achieving a Better Quality of Life: Review of Progress Towards Sustainable Development-Government Annual report 2002 (Defra Publications, London)\r\rJournal of Environmental Management\r\rwww.environment-agency.gov.uk\rwww.climateark.org\rwww.naturalengland.org.uk\rwww.online-ecosurvey.co.uk \rwww.defra.gov.uk  environmental protection section\rwww.hgca.com environment section\rwww.naei.org.uk National Atmospheric Emissions Inventory\rwww.ipcc.ch Intergovernmental Panel on Climate Change\rwww.airquality.co.uk\rwww.occ.gov.uk/activities/stern.htm The Stern Review, autumn 2006\rhttp;//assets.panda.org/downloads/living planet report. PDF WWF Living Planet Report\rwww.bioregional.com/programme_projects/opl_prog/principles.htm Bio-Regional One Planet Living Programme\rwww.defra.gov.uk/environment/statistics/eiyp/pdf/eiyp2007.pdf Defra, The Environment in your pocket 2007\r',NULL),
	('CMP1001M','Software Development',1,'Computing',30,'1',2,'This module introduces the concepts and practice of simple computer programming, with attention paid to quality and testing issues. Following on from this fundamental base, the module extends students\' knowledge of computer programming enabling them to create systems consisting of multiple classes and objects. Fundamental principles of discrete mathematics are explored and developed.','Imperative programming concepts: variables, sequence, iteration, repetition; data types and values; quality issues and testing; implementation and design processes. \rClasses and objects; class definition; object instantiation; using and defining methods. Class and use-case modelling using UML; interactions between classes; developing systems of classes; testing and validation techniques; user-interface development. \rThis module develops discrete mathematical concepts, techniques and principles related to software development, such as (but not limited to): linear algebra, logic, set theory, functions and relations.\r','This module is taught through a programme of lectures, laboratory workshops, group exercises and tutorials. Formative in-class assessment is employed both to develop a deeper understanding of the subject and to rehearse technique for the summative assessments.',NULL,'Useful:\r\rHaggarty, R., Discrete Mathematics for Computing (Addison Wesley, 2001)\r\rPiff, M., Discrete Mathematics: An Introduction for Software Engineers (Cambridge University Press,1991)\r\rLiberty, J., Learning C# 2005, (O?Reilly, 2006)\r\rBritton, C., Doake, J., A Student Guide to Object Oriented Development (Butterworth ? Heinemann, 2004)\r\rGood reading, but not essential:\r\rLiberty, J., Programming C# 4th edition (O?Reilly, 2005)\r\rDrayton, P., C# Language Pocket Reference (O?Reilly, 2002) \r\rOr other object oriented programming languages as appropriate. \r',NULL),
	('CMP1003M','Computer Systems',1,'Computing',15,'1',4,'This module introduces the student to computer hardware, the history of computer, data representation and manipulation at the byte level, basic machine instructions, the operation of the fetch-execute cycle, the characteristics of main and cache memory, I/O control and the inner working of disk storage. This module also presents the most popular hardware architectures and provides a basic introduction to microcontrollers.','Background knowledge:\rThe history of computers\rStandard units and performance measures\rNumber systems: binary and hexadecimal systems, conversions between different systems, binary arithmetic operations\rData representation: \rnumbers (integers, real numbers), characters, media\rLogic: Boolean algebra, logic gates, combinational and sequential circuits\rThe structure and function of the computer:\rCPU: program execution, the flow of control: jumping, branching, subroutines, interrupts; machine instructions, addressing modes, parallelism\rMemory: types of memory, memory hierarchy, semiconductor memory, cache memory, types of cache mapping\rI/O devices: classification, I/O control methods, external storage: hard drives and optical disks\rBuses: function and classification\rThe architecture example: x86 architecture\rMicrocontrollers: memory, I/O ports, timers, watchdog timer, serial communication, A/D converters\r\rThis module develops the following mathematical concepts and techniques:\rNumber systems: binary and hexadecimal systems, conversions\rbetween different systems, binary arithmetic\rData representation: numbers (integers, real numbers),\rcharacters, media\rLogic: Boolean algebra, logic gates, combinational and\rsequential logic\r','This module is taught through a program of lectures which introduce and discuss core concepts and issues. The lectures are supported by practical workshops and assigned readings. Formative in-class assessment is employed both to develop a deeper understanding of the subject and to rehearse technique for the summative assessments.',NULL,'Null, L. &  Lobur, J., The essentials of computer organization and architecture, 2nd edition (Jones and Bartlett Publishers, 2006)\r\rStallings, W., Computer Organization and Architecture: Designing for Performance, 7th ed (Prentice Hall, 2005)\r\rTanenbaum, A., Structured Computer Organisation, 5th edition (Prentice Hall, 2006) \r',NULL),
	('CMP1005M','Operating Systems',1,'Computing',15,'1',5,'This module studies both the theoretical design concepts which underpin all operating systems and, through case-studies, the practical implementation techniques of current operating systems. Special attention will be given to shell programming languages and examples to practically implement concepts and techniques at the basis of the various operating systems	','Basic introduction to Operating Systems.\rReview of Operating Systems: Development and evolution, different types.\rComputer architecture, I/O programming and resource management.\rThe concept of Process: Process Management: Process creation and switching. Scheduling. Memory Management: Address space issues, segmentation. Virtual memory.\rInter-process Communication; pipes\rDeadlock: Conditions for deadlock and its avoidance.\rInput-output systems: Programmed I/O, DMA, device drivers\rFile systems: File management, directories, RAID.\rIntroduction to shell programming: Bash shell, Awk, PERL\r','This module is taught through a program of lectures which introduce and discuss core concepts and issues. The lectures are supported by practical workshops and assigned readings. Formative in-class assessment is employed both to develop a deeper understanding of the subject and to rehearse technique for the summative assessments.',NULL,'Stallings, W., Computer Organisation and Architecture 6th Edition (Prentice-Hall, 2005)\r\rRitchie, C., Operating Systems Incorporating UNIX and Windows 4th Edition (Thomson, 2003)\r\rStallings, W., Operating Systems: Internals and Design Principles (Prentice-Hall, 2004).\r\rTanenbaum, A. & Woodhull, A.S., Operating Systems: Design And Implementation 3rd edition (Prentice Hall, 2006) \r	',NULL),
	('CMP1009M','Information Systems',1,'Computing',15,'1',3,'The module seeks to raise awareness of the nature, purpose and structure of organisations in their many forms. The module explores the composition of organisations and how they operate to yield purpose. Systems tools and methodologies are investigated as a way of understanding organisational structure and dynamics.','Introduction to organisations and systems. \rInformation, systems and information systems. \rBusiness Information Systems. \rInformation Systems Modelling. \rUse and Impact of Information Systems. \rOrganisation, theory, structure, processes, culture. \rIntroduction to Information Systems analysis and design.\r','A combination of lectures, and plenary sessions are used to enable the outcomes to be achieved and demonstrated. Formative in-class assessment is employed both to develop a deeper understanding of the subject and to rehearse technique for the summative assessments.',NULL,'Beynon-Davies P., Information Systems: An Introduction to Informatics in Organisations (Macmillan, 2002) \r\rCurtis G, & Cobham, D., Business information systems: analysis, design and practice, 6th Edition (Prentice Hall, 2008)\r\rLanger, A. M., Analysis and Design of Information Systems (Springer, 2008)\r\rLaudon J, and Laudon P. Management Information Systems: Managing the Digital Firm (Prentice Hall, 2007) \r',NULL),
	('CMP1032M','Problem Solving',1,'Computing',15,'1',1,'Problems are a natural occurrence in an organisational context and this module introduces students to problem solving from a mix of theoretical and practical underpinnings.  The module examines the principles of abstraction, decomposition, modelling and representation as a means to frame and characterise problem scenarios, and as tools to understand potential solutions. The module concentrates on problem solving strategies and in particular the vocabulary through which these strategies are articulated.  This type of vocabulary is explored as a representational device for capturing organisational behaviour and form.','Introduction to problem solving. \rComplexity and problem boundaries.\rProblem characterisation.\rProblem solving models. \rThe vocabulary of problem solving.\rProblem solving tools.\rManaging problems in an organisational context.\rPre-packaged solutions to generic problems.\r','A combination of lectures, and plenary sessions are used to enable the outcomes to be achieved and demonstrated. Formative in-class assessment is employed both to develop a deeper understanding of the subject and to rehearse technique for the summative assessments.	',NULL,'Adair, J., Decision Making and Problem Solving Strategies. (Kogan-Page, 2007)\r\rBrown, D. Tricks of the Mind. (Channel 4 Books, 2007) \r\rGrabarchuk S., et al, The Simple Book of Not-so-simple Puzzles. (A K Peters, 2008) \r\rRobertson, S.I., Problem Solving. (Psychology Press, 2001) \r',NULL),
	('CMP1035M','Data Structures',1,'Computing',15,'1',1,'The module provides students with an introduction to the techniques for representing data, and fundamental data structures.  No particular programming language is adopted to support the module, examplars are given using a range of common languages to further the broad application of the principles discussed.','Simple data types and the application of compound records in programming and  database table design. Introduction to the fundamentals of data analysis.  Complex data types and their use.  Static and dynamic data structures.  Common data structures and their typical application, including but not limited to :\n<ul>\r	<li>Arrays</li>\r	<li>Stacks</li>\r	<li>Queues</li>\r	<li>Dequeues</li>\r	<li>Linked Lists</li>\r	<li>Doubly Linked Lists</li>\r	<li>Binary Trees</li>\r</ul>','This module is taught through a programme of lectures that introduce core concepts and issues. These are explored and developed through practical workshop activities and independent study. Formative in-class assessment is employed both to develop a deeper understanding of the subject and to rehearse technique for the summative assessments.',NULL,'Brookshear, J. G., Computer Science an overview, 10th edition, (Pearson, 2008)\r \rStallings, W., Data and Computer Communications, 8th edition, (Prentice Hall, 2006)\r\rWeiss, M. A., Data Structures & Algorithm Analysis in Java, (Prentice Hall, 1999)\r\rWirth, N., Algorithms and Data Structures (Prentice Hall, 1986) \r',NULL),
	('CMP1036M','Maths for Computing',1,'Computing',15,'1',2,'This module aims to equip students with mathematical knowledge and skills required to design and develop computer systems and software.','Sets, relations and functions:\r	Operations on sets, laws of set operations, properties of relations.\r\rLogic:\r	Propositions, truth tables, operators, Boolean algebra.\r\rBasic calculus:\r	Derivatives, integrals, limits, maxima, minima.\r\rAlgebra:\rLinear and polynomial algebra, vector and matrix algebra. Trigonometric, exponential and logorithmic functions.\r \rBasic Statistics:\rIntroductory concepts, mean, median, mode, standard deviation, variance, confidence and significance. Introduction to probability theory.\r','Students attend a programme of lectures supported by workshops.',NULL,'Croft, A., Davison, R., Foundation Maths 4th ed, Prentice Hall, 2006.\r\rPiff, M., Discrete Mathematics: An Introduction for Software Engineers, Cambridge University Press, 1991.\r\rTruss, J., Discrete Mathematics for Computer Scientists 2nd ed, Addison Wesley, 1998. \r',NULL),
	('CMP2007M','Networks and Network Systems',1,'Computing',15,'2',1,'This module considers basic computer communications and networking with an emphasis on the Internet Protocol.\rThis module builds upon the level 1 introduction to computer networks and basic communication principles. The module examines the Internet Protocol as a model for intercommunication in modern network implementations. Additionally the module examines fundamental design features of a Network Protocol and the need to implement security in the modern Internet.\rThe module adopts a standards driven approach and determines methods used in modern network systems for the distribution of data. An emphasis on network infrastructure and protocols underpins the module together with basic security considerations important in modern network architectures. \rAspects of security concepts are extended to consider mechanisms that counter various forms of threat that exist from different sources.\r','Media types and classifications, topologies and interconnections. \rPrivate and public service provision. \rEmergent media and network protocols. \rRepeating, bridging, routing in local, wide, campus and metropolitan area networks. \rInternational and national standards. \rProtocols and addressing mechanisms; IP Addressing and Subnetting.\rSustainability in the Network and the emergence of new network standards. \rThreats posed by the Internet, specifically hackers and viruses. \rIntroduction of Firewalling and secure network access.\rNetwork services supporting the internet.\r','This module is delivered through a programme of lectures and plenary sessions, supplemented by workshop activities to introduce students to further additional researched and class based activities. Formative in-class assessment is employed both to develop a deeper understanding of the subject and to rehearse technique for the summative assessments.',NULL,'Comer, D. E., Internetworking With TCP/IP Volume 1: Principles Protocols, and Architecture, 5th edition (Prentice Hall 2006)\r\rStallings, W. Data and Computer Communications, 8th edition (Prentice Hall, 2006) \r',NULL),
	('CMP2019M','Human-Computer Interaction',1,'Computing',15,'2',8,'This module aims to develop an appreciation of the importance of human factors and user-centred approaches in the development of technological systems.\r\rIt introduces physiological, psychological and cognitive issues relevant to human-computer interaction and user interface design, together with user-centred methods, tools and techniques for analysing, designing, implementing and evaluating interactive systems.\r','Introduction and background to the discipline of HCI.\rUser analysis : humans as computer users ; physiology ; attention and perception ; cognitive abilities ; learning ; user modelling\rTask analysis & task design\rInterface design\rUsability analysis and evaluation :methods and techniques\r	','This module is taught through a programme of lectures that introduce core concepts, issues and techniques. These are explored and developed through seminars and small group discussions, practical workshop activities and independent study. Formative in-class assessment is employed both to develop a deeper understanding of the subject and to rehearse technique for the summative assessments.',NULL,'Cooper, A. & Reimann, R. About Face 2.0 The Essentials of Interaction Design (Wiley, 2003)\r\rLazar, J. (Ed.) Universal Usability Designing Computer Interfaces for Divers Users (John Wiley & Sons, 2007)\r\rNorman, D. A.  The Design of Everyday Things (Basic Books, 2003)\r\rSharp, H., Rogers, Y. & Preece, J. Interaction design: beyond human-computer interaction, Chichester (John Wiley, 2007)\r\rShneiderman B.  Designing the User Interface: Strategies for Effective Human-computer Interaction, 4th Edition (Addison Wesley, 2004)\r\rLe Peuple, J., & Scane, R User Interface Design  (Crucial, 2003)\r\rDix, A., Finlay, J., Abowd, G.D., Beale, R  Human Computer Interaction 3rd Edition (Prentice Hall, 2003)\r\rBenyon, D., Turner, P., Turner, S. Designing Interactive Systems (AddisonWesley, 2004)\r\rNeilsen, J. Designing Web Usability: The Practice of Simplicity (Peachpit Press, 2000) \r\r',NULL),
	('CMP2020M','Artificial Intelligence',1,'Computing',15,'2',9,'This module provides a basic introduction to the field of Artificial Intelligence (AI). The module first considers the symbolic model of intelligence, exploring some of the main conceptual issues, theoretical approaches and practical techniques. The module further explores knowledge-based systems such as expert systems, which mimic human reasoning performance by capturing knowledge of a domain and integrating it to deliver a performance comparable to that of a human practitioner. Modern developments such as artificial neural networks and uncertain reasoning using probability theory are also covered, culminating in a practical understanding of how to apply AI techniques in practice using logic programming.','Introduction to AI. Logic programming. State space search. Heuristic search. Knowledge representation. Expert systems. Artificial neural networks. Reasoning with uncertainty. Practical programming in PROLOG.\r\rThis module develops the following mathematical concepts and techniques: propositional logic, first-order predicate logic, unification, graph theory, probability theory.\r','A combination of lectures, workshops and seminars will be used to enable the outcomes to be achieved and demonstrated. Formative in-class assessment is employed both to develop a deeper understanding of the subject and to rehearse technique for the summative assessments.',NULL,'Callan, R., Artificial Intelligence (Palgrave Macmillan, 2003)\r\rCallan, R., The Essence of Neural Networks (Prentice Hall, 1998)\r\rCawsey, A., The Essence of Artificial Intelligence (Prentice Hall, 1998)\r\rLucas, R.J., Mastering Prolog (UCL Press, 1996)\r\rLuger, G.F. and Stubblefield, B., Artificial Intelligence 3rd edition (Addison Wesley, 1997)\r\rLuger, G.F., Artificial Intelligence 5th edition (Addison Wesley, 2005) \r',NULL),
	('CMP2060M','Database Systems',1,'Computing',15,'2',10,'This module explores the issues in the design, implementation and use of database technologies which requires the student to develop a conceptual view of database theory and then transform it into practical implementation of a database application.','Definition and key characteristics of a database. \rRole and functionality of a DBMS; detailed analysis of RDBMS (relational model). \rDesign: entity relationship modelling (data modelling) and relational data analysis (normalisation). \rQuery language; SQL. \rDatabase security and integrity. \rDatabase administration.\r	','This module is taught through a programme of lectures which introduce and discuss core concepts and issues. Lectures are supplemented with plenary seminars to further explore and discuss the concepts raised in the lecture programme, and to explore design issues. Formative in-class assessment is employed both to develop a deeper understanding of the subject and to rehearse technique for the summative assessments.',NULL,'Codd, E. F., A Relational Model of Data for Large Shared Data Banks in Communications of the ACM (13(6) 1970 pp 377-387.1)\r\rDate, C. J., An Introduction to Database Systems, 7th edition (Addison-Wesley, 2000)\r\rMcFadden, F. R., Hoffer, J. and Prescott, M. B., Modern Database Management (5th edition), (Addison-Wesley, 1999)\r\rConnolly, T., Begg, C. and Strachan, A., Database Systems: A Practical Approach to Design, Implementation and Management (Addison-Wesley, 1996)\r\rMcFadyen/Kanabar, An Introduction to SQL (Wm. C. Brown Publishers, 1991) \r',NULL),
	('CMP2062M','Advanced Software Development',1,'Computing',30,'2',7,'This module provides a comprehensive analysis of the general principles and practices of advanced programming with respect to software development.\rSoftware development issues and techniques are considered from an high-level perspective and notions of advanced programming are emphasised in the context of analysis, design and implementation. Great importance is placed upon the Object-Oriented paradigm and related concepts applied to software development.\r','Encapsulation, composition, object reference, overloading, garbage collection.\rInheritance, overriding, polymorphism, introduction to design patterns.\rExceptions, containers, I/O system, serialization, GUI.\r\rThis module develops mathematical mathematical concepts, techniques and principles related to software development, such as: software complexity, software coupling and cohesion.\r','This module is taught through a programme of lectures that introduce and discuss core concepts and issues. Practical workshops offer the opportunity for students to practically apply topics covered within the lecture programme and in the module\'s recommended textbooks. Workshops support students to review their understanding of the module\'s lectures, assigned readings, and applying them in the practical work involved in the assignments. Formative in-class assessment is employed both to develop a deeper understanding of the subject and to rehearse technique for the summative assessments.',NULL,'Eckel B., Thinking in Java, 3rd edition (Prentice Hall, 2003). \r\rEckel B., Thinking in C++, Vol. 1, 2rd edition (Prentice Hall, 2000). \r\rEckel B. & Chuck A.,Thinking in C++, Vol. 2, 2rd edition (Prentice Hall, 2000). \r\rLunn, K., Software Development with UML (Palgrave Macmillan, 2003) \r',NULL),
	('CMP2066M','Computer Science Group Project',1,'Computing',30,'2',6,'This module aims to provide students with the experience of working as part of a team on a development project. Students will produce a set of deliverables relevant to Computing, including a finished product or artefact. Final deliverables will be negotiated between the group and their supervisor, the module coordinator will be responsible for ensuring that each project covers the learning outcomes of the module. Groups are expected to manage their own processes, and to hold regular meetings both with and without their supervisor. Groups will be allocated by the module coordinator and other members of staff. The process of development of the artefact and the interaction and management of group members underpins the assessment of skills in the module.\n','Project Management Tools and Mechanisms; Group management and team based working; Project requirements negotiation and capture; Presentational skills; Design processes and design tools; Support Tools for Group and Project Management (artefact management, groupware, software based support tools as appropriate, dependent upon the nature of the project).','Initial theoretical material will be covered in lectures that cover project management skills, communications skills, time management, group dynamics and group management, presentation skills and report writing. Each group\'s work will be overseen by a nominated supervisor. Groups will be expected to meet together regularly, both with and without their supervisor present. Records of meetings and individual logs of development form an important part of student development throughout the module and may be scrutinised at later stages to establish the extent of individual contribution to the group.',NULL,'Dawson, Christian W., The Essence of Computing Projects: A Student?s Guide (Prentice Hall, 2000)\r\rMeans, J., & Adams, T., Facilitating the Project Lifecycle: The Skills & Tools to Accelerate Progress for Project Managers, (Jossey Bass Business and Management Series, 2005)\r\rFincher, S., Petre, M. & Clark, M. (Eds) Computer Science Project Work: Principles and Pragmatics (Springer, 2001)\r\rGarton, C., & McCulloch, E., Fundamentals of Technology Project Management (MC Press, 2005)\r\rSchwalbe, K., Information Technology Project Management, 5th edition (Course Technology, 2007)\r\rCloud. H. & Townsend, J., Making Small Groups Work (Zondervan, 2003)\r\rNicholas, J. M., Project Management for Business and Technology: Principles and Practice, 2nd edition (Prentice Hall, 2000)\r\rSharp, J.A., Peters, J. & Howard, K. The Management of a Student Research Project 3rd Edition (Gower, 2003) \r',NULL),
	('CMP3059M','Professional Practice',1,'Computing',15,'3',1,'The module aims to develop an understanding of the basic cultural, social, legal, and ethical issues inherent in the discipline of computing; and to promote personal professionalism in the workplace.','The special nature of technological ethics.\rEthical decision-making and case analysis.\rEthics of software development.\rLegal issues.\rCodes of computer ethics and professional practice.\rGlobalisation of professionalism.\r','A combination of lectures and document directed discussion sessions are used to enable the learning outcomes to be achieved and demonstrated.',NULL,'Holman, T., Surround Sound: Up and Running 2 2nd edition (Focal Press, 2007)\r\rLehrman, P., The Pro Audio Insider\'s Bathroom Reader (Course Technology Inc, 2006)\r\rNisbett, A., 7th edition The Sound Studio: Audio Techniques for Radio, Television,\r\rFilm and Recording (Focal Press, 2003)\r\rSonnenschein, D., Sound Design: The Expressive Power of Music, Voice and Sound Effects in Cinema (Michael Wiese Productions, 2001) Adams, H., Computer Ethics (Pearson Education, 2005).\r\rBynum, T. W., Rogerson, S., Computer Ethics and Professional Responsibility (Blackwell Publishing, 2004). \r\rGeorge, J., Herrera, M., Social Issues of Computing (Prentice Hall, 2003).\r\rMaister, D. H., True Professionalism (Simon & Schuster, 2000).\r\rNorthcutt, S., IT Ethics Handbook: Right and Wrong for IT Professionals (Syngress Media, 2004).\r\rRitzer, G., The McDonaldization of Society (Sage, 2004).\r\rQuigley, M., Information Security and Ethics: Social and Organisational Issues (Idea Group Inc, 2004).\r\rQuinn, M., Ethics for the Information Age (Addison Wesley, 2004).\r\rTavani, H. T., Ethics in an Age of Information and Communication Technology (John Wiley & Sons, 2003).\r\rBritish Computer Society Code of Conduct 2006, available online at http://www.bcs.org/ \r',NULL),
	('CMP3060M','Project',1,'Computing',30,'3',1,'This module provides students with an opportunity to demonstrate their ability to work independently on an in-depth project with an implementation element that builds on their established knowledge, understanding and skills.  In the context of this module, implementation implies the generation of an output from one, or more, stages of the software development life cycle.  Students will normally be expected to demonstrate their ability to apply practical and analytical skills, innovation and/or creativity, and to be able to synthesise information, ideas and practices to provide a problem solution.  Self-management is a key concept here, as is the ability to engage in critical self-evaluation','The student in consultation with an academic supervisor determines the focus of the project; normally this focus will derive from the Project Proposal that was generated in the pre-requisite Project Preparation module.\rSupport sessions between the student and their academic supervisor will focus on the research process, conducting a project, project evaluation, technical report writing, and presenting the results of a project.\r','Learning in this module is managed and directed by the student under the guidance and support of an academic supervisor. In all cases students have a single supervisor who is responsible for overseeing the progress of the student from inception in the Project Preparation module, to submission.  The generally agreed format of meetings is one 15 minute meeting per week on an individual basis - this is negotiable between supervisors and students, for example many students opt for fortnightly 30 minute meetings.',NULL,'Dawson, Christian W. The Essence of Computing Projects: A Student?s Guide (Prentice Hall, 2000).\r\rFincher, S., Petre, M. and Clark, M. (Eds) Computer Science Project Work: Principles and Pragmatics (Springer, 2001).\r\rSharp, J.A., Peters, J. and Howard, K. The Management of a Student Research Project 3rd Edition (Gower, 2003). \r',NULL),
	('CMP3333M','Mobile and Distributed Computing',1,'Computing',30,'3',12,'This module explores the issues that emerge when developing systems with separate components distributed across multiple computing and operating platforms. The module is comprised of two phases: the first part will focus on distributed systems development from a software development standpoint - the emphasis being at the applications level rather than at lower level network levels. The second phase of the module will then concentrate on the development and usage of applications on mobile platforms and, in particular, smart-phones. This will include an analysis of the technological capabilities of these devices, how mobile systems and devices differ from conventional ones, and how these differences must be taken into account during the design process. The module aims to give a solid grounding in developing networked applications using C# and Java, and an appreciation of contemporary issues facing internet applications developers, including the development of devices and applications for pervasive and ubiquitous computing scenarios.','The practical content in the first phase mainly focuses on the classes that are provided by modern programming languages for network programming: stream and datagram sockets and multicasting, URL\'s, remote procedure calls (eg Remote Method Invocation (RMI)) and spontaneous service discovery in ad hoc networks (e.g. Jini). The unit will adopt standards based approaches to specification and design of distributed systems and will cover the RFC strategy to the adoption of solutions. In addition to the programming content the module also covers a number of technologies and topics that have recently emerged as relevant to Internet programmers: large peer-to-peer (P2P) systems, using middleware and dealing with legacy software. The second phase of the module focuses in-depth on the programming of mobile devices (for instance using the Java Micro Edition). Sample applications will be used as case studies to explore types of mobile usage, from casual games through to data networked and context aware systems. Additionally, the module will also explore the commercial and social issues that are currently arising from the use of traditional, mobile and pervasive distributed systems.','This module is taught through a programme of lectures that introduce and discuss core concepts and issues. Students under-take their own skill development in software authoring by exploitation of a range of on-line tutorials and exercises. In addition, there are a number of more discursive lectures, dealing with both technical and social issues as well as cutting edge programming techniques. For these lectures students are directed to pursue independent reading of relevant literature.	',NULL,'Blum, R., C# Network Programming, 1st Edition (Sybex Wiley, 2003).\rMakofske, D. L., Donahoo, M. J., Calvert, K. L., TCP/IP sockets in C# : a practical guide for programmers (Elsevier, 2004)\rJones M, Marsden G., (2005) Mobile Interaction Design. John Wiley & Sons.\rRischpater, R. (2008) Beginning Java ME Platform. APRESS.\rLing, R. C., The Mobile Connection : The Cell Phone\'s Impact on Society 3rd edition (Morgan Kaufmann, 2004).\rGreenfield, A., Everyware: The Dawning Age of Ubiquitous Computing (New Riders, 2006)\rShirky, C (2009). Here Comes Everybody: The Power of Organizing Without Organizations. Penguin Books; Reprint edition. \r',NULL),
	('CMP3637M','Project Preparation',1,'Computing',15,'3',1,'This module provides students with the skills necessary to conduct an independent study project.  The output of this module will form the foundation for the Project module.  At the conclusion of this project the student should have formed a clear understanding of the aims and objectives of their final year project','Research skills.\rProject documentation.\rThe importance of ethics in research projects.\rWriting critically and analytically\r','A short series of lectures will provide students with skills required to complete an independent study project.  Further learning in this module is managed and directed by the student under the guidance and support of an academic supervisor.',NULL,'Dawson, C. W., The Essence of Computing Projects: A Student\'s Guide (Prentice Hall, 2000).\rSharp, J.A., Peters, J., & Howard, K., The Management of a Student Research Project 3rd edition (Gower, 2003). \r	',NULL),
	('CMP3641M','Computer Vision and Robotics',1,'Computing',30,'3',9,'This module aims to provide a broad introduction to the closely related fields of Computer Vision and Robotics, culminating in a practical understanding of how to apply and combine techniques from these fields in intelligent systems such as robots. The former part of the module concentrates on interpretation of digital images by computers, providing an understanding of the range of processing components involved from pixel-level to pattern recognition. The latter part of the module concentrates on applied Artificial Intelligence techniques from the field of Mobile Robotics, providing an understanding of the range of processing components required to build physically embodied robotic systems, from basic control architectures to human-robot interaction.','Computer Vision: fundamentals of digital image processing, introduction to pattern recognition, spatial processing and filtering, colour image processing, morphological image processing, image segmentation, image representation and description, pattern classification. Practical programming in MATLAB.\r\rRobotics: fundamentals of mobile robotics, control architectures for mobile robots, neural vision for robotics, mapping and self-localisation for robot navigation, people recognition and tracking for mobile robots, introduction to human-robot interaction.\r\rThis module develops the following mathematical concepts and techniques: set theory, probability theory, gradients and derivatives, vectors and matrices, linear algebra, applied Bayesian estimation, non-linear filtering.\r','A combination of lectures, workshops and seminars will be used to enable the outcomes to be achieved and demonstrated',NULL,'Bekey, G.A. Autonomous robots: from biological inspiration to implementation and control (MIT Press, 2005).\r\rDuda, R.O., Hart, P.E. and Stork, D.G., Pattern Classification 2nd edition (Wiley, 2001).\r\rGonzalez, R.C. and Woods, R.E., Digital Image Processing 2nd edition (Prentice Hall, 2001).\r\rGonzalez, R.C, Woods, R.E. and Eddins, S.L. Digital Image Processing Using Matlab (Prentice Hall, 2004).\r\rNehmzow, U., Mobile Robotics: A Practical Introduction (Springer, 2000).\r\rPratap, R., Getting Started with MATLAB 7: A Quick Introduction for Scientists and Engineers (Oxford University Press Inc, USA, 2005).\r\rShapiro, L.G., and Stockman, G., Computer Vision (Prentice Hall, 2001).\r\rSiegwart, R. and Nourbakhsh, I. Introduction to Autonomous Mobile Robots, MIT Press, 2004. \r',NULL),
	('FDS1104M','Policies, Markets and the Supply Chain',2,'Food Manufacture',15,'1',13,'The module will introduce the student to the concept of the supply chain and the factors, including global and local policies and markets, that impact upon it.\rThe students will investigate the needs of retailers, the importance of local supply and the skills needed to develop value-added products, which may increase market potential. The concepts of market orientation and businesses will be introduced.\r\rAll primary food production in the UK whether intensive (e.g. protected crops, high value crops, niche market products, intesive livestock) or extensive, (e.g. cereals potatoes, vegetables or grazing livestock) are subject  to legislation and trade agreements ratified at international and national level.  The imput from the individual into these agreements is, in most cases minimal, however the impact on the business is often immediate and of great consequence.  It is important therefore, that producers have an overview of these agreements and are able to understand how and in what context the legislation will affect their livelihood.\r\rThese preliminary concepts will be supported through the Food Commmodities module, further developed  in the Quality Management and Evaluation, with progression  to the Managing the Supply Chain, Operations and Resources module at level 3.\r\rIn terms of business management it is important to be aware of market trends and to meet the needs of your customer and or changing requirements and behaviour of consumers.  Current trends are witnessing the development of a wider range of niche markets, value added products, a resurgence in some global commodities and the delivery of ?public goods?, such as landscape, wildlife and access outputs. A new mindset may have to be adopted by primary producers and processors in terms of their market orientation and the adoption of new business models, such as a supply chain approach, to their businesses.  \r','The module will encourage the student to appreciate the overarching role that international agreements on trade play in the production of food on any scale in the UK. It is intended that the global perspectives and political dimensions, which impact on food production in the UK, be clearly outlined. This will enable the student to more easily assess the direction of the business and how to comply with the legislation and directives and the influence of the consumer. \r\rThe impact of new technologies on food production will be reviewed.\rTo this end, the module will involve a review of the CAP and SFP scheme and an examination of how currency and exchange rate fluctuations can affect the market and business opportunities of the primary producer.\r\rAs the importance of the market grows in relation to policies, market trends and consumer requirements are intrinsically linked and the producer must be equipped with the knowledge to enable them to recognise such trends and to react accordingly. The producer must be in a position to respond to market needs and be able to identify the market prior to production. \r','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study, and where appropriate within the subject, visits to grower/processors; use of the arable and livestock enterprises at Riseholme Campus; and where appropriate food manufacturing sites or companies and invited speakers on specialist topics e.g. grain traders, millers, retailers.',NULL,'Reading materials for this module can be found at:\r\rwww.commercialgrower.co.uk \rwww.defra.gov.uk\rwww.dunnhumby.com \rwww.fao.org\rwww.statistics.defra.org\rwww.wto.org \r\rBlackwell, R.D., Miniord, P.W., Engel, J.F. (2006) Consumer Behaviour. 10th edition. Blackwell.\r\rBourlakis, M., Weightman, P.W.H. (2004) Food Supply Chain Management. Blackwell.\r\rFoxall, G.R. (2005) Understanding Consumer Choice. Palgrave Macmillan.\rFrewer, L and van Trijp,.H., eds, (2007) Understanding Consumers of Food Products. Woodhead.\r\rGustafsson, K., et al (2006) Retailing Logistics and Fresh Food Packaging: Managing Change in the Supply Chain. Kogan Page.\r\rHugos, M. (2003) Essentials of Supply Chain Management. Wiley & Sons.\rSarris, A. and Hallam, D., eds. (2006) Agricultural Commodity Markets and Trade: New Approaches to Analyzing Market Structure and Instability. Edward Elgar.\r\rSoil Association (2006) Organic Market Report 2006. Soil Association.\rSouthgate, D.D., Graham, D.H. and Tweeten, L. (2007) The World Food Economy.  Blackwell.\r',NULL),
	('FDS1105M','Food Commodities',2,'Food Manufacture',15,'1',14,'The module is aimed at obtaining an understanding of the production and use of main agricultural commodities used in the food manufacturing industry.   The module will investigate the whole supply chain, from farm to fork, the interrelationships between each stage of the chain and how this affects the quality of the food product and therefore acts as a bridge between the Policies, Markets and the Supply Chain and science-based modules.  The student will be introduced to the compositional qualities of food commodities e.g. gluten in cereal grains and casein in milk, that will have a potential impact on the market of the product.','The module will cover:\rThe production practises and supply of agricultural commodities, including milk, cereals, meat, fruit and vegetables.\rComposition and key characteristics of the major raw materials\rThe use of raw materials in the manufacture of food products\rThe causes of variability of raw material quality and its subsequent effect on the rest of the supply chain\r','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study, and invited speakers on specialist topics e.g. exotic fruit importers. Lectures will be supported by a series of farm and food processor/manufacturer site visits e.g. dairy producer followed by cheese manufacturer, brassica growers followed by a fresh produce primary processor (depending upon availability and seasonality)',NULL,'Commodity Research Bureau (2010). The CRB Yearbook 2010. John Wiley and Sons\r\rFood and Agriculture Organization (2009) The State of Agricultural Commodities Market 2009: high food prices and the food crisis, experiences and lessons learned.\r\rFox B. and Cameron A.G. (2006) Food Science Nutrition and Health. 7th Edition. London Edward\r\rwww.defra.gov.uk\rwww.who.int\rwww.fao.org\rwww.hgca.com\rwww.freshinfo.com\rwww.potato.org.uk\rwww.indexmundi.com/commodities\rwww.ifpri.org\rwww.thefishsite.com\r\r\rJournal of Agricultural and Food Chemistry\rInternational Journal of Production Economics\rAmerican Journal of Agricultural Economics\rJournal of International Food and Agribusiness Marketing\rBritish Journal of Nutrition',NULL),
	('FDS1106M','Quantitative Methods',2,'Food Manufacture',15,'1',15,'This module is aimed at giving students the basic mathematical and statistical concepts for the qualitative description of processes and for the analysis of experimental data. The use of advanced programming software and numerical methods will be demonstrated. Applications of the theory in the areas of agriculture and food will be studied, with examples including sensory evaluation and data analysis; experimental design and statistical analysis for trial purposes; rates of application; volumes; capacity; flow rates; mass and heat transfer.','The module will cover:\r1.	basic differentiation and integration\r2.	differential equations ? first/second/linear\r3.	practical statistics and numerical methods; analysis of variance; inference for normal and non-normal populations\r4.	principles of correlation and linear regression \r5.	applications relevant to the agricultural and food industries\r','This module is taught through a programme of lectures, seminars and practical sessions. The students will be given the opportunity to generate data in their own field of interest, for example in heat transfer or field experimental trials. Although mainly taught through lectures, the students will be encouraged to apply mathemeatical theory to real life situations e.g conducting a sensory test or establishing a fungicide trial.',NULL,'Barnett, R. (2004). Schaum?s Outline of Theory and Problems of Elementary Algebra. 3rd Edition. McGraw-Hill.\rClewer A. G. and Scarisbrick D.H. (2001) Practical Statistics and Experimental Design for Plant and Crop Science. Wiley\rMendelson, E. (1997). Schaum?s Outline of Theory and problems of Beginning Calculus. 2nd Edition. McGraw-Hill\rSpiegel, M.R. (1999). Schaum?s Outline of Theory and Problems of Statistics. 3rd Edition. McGraw-Hill\r',NULL),
	('FDS1107M','Environmental Science',2,'Agriculture',15,'1',16,'Environmental science is a study of the whole environment and involves both biological organisms and the physical environment, and the interactions between them. It focuses on the processes within ecosystem and how the natural resources can be managed more effectively. This will undoubtedly become more important as we attempt to move towards a more sustainable economy. This could be achieved through sustainable management approach and controlling pollution which have equal application to land-based operations as well as food processors and manufacturers. The land-based students will investigate integrated land use patterns that will deliver the ecosystem services that humans depend upon; having a better understanding of our impact on the global ecosystem and discovering biological resources that may be used for medicines and fuels, whereas the food manufacturing student will begin to appreciate the impact of food production on the environment through waste generation. Conservation and environmental ethics, limiting the decrease in biodiversity, managing our natural resources, and social and economic factors are all part of environmental science.','The module introduces the student to the concepts of environmental science and provides an awareness of the consequences of increased human and environmental demands and climate change on global and local ecosystems. It focuses on the pollution and ecology of natural and managed systems and the impact of human activities on those systems, by introducing the key aspects of water pollution (surface and groundwater resources and the dispersion of pollutants in water systems and effects on water quality); atmospheric pollution (gaseous and particulates) and ozone depletion; soil as a source of pollution and as a transport medium for pollutants. The impact of human activities, including food processing, on biological systems and the conflicting pressures on land use for access, food, energy, landscape and biodiversity will be debated. ','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study, and where appropriate within the subject, visits to primary processors, appropriate food manufacturing sites or companies and invited speakers on specialist topics e.g. the Environment Agency\rStudents will be given the opportunity to explore their own subject field through seminars, for example, the management of waste products arising from food manufacturing, or minimising water pollution during crop production. \r',NULL,'Materials relating to this module can be found at:\r\rwww.environment-agency.gov.uk\rwww.climateark.org\rwww.naturalengland.org.uk\rwww.online-ecosurvey.co.uk \rwww.defra.gov.uk  environmental protection section\rwww.hgca.com environment section\rwww.naei.org.uk National Atmospheric Emissions Inventory\rwww.ipcc.ch Intergovernmental Panel on Climate Change\rwww.airquality.co.uk\rwww.occ.gov.uk/activities/stern.htm The Stern Review, autumn 2006\rhttp;//assets.panda.org/downloads/living planet report.pdf  WWF Living Planet Report\rwww.bioregional.com/programme_projects/opl_prog/principles.htm Bio-Regional One Planet Living Programme\rwww.defra.gov.uk/environment/statistics/eiyp/pdf/eiyp2007.pdf Defra, The Environment in your pocket 2007\r\r\r\r\rBlaikie P., Cannon T., Davis I., Wisner B. (2000) At Risk.  Routledge \rByrne K. (2001) Enviromental Science. 2nd edition. Nelson Thornes\rHill M.K. (1997) Understanding Environmental Pollution. Cambridge University Press\rRiordan O. (2000) Environmental Science for Environmental Management. 2nd edition. Prentice Hall\rWatts S., Halliwell L. (1996) Essential Environmental Science: Methods and Techniques. Routledge\r',NULL),
	('FDS1108M','Introduction to Finance and Business',2,'Food Manufacture',15,'1',17,' This module provides a realistic, balanced view of management and considers predominantly the agri-food business sector. Starting with the traditional business environment approach to strategic management, the module moves on to consider the contemporary resource-based perspective that organisations can develop competitive advantages through the acquisition, development and management of resources.\rThe success of a strategic plan is determined by how well an organisation coordinates its internal processes, including operations, with its suppliers and customers to produce products that customers will value.\rThe module also provides an introduction to accounting and finance which will support future modules.\r','The module will provide the student with the basic principles of business management and finance and will look at the strategic approach to management; operational management; organisational resources and what gives a business a competitive advantage. The student will also investigate supply chain management, a vital aspect of agri-food businesses; quality management; human resource management and lean manufacturing and how these aspects can contribute to the success of a business. \rIntegral to managing quality and resources, is the management of finance. Students will be introduced to the nature and purpose of accounting; key concepts and how to read a balance sheet. They will become familiar with how income and expenditure are measured; trial balances; cash flow and budgeting. \r','Teaching methods and learning strategy will include: lectures, seminars, tutorials, group and individual study, case studies, and where appropriate within the subject, visits to appropriate food manufacturing sites or companies and invited speakers on specialist topics.',NULL,'Black, G. (2005) Introduction to Accounting and Finance. FT Prentice Hall\rBuchanan D. and Huczynski A. (2007). Organizational Behaviour ? An Introductory Text. 6th Edition. Prentice Hall.\r\rDyson, J.R. (2007) Accounting for Non-Accounting Students.  6th Edition. FT Prentice Hall\r\rMcLaney, E.J. (2006) Business Finance: Theory and Practice. 7th Edition. FT Prentice Hall\rNix, J.  (2009)  Farm Management Pocketbook. Imperial College London.\r\rRussell and Taylor (2009) Operations Management along the Supply Chain. 6th Edition. Wiley. ISBN 978-0470-23379\r',NULL);

/*!40000 ALTER TABLE `03_module` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 04_teachingDemoStaff
# ------------------------------------------------------------

DROP TABLE IF EXISTS `04_teachingDemoStaff`;

CREATE TABLE `04_teachingDemoStaff` (
  `moduleCode` varchar(10) NOT NULL DEFAULT '',
  `staffID` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleCode`,`staffID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `04_teachingDemoStaff` WRITE;
/*!40000 ALTER TABLE `04_teachingDemoStaff` DISABLE KEYS */;

INSERT INTO `04_teachingDemoStaff` (`moduleCode`, `staffID`)
VALUES
	('AGR1009M',16),
	('AGR1010M',17),
	('AGR1011M',16),
	('AGR2004M',15),
	('AGR2018M',17),
	('AGR2019M',16),
	('AGR2020M',16),
	('AGR2021M',17),
	('AGR2022M',16),
	('AGR2023M',16),
	('AGR2025M',14),
	('AGR2026M',16),
	('AGR3009M',19),
	('AGR3010M',17),
	('AGR3011M',16),
	('AGR3011M',17),
	('AGR3012M',17),
	('AGR3012M',18),
	('AGR3013M',17),
	('CMP1001M',2),
	('CMP1003M',4),
	('CMP1005M',5),
	('CMP1009M',3),
	('CMP1032M',1),
	('CMP1035M',1),
	('CMP1036M',2),
	('CMP2007M',1),
	('CMP2019M',8),
	('CMP2020M',9),
	('CMP2060M',10),
	('CMP2062M',7),
	('CMP2066M',6),
	('CMP3059M',1),
	('CMP3060M',1),
	('CMP3333M',12),
	('CMP3637M',1),
	('CMP3641M',9),
	('FDS1104M',13),
	('FDS1105M',14),
	('FDS1106M',15),
	('FDS1107M',16),
	('FDS1108M',15),
	('FDS1108M',17);

/*!40000 ALTER TABLE `04_teachingDemoStaff` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 05_learningOutcomes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `05_learningOutcomes`;

CREATE TABLE `05_learningOutcomes` (
  `outcomeID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `outcomeText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`outcomeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `05_learningOutcomes` WRITE;
/*!40000 ALTER TABLE `05_learningOutcomes` DISABLE KEYS */;

INSERT INTO `05_learningOutcomes` (`outcomeID`, `outcomeText`)
VALUES
	(1,'identify data types and their application in common programming solutions'),
	(2,'identify the characteristics of common data structures'),
	(3,'characterise a problem solution in the context of potential data structures'),
	(4,'communicate rational and reasoned arguments in writing.'),
	(5,'use appropriate mathematical theories and techniques for computer science;'),
	(6,'Select appropriate mathematical formulae to solve problems;'),
	(7,'Solve computational problems using relevant mathematical techniques'),
	(8,' Locate and reference relevant information.'),
	(9,'relate the importance of information to business processes'),
	(10,'describe, abstract and apply models of systems structure, behaviour and purpose to organisational systems.'),
	(11,'outline and discuss mechanisms and strategies applied to computer systems architecture'),
	(12,'review models and processes in computer system architecture'),
	(13,'implement programs consisting of multiple procedures;'),
	(14,'use simple testing techniques to evaluate programs;'),
	(15,'create classes and instantiate objects in an OO programming language;'),
	(16,'explain and model an OO approach to a software development problem;'),
	(17,'demonstrate principles of discrete mathematics relating to software development.'),
	(18,'characterise a problem in the context of possible solution mechanisms;'),
	(19,'model a problem solution using appropriate vocabulary;'),
	(20,'deliver a presentation using appropriate professional standards;'),
	(21,'work effectively as a member of a team.'),
	(22,'outline and discuss mechanics and strategies within operating system architectures'),
	(23,'review models and processes in operating systems architectures'),
	(24,'use a range of tools to interact with operating systems from the Windows and the UNIX families'),
	(25,'employ effective group management skills'),
	(26,'utilise effective and appropriate support tools'),
	(27,'present work in both written and verbal forms'),
	(28,'analyse and characterise the nature of a problem'),
	(29,'design and specify a games production development artefact'),
	(30,'implement testing or quality attributes to a development artefact or process'),
	(31,'review concepts of advanced software development and programming methods'),
	(32,'critically apply appropriate software development concepts'),
	(33,'use advanced OO principles and programming techniques in software development'),
	(34,'apply advanced logical and mathematical techniques in software development and programming'),
	(35,'explain the theoretical and conceptual underpinnings of user-oriented approaches in system design'),
	(36,'deploy human factors principles in the analysis and evaluation of computer systems'),
	(37,'apply user-centred practice in the analysis and evaluation of software systems'),
	(38,'communicate rational and reasoned arguments in writing'),
	(39,'explain the theoretical capabilities of Artificial Intelligence'),
	(40,'apply Artificial Intelligence techniques to solve practical problems'),
	(41,'locate and reference relevant information'),
	(42,'appraise and evaluate database models and mechanisms'),
	(43,'design and analyse a database solution'),
	(44,'define and discriminate communications models, standards and requirements'),
	(45,'evaluate professional standards used in design and implementation of networks'),
	(46,'identify and classify threats within systems and networks and appraise protection mechanisms for those systems and networks'),
	(47,'articulate the aims and objectives of a project'),
	(48,'critically appraise potential techniques and tools to aid in the development of a non-trivial artefact'),
	(49,'identify appropriate timescales and deliverables for the development of a non-trivial artefact'),
	(50,'apply practical and analytical skills in the design and implementation of a non-trivial set of project goals'),
	(51,'critically evaluate and reflect on the process of undertaking an individual project'),
	(52,'evidence research in the problem domain'),
	(53,'prepare a detailed report which evaluates a project solution'),
	(54,'articulate ethical arguments that relate to the technology field'),
	(55,'apply the basic tools of case analysis to ethical and legal issues'),
	(56,'critique the nature of professionalism in context'),
	(57,'critically assess the theoretical capabilities of computer vision;'),
	(58,'apply computer vision techniques to solve practical problems'),
	(59,'critically assess the theoretical capabilities of mobile robots'),
	(60,'apply advanced Artificial Intelligence techniques to mobile robotics'),
	(61,'specify, design, implement and evaluate client-server based distributed internet applications using industry standard tools and approaches'),
	(62,'specify, design, implement and evaluate internet applications that make appropriate use of advanced distributed programming methods'),
	(63,'specify, design, implement and evaluate mobile applications using industry standard tools and approaches'),
	(64,'critically discuss the social and technical issues arising from the use of the internet as a platform for implementation of mobile and pervasive computing systems'),
	(65,'Identify the trade agreements which will impact on the food producer and to describe the industry in the light of global perspectives and political dimensions;'),
	(66,'Describe food related policies with examples of how fluctuations in exchange rates can impact on a business;'),
	(67,'Describe how consumer requirements, retailer demands and market trends can impact on a food production business and propose potential solutions to the issues identified'),
	(68,'Review the effect of new technologies on food production'),
	(69,'Consider how the production practises of raw materials influence the food supply chain'),
	(70,'Describe the use of raw materials in food products, identifying their key characteristics and composition'),
	(71,'Investigate in detail the key characteristics of a raw material, causes of variability and their impact on the supply chain'),
	(72,'Perform simple differentiations and integrations '),
	(73,'Solve basic differential equations'),
	(74,'Solve problems using numerical methods'),
	(75,'Use statistics and linear regression to analyse data and design experiments'),
	(76,'Identify the key anatomical features of plants and relate them to plant taxonomy;'),
	(77,'Describe the key aspects of plant physiology  and relate them to crop yield and quality;'),
	(78,'Assess the suitability of soils for agricultural use'),
	(79,'Define the key terms in relation to soil fertility'),
	(80,'Describe the role, function and deficiency symptoms associated with plant nutrients'),
	(81,'Describe the broad concepts of environmental science and debate the impact of human and environmental demands on the global ecosystems;'),
	(82,'Describe the impact of pressures on biological systems'),
	(83,'Identify and describe the sources of water, air and soil pollution, and apply this knowledge to the management of a sustainable environment or food manufacturing'),
	(84,'Describe the potential impacts and implications of food production on global and local climate'),
	(85,'Describe the theoretical basis of business management, strategic and operational'),
	(86,'Describe, in a land based business context, the key aspects of quality management, human resource management, supply chain management and lean manufacturing'),
	(87,'Describe the key accounting concepts and how profit is measured and assets valued'),
	(88,'Describe the difference between income and expenditure and cash budgets, and interpret a simple set of financial statements'),
	(89,'Describe the anatomical and physiological features of domesticated livestock that are relevant to nutrition, reproduction, growth and development;'),
	(90,'Describe the stages involved in artificial insemination techniques use in livestock production systems'),
	(91,'Characterise the main nutritional components and assessment methods of animal feedstuffs used in the production of livestock'),
	(92,'Identify and describe the key aspects of animal welfare which can lead to concern.'),
	(93,'Classify and recognise key pests and pathogens'),
	(94,'Impact of disease, pests and weeds on yield potential and quality'),
	(95,'Crop walking and methods of reporting'),
	(96,'Identify related legislation to the control of crop pests, weeds and disease'),
	(97,'Evaluate opportunities for energy management in primary food operations'),
	(98,'Debate the environmental impact of primary food producers on water as a finite resource and evaluate the potential management options'),
	(99,'Examine soil as a resource ? consider how to minimise and prevent pollution and erosion and view soil in the context of soil carbon'),
	(100,'Evaluate the potential for waste reduction and waste management options in the food chain'),
	(101,'Discuss the intrinsic and extrinsic environmental factors affecting livestock production including an appreciation of animal welfare'),
	(102,'Discuss factors affecting production cycles and production performance in a commercial environment'),
	(103,'Describe and discuss the relative merits and demerits of extensive and intensive livestock production systems'),
	(104,'Evaluate the relative strengths of each stage of the marketing chain, and of the macro and micro factors affecting the production of specific products'),
	(105,'Describe and evaluate measures used to analyse crop enterprise performance'),
	(106,'Describe the production systems and strategies for stated crop scenarios'),
	(107,'Describe and evaluate key crop production technologies'),
	(108,'Produce a fertiliser recommendation for stated crops'),
	(109,'Describe and evaluate the key factors affecting the choice of crop, seed type and variety'),
	(110,'Identify and debate the requirements and methods used for crop establishment'),
	(111,'Describe key aspects of drainage, irrigation, crop protection and fertilising'),
	(112,'Outline the requirements for crop harvesting and storage '),
	(113,'Evaluate the nature and composition of feedstuffs'),
	(114,'Discuss the importance of ion transport systems and endocrine systems in their roles of maintaining overall homeostasis'),
	(115,'Discuss the factors which affect growth in an animal and evaluate how growth of an animal can be manipulated through feed formulation'),
	(116,'Discuss the seasonality and control of the breeding season in livestock species'),
	(117,'Describe the mechanisms of transpiration, photoperiodism, phototropism and photorespiration and the role of plant growth regulators in these processes and in a crop production context'),
	(118,'Describe how crop performance is influenced by biotic and abiotic factors including radiation, temperature and crop/water relationships'),
	(119,'Measure and evaluate methods used to determine crop growth and yield'),
	(120,'Evaluate the significance of advances in biotechnology upon crop production and appraise breeding strategies to improve crop performance'),
	(121,'Evaluate the benefits of sustainable environmental management to promote biodiversity and conservation'),
	(122,'Demonstrate the implementation of ICM and IFM and their relationship with Codes of Practice and legislation'),
	(123,'Evaluate the impact of government and non-government organisations and consumer pressure on management decisions designed for a sustainable environment.'),
	(124,'Assess the potential impact of climate change on a sustainable environment.'),
	(125,'Discuss the role and implementation of quality systems in a food manufacture and supply context'),
	(126,'To produce a product specification for a named commodity to include sensory attributes'),
	(127,'Conduct a practical assessment, including a sensory evaluation, for the named commodity against the specification'),
	(128,'Describe the business management techniques available for monitoring and controlling a business'),
	(129,'Construct and analyse a set of business accounts and produce a partial budget for either a farm business or food manufacturing business'),
	(130,'Describe and evaluate the range of options available for both finance sources and investment and their implications upon the business'),
	(131,'(a) Describe the process of land tenure including tenancy agreements and rent   	assessments; or:\r	b) Describe the process of factory costings, plant and equipment planning and 	acquisition. \r'),
	(132,'Organise and complete an independent study with minimal supervision and 	effectively manage time and the resources available'),
	(133,'Identify and critically evaluate relevant literature'),
	(134,'Formulate appropriate aims and objective'),
	(135,'Identify and apply primary data collection and analysis techniques'),
	(136,'Interpret data and relate it to associated research'),
	(137,'Communicate a clear understanding of the selected study in both written and oral presentations'),
	(138,'Critically evaluate the arguments associated with specific issues related to agriculture and the environment'),
	(139,'Study and critique a range of scientific literature and illustrate the specific aspects related to chosen topics'),
	(140,'Appreciate associated agricultural and environmental issues and be able to stimulate scientific debate'),
	(141,'Critically evaluate the impact of current issues/changes from an economic, social and environmental perspective a local and global scale'),
	(142,'Construct a fully detailed business plan, including financial statements and budgets for the farm'),
	(143,'Propose a justified environmental scheme appropriate to the holding'),
	(144,'Evaluate and justify the machinery available, and the method of financing the equipment'),
	(145,'Produce energy and waste management plans that are sustainable and embrace the current directives and economic platforms'),
	(146,'Critically analyse and discuss the concepts, principles and models related to the supply chain'),
	(147,'Analytically examine the supply chain within an organisation and measure performance improvement'),
	(148,'Synthesise and apply the concepts of operational management in a business environment'),
	(149,'Demonstrate how HRM models and themes can add value to an organisation'),
	(150,'Evaluate critically environmental management systems for an organisation and demonstrate an understanding of ISO 14001 and management tools'),
	(151,'Identify and evaluate the key areas of environmental legislation in the UK and the impact of legislation on land-based industries'),
	(152,'Assess and evaluate the role and impact of strategies for example carbon and water foot printing upon a specific area of study');

/*!40000 ALTER TABLE `05_learningOutcomes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 06_moduleLearningOutcomes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `06_moduleLearningOutcomes`;

CREATE TABLE `06_moduleLearningOutcomes` (
  `moduleCode` varchar(10) NOT NULL DEFAULT '',
  `outcomeID` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleCode`,`outcomeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `06_moduleLearningOutcomes` WRITE;
/*!40000 ALTER TABLE `06_moduleLearningOutcomes` DISABLE KEYS */;

INSERT INTO `06_moduleLearningOutcomes` (`moduleCode`, `outcomeID`)
VALUES
	('AGR1009M',76),
	('AGR1009M',77),
	('AGR1009M',78),
	('AGR1009M',79),
	('AGR1009M',80),
	('AGR1010M',89),
	('AGR1010M',90),
	('AGR1010M',91),
	('AGR1010M',92),
	('AGR1011M',93),
	('AGR1011M',94),
	('AGR1011M',95),
	('AGR1011M',96),
	('AGR2004M',97),
	('AGR2004M',98),
	('AGR2004M',99),
	('AGR2004M',100),
	('AGR2018M',101),
	('AGR2018M',102),
	('AGR2018M',103),
	('AGR2018M',104),
	('AGR2019M',105),
	('AGR2019M',106),
	('AGR2019M',107),
	('AGR2019M',108),
	('AGR2020M',110),
	('AGR2020M',111),
	('AGR2020M',112),
	('AGR2021M',113),
	('AGR2021M',114),
	('AGR2021M',115),
	('AGR2021M',116),
	('AGR2022M',117),
	('AGR2022M',118),
	('AGR2022M',119),
	('AGR2022M',120),
	('AGR2023M',121),
	('AGR2023M',122),
	('AGR2023M',123),
	('AGR2023M',124),
	('AGR2025M',125),
	('AGR2025M',126),
	('AGR2025M',127),
	('AGR2026M',128),
	('AGR2026M',129),
	('AGR2026M',130),
	('AGR2026M',131),
	('AGR202M',109),
	('AGR3009M',132),
	('AGR3009M',133),
	('AGR3009M',134),
	('AGR3009M',135),
	('AGR3009M',136),
	('AGR3009M',137),
	('AGR3010M',138),
	('AGR3010M',139),
	('AGR3010M',140),
	('AGR3010M',141),
	('AGR3011M',142),
	('AGR3011M',143),
	('AGR3011M',144),
	('AGR3011M',145),
	('AGR3012M',146),
	('AGR3012M',147),
	('AGR3012M',148),
	('AGR3012M',149),
	('AGR3013M',150),
	('AGR3013M',151),
	('AGR3013M',152),
	('CMP1001M',13),
	('CMP1001M',14),
	('CMP1001M',15),
	('CMP1001M',16),
	('CMP1001M',17),
	('CMP1003M',11),
	('CMP1003M',12),
	('CMP1005M',22),
	('CMP1005M',23),
	('CMP1005M',24),
	('CMP1009M',9),
	('CMP1009M',10),
	('CMP1032M',18),
	('CMP1032M',19),
	('CMP1032M',20),
	('CMP1032M',21),
	('CMP1035M',1),
	('CMP1035M',2),
	('CMP1035M',3),
	('CMP1035M',4),
	('CMP1036M',5),
	('CMP1036M',6),
	('CMP1036M',7),
	('CMP1036M',8),
	('CMP2007M',44),
	('CMP2007M',45),
	('CMP2007M',46),
	('CMP2019M',35),
	('CMP2019M',36),
	('CMP2019M',37),
	('CMP2019M',38),
	('CMP2020M',39),
	('CMP2020M',40),
	('CMP2020M',41),
	('CMP2060M',42),
	('CMP2060M',43),
	('CMP2062M',31),
	('CMP2062M',32),
	('CMP2062M',33),
	('CMP2062M',34),
	('CMP2066M',25),
	('CMP2066M',26),
	('CMP2066M',27),
	('CMP2066M',28),
	('CMP2066M',29),
	('CMP2066M',30),
	('CMP3059M',54),
	('CMP3059M',55),
	('CMP3059M',56),
	('CMP3060M',50),
	('CMP3060M',51),
	('CMP3060M',52),
	('CMP3060M',53),
	('CMP3333M',61),
	('CMP3333M',62),
	('CMP3333M',63),
	('CMP3333M',64),
	('CMP3637M',47),
	('CMP3637M',48),
	('CMP3637M',49),
	('CMP3641M',57),
	('CMP3641M',58),
	('CMP3641M',59),
	('CMP3641M',60),
	('FDS1104M',65),
	('FDS1104M',66),
	('FDS1104M',67),
	('FDS1104M',68),
	('FDS1105M',69),
	('FDS1105M',70),
	('FDS1105M',71),
	('FDS1106M',72),
	('FDS1106M',73),
	('FDS1106M',74),
	('FDS1106M',75),
	('FDS1107M',81),
	('FDS1107M',82),
	('FDS1107M',83),
	('FDS1107M',84),
	('FDS1108M',85),
	('FDS1108M',86),
	('FDS1108M',87),
	('FDS1108M',88);

/*!40000 ALTER TABLE `06_moduleLearningOutcomes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 07_assessments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `07_assessments`;

CREATE TABLE `07_assessments` (
  `assessmentID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `assessmentMethod` varchar(255) DEFAULT NULL,
  `weighting` decimal(5,2) DEFAULT NULL,
  `finalAssessment` tinyint(1) DEFAULT NULL,
  `submissionDate` date DEFAULT NULL,
  PRIMARY KEY (`assessmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `07_assessments` WRITE;
/*!40000 ALTER TABLE `07_assessments` DISABLE KEYS */;

INSERT INTO `07_assessments` (`assessmentID`, `assessmentMethod`, `weighting`, `finalAssessment`, `submissionDate`)
VALUES
	(1,'Assignment',100.00,1,'2012-12-19'),
	(2,'Coursework',30.00,0,'2012-11-05'),
	(3,'Examiniation',70.00,1,'2012-12-18'),
	(4,'Assignment',100.00,1,'2013-01-06'),
	(5,'Technical Reports',50.00,0,'2012-11-11'),
	(6,'In-Class Test',50.00,1,'2013-01-15'),
	(7,'Assignment',30.00,0,'2012-12-18'),
	(8,'Assignment',20.00,0,'2013-02-19'),
	(9,'Assignment',50.00,1,'2013-05-20'),
	(10,'Presentation',75.00,0,'2012-11-15'),
	(11,'Assignment',25.00,1,'2013-01-12'),
	(12,'In-Class Test',40.00,0,'2013-05-16'),
	(13,'Examination',60.00,1,'2013-05-05'),
	(14,'Assignment',30.00,0,'2012-11-09'),
	(15,'Assignment/Presentation',30.00,0,'2013-02-25'),
	(16,'Assignment',40.00,1,'2013-05-04'),
	(17,'Assignment',50.00,0,'2013-01-18'),
	(18,'Assignment',50.00,1,'2013-05-21'),
	(19,'Assignment',50.00,0,'2012-10-30'),
	(20,'Assignment',50.00,1,'2013-01-25'),
	(21,'Assignment',50.00,0,'2013-03-25'),
	(22,'Examination',50.00,1,'2013-05-25'),
	(23,'Assignment',100.00,1,'2013-01-10'),
	(24,'In-Class Test',30.00,0,'2013-03-20'),
	(25,'Examination',70.00,1,'2013-06-05'),
	(26,'Assignment',100.00,1,'2012-11-15'),
	(27,'Assignment',100.00,1,'2013-05-28'),
	(28,'Assignment',100.00,1,'2013-01-15'),
	(29,'Assignment',30.00,0,'2012-12-15'),
	(30,'Assignment',30.00,0,'2013-02-24'),
	(31,'Examination',40.00,1,'2013-05-12'),
	(32,'Assignment',50.00,0,'2013-01-10'),
	(33,'Assignment',50.00,1,'2013-05-10'),
	(34,'Written Report',30.00,0,'2012-11-16'),
	(35,'Individual Project',70.00,1,'2013-01-15'),
	(36,'Written Report',25.00,0,'2012-10-15'),
	(37,'Written Report',25.00,0,'2012-12-15'),
	(38,'Presentation',50.00,1,'2013-01-20'),
	(39,'Assignment',20.00,0,'2012-10-10'),
	(40,'Assignment',30.00,0,'2012-12-15'),
	(41,'Examination',50.00,1,'2013-01-20'),
	(42,'Assignment',20.00,0,'2012-10-15'),
	(43,'Report',20.00,0,'2012-12-18'),
	(44,'Phase Test',60.00,1,'2013-01-15'),
	(45,'Written Assignment',50.00,0,'2013-03-15'),
	(46,'Written Assignment',50.00,1,'2013-05-30'),
	(47,'Written Report',60.00,0,'2013-03-12'),
	(48,'Case Study',40.00,1,'2013-05-28'),
	(49,'Practical Report',40.00,0,'2013-03-01'),
	(50,'Examination',60.00,1,'2013-05-31'),
	(51,'Practical Assessment',20.00,0,'2013-02-28'),
	(52,'Herbarium',40.00,0,'2013-04-05'),
	(53,'Examination',40.00,1,'2013-05-23'),
	(54,'Assignment',50.00,0,'2013-03-27'),
	(55,'Assignment',50.00,1,'2013-05-05'),
	(56,'Assignment',20.00,0,'2013-02-10'),
	(57,'Assignment',20.00,0,'2013-03-28'),
	(58,'Examination',60.00,1,'2013-05-30'),
	(59,'Assignment',40.00,0,'2013-03-21'),
	(60,'Examination',60.00,1,'2013-05-27'),
	(61,'Assignment',40.00,0,'2013-04-01'),
	(62,'Examination',60.00,1,'2013-05-27'),
	(63,'Assignment',40.00,0,'2013-03-25'),
	(64,'Examination',60.00,1,'2013-05-21'),
	(65,'Assignment',20.00,0,'2013-02-23'),
	(66,'Assignment',20.00,0,'2013-03-30'),
	(67,'Examination',60.00,1,'2013-05-10'),
	(68,'Assignment',20.00,0,'2013-02-27'),
	(69,'Assignment',20.00,0,'2013-03-18'),
	(70,'Examination',60.00,1,'2013-05-10'),
	(71,'Product Specification',20.00,0,'2013-02-25'),
	(72,'Practical Report',30.00,0,'2013-03-28'),
	(73,'Assignment',50.00,1,'2013-05-20'),
	(74,'Assignment',25.00,0,'2013-02-20'),
	(75,'Case Study',25.00,0,'2013-04-05'),
	(76,'Case Study',50.00,1,'2013-05-28'),
	(77,'Short Presentation',5.00,0,'2012-11-19'),
	(78,'Thesis',80.00,0,'2013-04-10'),
	(79,'Presentation and Defence of Thesis',15.00,1,'2013-05-20'),
	(80,'Individual Project',40.00,0,'2012-12-05'),
	(81,'Presentation',20.00,0,'2012-12-15'),
	(82,'Examination',40.00,1,'2013-01-12'),
	(83,'Project',60.00,0,'2013-04-10'),
	(84,'Presentation',40.00,1,'2013-05-26'),
	(85,'Assignment',20.00,0,'2012-11-30'),
	(86,'Assignment',20.00,0,'2013-01-25'),
	(87,'Assignment',20.00,0,'2013-03-05'),
	(88,'Examination',40.00,1,'2013-05-15'),
	(89,'Individual Project',40.00,0,'2013-02-25'),
	(90,'Presentation',20.00,0,'2013-03-05'),
	(91,'Examination',40.00,1,'2013-05-20');

/*!40000 ALTER TABLE `07_assessments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 08_assessmentOutcomes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `08_assessmentOutcomes`;

CREATE TABLE `08_assessmentOutcomes` (
  `assessmentID` int(11) unsigned NOT NULL,
  `outcomeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`assessmentID`,`outcomeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `08_assessmentOutcomes` WRITE;
/*!40000 ALTER TABLE `08_assessmentOutcomes` DISABLE KEYS */;

INSERT INTO `08_assessmentOutcomes` (`assessmentID`, `outcomeID`)
VALUES
	(0,0),
	(1,1),
	(1,2),
	(1,3),
	(1,4),
	(2,5),
	(3,6),
	(3,7),
	(3,8),
	(4,9),
	(4,10),
	(5,11),
	(6,12),
	(7,13),
	(8,14),
	(9,15),
	(9,16),
	(9,17),
	(10,18),
	(10,19),
	(10,21),
	(11,18),
	(11,20),
	(12,22),
	(13,23),
	(13,24),
	(14,25),
	(14,26),
	(15,27),
	(15,28),
	(16,27),
	(16,28),
	(16,29),
	(16,30),
	(17,31),
	(17,32),
	(18,33),
	(18,34),
	(19,35),
	(19,36),
	(20,37),
	(20,38),
	(21,39),
	(21,40),
	(22,40),
	(22,41),
	(23,42),
	(23,43),
	(24,44),
	(25,45),
	(25,46),
	(26,47),
	(26,48),
	(26,49),
	(27,50),
	(27,51),
	(27,52),
	(27,53),
	(28,54),
	(28,55),
	(28,56),
	(29,57),
	(29,58),
	(30,58),
	(30,59),
	(31,58),
	(31,59),
	(31,60),
	(32,61),
	(32,62),
	(33,63),
	(33,64),
	(34,65),
	(34,66),
	(35,67),
	(35,68),
	(36,69),
	(37,70),
	(38,71),
	(39,74),
	(40,73),
	(41,72),
	(41,73),
	(41,75),
	(42,80),
	(43,78),
	(43,79),
	(44,76),
	(44,77),
	(45,81),
	(45,82),
	(46,83),
	(46,84),
	(47,85),
	(47,86),
	(48,87),
	(48,88),
	(49,91),
	(50,89),
	(50,91),
	(50,92),
	(51,93),
	(51,94),
	(52,94),
	(53,95),
	(53,96),
	(54,97),
	(54,100),
	(55,98),
	(55,99),
	(56,103),
	(57,104),
	(58,101),
	(58,102),
	(59,108),
	(60,105),
	(60,106),
	(60,107),
	(61,112),
	(62,109),
	(62,110),
	(62,111),
	(63,116),
	(64,113),
	(64,114),
	(64,115),
	(65,119),
	(66,120),
	(67,117),
	(67,118),
	(68,123),
	(69,124),
	(70,121),
	(70,122),
	(71,126),
	(72,127),
	(73,125),
	(74,128),
	(75,129),
	(76,130),
	(76,131),
	(77,133),
	(77,135),
	(77,136),
	(78,132),
	(78,133),
	(78,134),
	(78,135),
	(78,136),
	(78,137),
	(79,132),
	(79,133),
	(79,134),
	(79,135),
	(79,136),
	(79,137),
	(80,138),
	(80,139),
	(80,140),
	(81,139),
	(81,140),
	(82,139),
	(82,140),
	(82,141),
	(83,142),
	(83,143),
	(83,144),
	(84,143),
	(84,144),
	(84,145),
	(85,147),
	(86,148),
	(87,149),
	(88,146),
	(88,147),
	(88,148),
	(88,149),
	(89,152),
	(90,152),
	(91,150),
	(91,151);

/*!40000 ALTER TABLE `08_assessmentOutcomes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 09_moduleAssessments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `09_moduleAssessments`;

CREATE TABLE `09_moduleAssessments` (
  `moduleCode` varchar(10) NOT NULL DEFAULT '',
  `assessmentID` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleCode`,`assessmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `09_moduleAssessments` WRITE;
/*!40000 ALTER TABLE `09_moduleAssessments` DISABLE KEYS */;

INSERT INTO `09_moduleAssessments` (`moduleCode`, `assessmentID`)
VALUES
	('AGR1009M',42),
	('AGR1009M',43),
	('AGR1009M',44),
	('AGR1010M',49),
	('AGR1010M',50),
	('AGR1011M',51),
	('AGR1011M',52),
	('AGR1011M',53),
	('AGR2004M',54),
	('AGR2004M',55),
	('AGR2018M',56),
	('AGR2018M',57),
	('AGR2018M',58),
	('AGR2019M',59),
	('AGR2019M',60),
	('AGR2020M',61),
	('AGR2020M',62),
	('AGR2021M',63),
	('AGR2021M',64),
	('AGR2022M',65),
	('AGR2022M',66),
	('AGR2022M',67),
	('AGR2023M',68),
	('AGR2023M',69),
	('AGR2023M',70),
	('AGR2025M',71),
	('AGR2025M',72),
	('AGR2025M',73),
	('AGR2026M',74),
	('AGR2026M',75),
	('AGR2026M',76),
	('AGR3009M',77),
	('AGR3009M',78),
	('AGR3009M',79),
	('AGR3010M',80),
	('AGR3010M',81),
	('AGR3010M',82),
	('AGR3011M',83),
	('AGR3011M',84),
	('AGR3012M',85),
	('AGR3012M',86),
	('AGR3012M',87),
	('AGR3012M',88),
	('AGR3013M',89),
	('AGR3013M',90),
	('AGR3013M',91),
	('CMP1001M',7),
	('CMP1001M',8),
	('CMP1001M',9),
	('CMP1003M',5),
	('CMP1003M',6),
	('CMP1005M',12),
	('CMP1005M',13),
	('CMP1009M',4),
	('CMP1032M',10),
	('CMP1032M',11),
	('CMP1035M',1),
	('CMP1036M',2),
	('CMP1036M',3),
	('CMP2007M',24),
	('CMP2007M',25),
	('CMP2019M',19),
	('CMP2019M',20),
	('CMP2020M',21),
	('CMP2020M',22),
	('CMP2060M',23),
	('CMP2062M',17),
	('CMP2062M',18),
	('CMP2066M',14),
	('CMP2066M',15),
	('CMP2066M',16),
	('CMP3059M',28),
	('CMP3060M',27),
	('CMP3333M',32),
	('CMP3333M',33),
	('CMP3637M',26),
	('CMP3641M',29),
	('CMP3641M',30),
	('CMP3641M',31),
	('FDS1104M',34),
	('FDS1104M',35),
	('FDS1105M',36),
	('FDS1105M',37),
	('FDS1105M',38),
	('FDS1106M',39),
	('FDS1106M',40),
	('FDS1106M',41),
	('FDS1107M',45),
	('FDS1107M',46),
	('FDS1108M',47),
	('FDS1108M',48);

/*!40000 ALTER TABLE `09_moduleAssessments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 10_contact
# ------------------------------------------------------------

DROP TABLE IF EXISTS `10_contact`;

CREATE TABLE `10_contact` (
  `contactID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hours` int(2) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`contactID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `10_contact` WRITE;
/*!40000 ALTER TABLE `10_contact` DISABLE KEYS */;

INSERT INTO `10_contact` (`contactID`, `hours`, `type`)
VALUES
	(1,2,'Lecture'),
	(2,2,'Lecture'),
	(3,1,'Workshop'),
	(4,2,'Lecture'),
	(5,2,'Lecture'),
	(6,1,'Workshop'),
	(7,2,'Lecture'),
	(8,2,'Workshop'),
	(9,2,'Lecture'),
	(10,2,'Lecture'),
	(11,1,'Workshop'),
	(12,1,'Lecture'),
	(13,1,'Group Meeting'),
	(14,2,'Lecture'),
	(15,2,'Workshop'),
	(16,1,'Lecture'),
	(17,1,'Workshop'),
	(18,1,'Seminar'),
	(19,2,'Lecture'),
	(20,1,'Workshop'),
	(21,1,'Lecture'),
	(22,2,'Lecture'),
	(23,1,'Seminar'),
	(24,2,'Lecture'),
	(25,1,'Seminar'),
	(26,2,'Lecture'),
	(27,0,'Student-Managed Meetings'),
	(28,1,'Lecture'),
	(29,2,'Lecture'),
	(30,2,'Workshop'),
	(31,2,'Lecture'),
	(32,2,'Workshop'),
	(33,2,'Lecture'),
	(34,1,'Seminar'),
	(35,2,'Lecture'),
	(36,1,'Seminar'),
	(37,2,'Lecture'),
	(38,2,'Seminar'),
	(39,2,'Lecture'),
	(40,2,'Seminar'),
	(41,2,'Lecture'),
	(42,2,'Seminar'),
	(43,2,'Lecture'),
	(44,1,'Tutorial'),
	(45,2,'Lecture'),
	(46,2,'Seminar'),
	(47,2,'Lecture'),
	(48,1,'Seminar'),
	(49,2,'Lecture'),
	(50,2,'Seminar'),
	(51,2,'Lecture'),
	(52,2,'Seminar'),
	(53,2,'Lecture'),
	(54,1,'Seminar'),
	(55,2,'Lecture'),
	(56,2,'Tutorial'),
	(57,2,'Lecture'),
	(58,1,'Seminar'),
	(59,1,'Tutorial'),
	(60,2,'Lecture'),
	(61,2,'Workshop'),
	(62,2,'Lecture'),
	(63,1,'Seminar'),
	(64,1,'Tutorial'),
	(65,2,'Lecture'),
	(66,2,'Lecture'),
	(67,2,'Workshop'),
	(68,1,'Lecture'),
	(69,0,'Student-Managed Meetings'),
	(70,2,'Lecture'),
	(71,1,'Seminar'),
	(72,2,'Lecture'),
	(73,1,'Workshop'),
	(74,1,'Seminar'),
	(75,2,'Lecture'),
	(76,2,'Workshop'),
	(77,2,'Lecture'),
	(78,1,'Workshop'),
	(79,1,'Seminar');

/*!40000 ALTER TABLE `10_contact` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 11_moduleContact
# ------------------------------------------------------------

DROP TABLE IF EXISTS `11_moduleContact`;

CREATE TABLE `11_moduleContact` (
  `moduleCode` varchar(10) NOT NULL DEFAULT '',
  `contactID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleCode`,`contactID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `11_moduleContact` WRITE;
/*!40000 ALTER TABLE `11_moduleContact` DISABLE KEYS */;

INSERT INTO `11_moduleContact` (`moduleCode`, `contactID`)
VALUES
	('AGR1009M',39),
	('AGR1009M',40),
	('AGR1010M',45),
	('AGR1010M',46),
	('AGR1011M',47),
	('AGR1011M',48),
	('AGR2004M',49),
	('AGR2004M',50),
	('AGR2018M',51),
	('AGR2018M',52),
	('AGR2019M',53),
	('AGR2019M',54),
	('AGR2020M',55),
	('AGR2020M',56),
	('AGR2021M',57),
	('AGR2021M',58),
	('AGR2021M',59),
	('AGR2022M',60),
	('AGR2022M',61),
	('AGR2023M',62),
	('AGR2023M',63),
	('AGR2023M',64),
	('AGR2025M',65),
	('AGR2026M',66),
	('AGR2026M',67),
	('AGR3009M',68),
	('AGR3009M',69),
	('AGR3010M',70),
	('AGR3010M',71),
	('AGR3011M',72),
	('AGR3011M',73),
	('AGR3011M',74),
	('AGR3012M',75),
	('AGR3012M',76),
	('AGR3013M',77),
	('AGR3013M',78),
	('AGR3013M',79),
	('CMP1001M',7),
	('CMP1001M',8),
	('CMP1003M',5),
	('CMP1003M',6),
	('CMP1005M',10),
	('CMP1005M',11),
	('CMP1009M',4),
	('CMP1032M',9),
	('CMP1035M',1),
	('CMP1036M',2),
	('CMP1036M',3),
	('CMP2007M',24),
	('CMP2007M',25),
	('CMP2019M',16),
	('CMP2019M',17),
	('CMP2019M',18),
	('CMP2020M',19),
	('CMP2020M',20),
	('CMP2020M',21),
	('CMP2060M',22),
	('CMP2060M',23),
	('CMP2062M',14),
	('CMP2062M',15),
	('CMP2066M',12),
	('CMP2066M',13),
	('CMP3059M',28),
	('CMP3060M',27),
	('CMP3333M',31),
	('CMP3333M',32),
	('CMP3637M',26),
	('CMP3641M',29),
	('CMP3641M',30),
	('FDS1104M',33),
	('FDS1104M',34),
	('FDS1105M',35),
	('FDS1105M',36),
	('FDS1106M',37),
	('FDS1106M',38),
	('FDS1107M',41),
	('FDS1107M',42),
	('FDS1108M',43),
	('FDS1108M',44);

/*!40000 ALTER TABLE `11_moduleContact` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 12_jacsCodes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `12_jacsCodes`;

CREATE TABLE `12_jacsCodes` (
  `moduleCode` varchar(10) NOT NULL DEFAULT '',
  `jacsCode` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`moduleCode`,`jacsCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `12_jacsCodes` WRITE;
/*!40000 ALTER TABLE `12_jacsCodes` DISABLE KEYS */;

INSERT INTO `12_jacsCodes` (`moduleCode`, `jacsCode`)
VALUES
	('AGR1009M','D400'),
	('AGR1010M','D400'),
	('AGR1011M','D400'),
	('AGR2004M','D400'),
	('AGR2018M','D400'),
	('AGR2019M','D400'),
	('AGR2020M','D400'),
	('AGR2021M','D400'),
	('AGR2022M','D400'),
	('AGR2023M','D400'),
	('AGR2025M','D400'),
	('AGR2026M','D400'),
	('AGR3009M','D400'),
	('AGR3010M','D400'),
	('AGR3011M','D400'),
	('AGR3012M','D400'),
	('AGR3013M','D400'),
	('CMP1001M','G4'),
	('CMP1001M','G5'),
	('CMP1001M','G6'),
	('CMP1003M','G4'),
	('CMP1003M','G5'),
	('CMP1003M','G6'),
	('CMP1005M','G4'),
	('CMP1005M','G5'),
	('CMP1005M','G6'),
	('CMP1009M','G4'),
	('CMP1009M','G5'),
	('CMP1009M','G6'),
	('CMP1032M','G4'),
	('CMP1032M','G5'),
	('CMP1032M','G6'),
	('CMP1035M','G4'),
	('CMP1035M','G5'),
	('CMP1035M','G6'),
	('CMP1036M','G4'),
	('CMP1036M','G5'),
	('CMP1036M','G6'),
	('CMP2007M','G4'),
	('CMP2007M','G5'),
	('CMP2007M','G6'),
	('CMP2019M','G4'),
	('CMP2019M','G5'),
	('CMP2019M','G6'),
	('CMP2020M','G4'),
	('CMP2020M','G5'),
	('CMP2020M','G6'),
	('CMP2060M','G4'),
	('CMP2060M','G5'),
	('CMP2060M','G6'),
	('CMP2062M','G4'),
	('CMP2062M','G5'),
	('CMP2062M','G6'),
	('CMP2066M','G4'),
	('CMP2066M','G5'),
	('CMP2066M','G6'),
	('CMP3059M','G4'),
	('CMP3059M','G5'),
	('CMP3059M','G6'),
	('CMP3060M','G4'),
	('CMP3060M','G5'),
	('CMP3060M','G6'),
	('CMP3333M','G4'),
	('CMP3333M','G5'),
	('CMP3333M','G6'),
	('CMP3637M','G4'),
	('CMP3637M','G5'),
	('CMP3637M','G6'),
	('CMP3641M','G4'),
	('CMP3641M','G5'),
	('CMP3641M','G6'),
	('FDS1104M','D400'),
	('FDS1105M','D400'),
	('FDS1106M','D400'),
	('FDS1107M','D400'),
	('FDS1108M','D400');

/*!40000 ALTER TABLE `12_jacsCodes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 13_programmes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `13_programmes`;

CREATE TABLE `13_programmes` (
  `moduleCode` varchar(10) NOT NULL DEFAULT '',
  `programme` varchar(255) NOT NULL DEFAULT '' COMMENT 'This will probably end up being a unique integer identifier, but is currently detailed as a textual description, so here it is.',
  PRIMARY KEY (`moduleCode`,`programme`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `13_programmes` WRITE;
/*!40000 ALTER TABLE `13_programmes` DISABLE KEYS */;

INSERT INTO `13_programmes` (`moduleCode`, `programme`)
VALUES
	('AGR100M','D490'),
	('AGR1010M','D490'),
	('AGR1011M','D490'),
	('AGR2004M','D490'),
	('AGR2018M','D490'),
	('AGR2019M','D490'),
	('AGR2020M','D490'),
	('AGR2021M','D490'),
	('AGR2022M','D490'),
	('AGR2023M','D490'),
	('AGR2025M','D490'),
	('AGR2026M','D490'),
	('AGR3009M','D490'),
	('AGR3010M','D490'),
	('AGR3011M','D490'),
	('AGR3012M','D490'),
	('AGR3013M','D490'),
	('CMP1001M','G403'),
	('CMP1003M','G403'),
	('CMP1005M','G403'),
	('CMP1009M','G403'),
	('CMP1032M','G403'),
	('CMP1035M','G403'),
	('CMP1036M','G403'),
	('CMP2007M','G403'),
	('CMP2019M','G403'),
	('CMP2020M','G403'),
	('CMP2060M','G403'),
	('CMP2062M','G403'),
	('CMP2066M','G403'),
	('CMP3059M','G403'),
	('CMP3060M','G403'),
	('CMP3333M','G403'),
	('CMP3637M','G403'),
	('CMP3641M','G403'),
	('FDS1007M','D490'),
	('FDS1104M','D490'),
	('FDS1105M','D490'),
	('FDS1106M','D490'),
	('FDS1107M','D490'),
	('FDS1108M','D490');

/*!40000 ALTER TABLE `13_programmes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 14_preReq
# ------------------------------------------------------------

DROP TABLE IF EXISTS `14_preReq`;

CREATE TABLE `14_preReq` (
  `moduleCode` varchar(10) NOT NULL DEFAULT '',
  `preRequisite` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`moduleCode`,`preRequisite`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `14_preReq` WRITE;
/*!40000 ALTER TABLE `14_preReq` DISABLE KEYS */;

INSERT INTO `14_preReq` (`moduleCode`, `preRequisite`)
VALUES
	('AGR2018M','AGR1010M'),
	('AGR2024M','FDS1106M'),
	('AGR2026M','FDS1108M'),
	('AGR3012M','AGR2025M'),
	('AGR3012M','AGR2026M'),
	('AGR3013M','AGR2024M'),
	('AGR3013M','FDS1107M'),
	('CMP2020M','CMP1001M'),
	('CMP2062M','CMP1001M'),
	('CMP3060M','CMP3637M'),
	('CMP3641M','CMP1001M');

/*!40000 ALTER TABLE `14_preReq` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 15_coReq
# ------------------------------------------------------------

DROP TABLE IF EXISTS `15_coReq`;

CREATE TABLE `15_coReq` (
  `moduleCode` varchar(10) NOT NULL DEFAULT '',
  `coRequisite` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`moduleCode`,`coRequisite`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `15_coReq` WRITE;
/*!40000 ALTER TABLE `15_coReq` DISABLE KEYS */;

INSERT INTO `15_coReq` (`moduleCode`, `coRequisite`)
VALUES
	('FDS1104M','FDS1105M');

/*!40000 ALTER TABLE `15_coReq` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table 16_barredCombinations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `16_barredCombinations`;

CREATE TABLE `16_barredCombinations` (
  `moduleCode1` varchar(10) NOT NULL DEFAULT '',
  `moduleCode2` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`moduleCode1`,`moduleCode2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
