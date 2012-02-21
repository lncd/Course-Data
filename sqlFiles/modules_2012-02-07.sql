# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.9)
# Database: modules
# Generation Time: 2012-02-07 16:04:37 +0000
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
  PRIMARY KEY (`staffID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `02_staff` WRITE;
/*!40000 ALTER TABLE `02_staff` DISABLE KEYS */;

INSERT INTO `02_staff` (`staffID`, `staffName`, `samID`)
VALUES
	(1,'Kevin Jacques','kjacques'),
	(2,'Mark Doughty','mdoughty'),
	(3,'John Lewak','jlewak'),
	(4,'Grzegorz Cielniak','gcielniak'),
	(5,'David Cobham','dcobham'),
	(6,'John Murray','jomurray'),
	(7,'Nicola Bellotto','nbellotto'),
	(8,'Rose Spilberg','rspilberg'),
	(9,'Tom Duckett','tduckett'),
	(10,'Bashir Al-Diri','baldiri'),
	(12,'Shaun Lawson','slawson'),
	(13,'Mark Swainson','mswainson'),
	(14,'Dr Yunus Khatri','ykhatri'),
	(15,'Prof. Gerrit Meerdink','gmeerdink'),
	(16,'S. Goodger','sgoodger'),
	(17,'D. Stainton','dstainton'),
	(18,'Dr P Lovatt','plovatt');

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
	(88,'Describe the difference between income and expenditure and cash budgets, and interpret a simple set of financial statements');

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
	('FDS1107M',84);

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
	(46,'Written Assignment',50.00,1,'2013-05-30');

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
	(46,84);

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
	('FDS1107M',46);

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
	(42,2,'Seminar');

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
	('FDS1107M',42);

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
	('',''),
	('AGR1009M','D400'),
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
	('FDS1107M','D400');

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
	('FDS1106M','D490');

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
