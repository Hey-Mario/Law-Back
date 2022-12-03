-- MySQL dump 10.19  Distrib 10.3.37-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: law
-- ------------------------------------------------------
-- Server version	10.3.37-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `avies`
--

DROP TABLE IF EXISTS `avies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL DEFAULT 'Anonyme',
  `email` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avies`
--

LOCK TABLES `avies` WRITE;
/*!40000 ALTER TABLE `avies` DISABLE KEYS */;
INSERT INTO `avies` VALUES (1,'Jackie','0343433434','Blablabla','2022-12-02 19:55:37','2022-12-02 19:55:37'),(2,'Jackiesss','034343343854','Blablabla','2022-12-02 19:58:03','2022-12-02 19:58:03');
/*!40000 ALTER TABLE `avies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenus`
--

DROP TABLE IF EXISTS `contenus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contenus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `numtitre` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `numChapitre` varchar(255) DEFAULT NULL,
  `chapitre` varchar(255) DEFAULT NULL,
  `numSection` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `numSousSection` varchar(255) DEFAULT NULL,
  `sousSection` varchar(255) DEFAULT NULL,
  `numArticle` varchar(255) DEFAULT NULL,
  `article` longtext DEFAULT NULL,
  `info_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `titreMg` varchar(255) DEFAULT NULL,
  `chapitreMg` varchar(255) DEFAULT NULL,
  `sectionMg` varchar(255) DEFAULT NULL,
  `articleMg` longtext DEFAULT NULL,
  `sousSectionMg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contenus_info_id_foreign` (`info_id`),
  CONSTRAINT `contenus_info_id_foreign` FOREIGN KEY (`info_id`) REFERENCES `infos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenus`
--

LOCK TABLES `contenus` WRITE;
/*!40000 ALTER TABLE `contenus` DISABLE KEYS */;
INSERT INTO `contenus` VALUES (5,'1','DEFINITION DE LA FORÊT',NULL,NULL,NULL,NULL,NULL,NULL,'1','Par forêt, au sens de la présente Loi N° 97/017, on entend toutes surfaces répondant aux qualifications ci-après: les surfaces couvertes d\'arbres ou de végétation ligneuse, autres que plantées à des fins exclusives de production fruitière, de production de fourrage ou d\'ornementation; les surfaces occupées par les arbres et les buissons situés sur les berges des cours d\'eau et lacs et sur des terrains érodés; les terrains dont les fruits exclusifs ou principaux sont des produits forestiers, tels qu\'ils sont définis à l\'alinéa ci-dessous; Sont qualifiés produits des forêts : tous produits naturels issus de leur expLoi N° 97/017tation et dont la liste fera l’objet d’un décret.',29,NULL,NULL,'FAMARITANA NY ALA',NULL,NULL,'Amin’ny heviny raketin’izao lalàna izao, ny atao hoe ala dia ny velaran – tany rehetra mahafeno ireto toetoetra manaraka ireto : • Ny velaran-tany rakotr’hazo na zava-maniry mitsiraka, hafa noho ireo novolena manokana fotsiny ho famokarana voankazo, hamokarana vilona sakafon’ ny biby fiompy na ho haingo aman-dravaka ;• Ny velaran-tany hanirian’hazo sy kirihitra miorona amoron’ny rian-drano sy farihy ary tehezandrano kaohin-driaka ;• Ny velaran-tany izay ahitana fa ny hany vokatra na matoam-bokatra eo dia vokatry ny ala, araka ny famaritana izay amin’ ny andalàna eto ambany ; kilasiana ho vokatry ny ala ; ny vokatra voajanahary rehetra avy amin’ny fitrandrahana azy ka didim-panjakana no hanoritana ny lisitr’izy ireny',NULL),(6,'1','DEFINITION DE LA FORÊT',NULL,NULL,NULL,NULL,NULL,NULL,'2','Sont assimilés aux forêts: les surfaces non boisées d\'un bien fonds forestier telles que les clairières ou surfaces occupées par des routes forestières, constructions et installations nécessaires à la gestion forestière; les terrains non boisés à vocation forestière, notamment pour la conservation et la restauration des sols, la conservation de la biodiversité, la régulation des systèmes hydriques ou l\'accroissement de la production forestière dès qu\'ils auront fait l\'objet d\'un classement tel que défini à l’article 44 de la présente Loi N° 97/017; les terrains déboisés depuis moins de cinq ans et n\'ayant pas fait l\'objet d\'une autorisation de défrichement; les marais, les peuplements d\'aloës; les peuplements naturels et purs d\'arbres produisant des fruits, tels que les manguiers et anacardiers; les mangroves, les bois sacrés, les raphières (coeur de palmiers Ravinala).',29,NULL,NULL,'FAMARITANA NY ALA',NULL,NULL,'Ampitoviana amin’ny ala : • Ny velaran-tany tsy hanirian’hazo amin’ny faritra misy ala toy ny toerana sy kitrok’ala na valaran- dàlana manavatsava ala, ny misy trano miorina sy tsangan’asa ilaina amin’ny fitantanana ny ala ;• Ny tany tsy volen’hazo amin’ny aty ala voatokana, indrindra ho fikajiana sy famerenana amin’ny laoniny ny nofon-tany, fikajiana ny tontolom-piveloman’ny zava-miaina samihafa, fandrindrandrafitra mitana hamandoana na fampitomboana ny vokatry ny ala raha vita ny fanakilasiana azy araka ny voasoritry ny andininy faha – 76 sy ny manaraka amin’izao lalàna izao ;• Ny velaran-tany efa voakapa hazo efa hatramin’ny dimy taona latsaka nefa tsy nahozoana alàlana hanaovana famakian-tany vao ;• Ny tany hokara, ny anirian’ny vahona ;• Ny anirian’ny voahary tsy miharoharo, manome hazo fihinam-boa, toy ny manga sy ny mahabibo ;Ny ala-konko, ny hazo manan-kasina, ny anirian-drofia (iroboroboan’ny Ravinala)',NULL),(7,'1','DEFINITION DE LA FORÊT',NULL,NULL,NULL,NULL,NULL,NULL,'3','Des surfaces minimales peuvent être fixées par voie réglementaire et adaptées au niveau régional',29,NULL,NULL,'FAMARITANA NY ALA',NULL,NULL,'Azo atao ny mametra amin’ny alàlan’ny didy aman-tsipika, ny farafahakelin’ny velaran-tany voatokana antonona ny isam-paritra.',NULL),(8,'1','DEFINITION DE LA FORÊT',NULL,NULL,NULL,NULL,NULL,NULL,'4','Ne sont pas considérés comme forêts: les cultures d’arbres et boisements plantés sur un terrain non forestier; les jardins boisés, les allées et parcs urbains et les pépinières non situées sur des biens fonds forestiers; les cultures d\'arbres et boisements destinés à une expLoi N° 97/017tation à court terme, plantés sur un terrain non forestier, annoncés et enregistrés comme tels auprès de l\'Administration forestière lors de leur établissement. toute surface donnant des produits agricoles, sauf s\'il s\'agit de surface couverte d\'arbres ayant poussé naturellement, ou de reboisements; les pâturages, suivant la vocation des sols définie par la Loi N° 97/017.',29,NULL,NULL,'FAMARITANA NY ALA',NULL,NULL,'Tsy heverina ho ala : • Ny voly hazo sy ny fambolen-java-maniry amin’ny tsy faritr’ala ;• Ny zaridaina volena hazo, ny làlana sy faritra iriariavana an-tanàn-dehibe ary ny ambolena zanakazo tsy tafiditra anatin’ny faritry ny ala ;• Ny voly hazo sy ny fambolen-java-maniry ho trandrahina anatin’ny fotoana fohy, amin’ny tany tsy faritr’ala, nambara sy noraketina am-boky ho izany, tany amin’ny Fandraharahampanjakana momba ny ala fony izy ireny naorina ;• Ny velaran-tany rehetra ahazoana vokatry ny fambolena, raha tsy hoe rakotr’hazo naniry ho azy na voavoly izy ireny ;• Ny fanaovana kijàna firaofana, arakaraka ny anokanana ny tany voasoritry ny lalàna.',NULL),(9,'1','DEFINITION DE LA FORÊT',NULL,NULL,NULL,NULL,NULL,NULL,'5','La constatation de la nature forestière d\'un terrain relève de la compétence d\'une commission forestière du lieu de situation du terrain et dont la composition et le mode de fonctionnement sont déterminés par décret',29,NULL,NULL,'FAMARITANA NY ALA',NULL,NULL,'Ny fizaham-pototra ny maha-faritr’ala ny tany dia tandrifim-pahefan’ny vaomiera iray momba ny ala eo amin’ny toerana misy ny tany ka didim-panjakana no mametra izay ho anisany sy ny fomba fampandehanana azy',NULL),(10,'1','DEFINITION DE LA FORÊT',NULL,NULL,NULL,NULL,NULL,NULL,'6','Les décisions de la commission sont susceptibles de recours devant la juridiction administrative qui pourra statuer sur tous les cas de litige',29,NULL,NULL,'FAMARITANA NY ALA',NULL,NULL,'Ny fanapahana ataon’ny vaomiera dia azo ampakarina eo anatrehan’antokom-pitsarana arapitondrana izay hanapaka ny amin’ny fifanolanana rehetra mitranga.',NULL),(11,'2','DU REGIME FORESTIER','1','DEFINITION',NULL,NULL,NULL,NULL,'7','Le régime forestier est l’ensemble des dispositions législatives et réglementaires ayant pour objet la protection et la bonne gestion durable des ressources forestières',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMARITANA',NULL,'Ny sata itantanana ny ala dia ny fitambaramben’ny fepetra soritan’ny didy aman-dalàna ary\nfitsipika mifototra amin’ny fiarovana sy ny fitantanana tsara sady maharitra ny loharanon-karen’ny\nala.',NULL),(12,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER',NULL,NULL,NULL,NULL,'8','Toute forêt peut être soumise au régime forestier ou en être distraite par décision de\nl’Administration après avis de la commission forestière prévue à l’article 5 de la présente loi.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN’IZANY',NULL,'Ny ala rehetra dia azo ampiharana ny sata itantanana ny ala na ahafahana amin’izany\namin’ny alàlan’ny fanapahana ataon’ny Fandraharaham-panjakana rehefa manome ny heviny ny\nvaomiera mikarakara ny ala voalazan’ny andininy faha – 5 amin’izao laharana izao.',NULL),(13,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au régime forestier',NULL,NULL,'9','Toute forêt soumise au régime forestier est régie par les règles de protection, de\ngestion et d\'exploitation définies par la présente loi.\n\nTout investissement quel qu’en soit la nature qui pourra entraîner la destruction des forêts doit\navoir l’aval du Ministère chargé des forêts et conformément aux dispositions de la loi M.E.C.I.E.\n(Mise en Compatibilité des Investissements sur l’Environnement).',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN’IZANY','Fampiharana ny sata itantanana ny ala','Ny ala rehetra ampiharana ny sata itantanana ny ala dia fehezin’ny fitsipika momba ny\nfiarovana, fitantanana ary fitrandrahana soritan’ireo lalàna ireo.',NULL),(14,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au régime forestier',NULL,NULL,'10','Les forêts soumises au régime forestier sont inaliénables et imprescriptibles',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN’IZANY','Fampiharana ny sata itantanana ny ala','Ny ala iharan’ny sata itantanana ny ala dia tsy azo amidy sy tsy maty paik’andro ny\nfitompoana azy.',NULL),(15,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au régime forestier',NULL,NULL,'11','Les forêts soumises au régime forestier bénéficient de divers avantages qui sont\ndéterminés par voie réglementaire.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN’IZANY','Fampiharana ny sata itantanana ny ala','Ny ala iharan’ny sata itantanana ny ala dia mahazo ny tombontsoa samihafa voafaritra\namin’ny alàlan’ny didy amam-pitsipika.',NULL),(16,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au régime forestier',NULL,NULL,'12','Sont notamment soumis au régime forestier, dès l\'entrée en vigueur de la présente\nloi, compte tenu des dispositions particulières des Conventions internationales :\n\n• les forêts naturelles telles que les Réserves Naturelles Intégrales, Parcs Nationaux,\nRéserves Spéciales, Forêts Classées, les Forêts domaniales, les Réserves Forestières ;\n• les forêts artificielles appartenant à des personnes publiques dont notamment les\nreboisements et périmètres de reboisement ou de restauration des sols, les stations\nforestières;\n• les forêts et terrains à boiser qui font partie du domaine de l\'Etat ou sur lequel l\'Etat a\ndes droits de propriété indivis ;\n• les bois et forêts susceptibles d\'aménagement, d\'exploitation régulière ou de\nreconstitution et les terrains à boiser appartenant aux Collectivités territoriales\ndécentralisées, aux établissements publics, aux établissements d\'utilité publique, et à\nd\'autres personnes morales publiques ou sur lesquels ces collectivités et personnes\nmorales ont des droits de propriété indivis ;\n• les bois, forêts et terrains à boiser, propriété d\'un groupement forestier constitués dans le\nbut de mener dans les régions côtières une politique foncière de sauvegarde de l\'espace\nlittoral, de respect des sites naturels et de l\'équilibre écologique ;\n• les terrains reboisés par l\'Etat en exécution de l’article 44 de la présente loi ;\n• les brise-vent plantés sur des biens fonds agricoles ;\nLes plantations fruitières sur terrains non forestiers, telles les cocoteraies.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN’IZANY','Fampiharana ny sata itantanana ny ala','Iharan’ny sata itantanana ny ala indrindra, raha vantany vao manan-kery izao lalàna izao,\nka tandrovina ny fepetra manokana raketin’ny Fifanarahana iraisam-pirenena :\n• Ny ala voajanahary toy ny tahirin-javaboahary tanteraka, ny valam-pirenena, ny faritra voaaro\nmanokana, ny ala voasokajy, ny ala amin’ny tanim-panjakana, ny faritra rakotr’ala voaaro ;\n• Ny ala harin-tànan’olona an’ny fikambanana mizaka ny zom-panjakana indrindra ny fambolen-\nkazo sy ny faritra fambolen-kazo na ny anajariana ny nofon-tany, ny toby fikarakarana ny ala ;\n• Ny ala sy ny tany volena hazo izay anisan’ny harem-panjakana, na tany ananan’ny Fanjakana\nzom-pitompoana tsy zaraina ;\n• Ny hazo sy ny ala mbola mety hojariana, trandrahana ara-dalàna na havaozina indray ary ny\ntany volena hazo an’ny Vondrom-bahoakam-paritra itsinjaram-pahefana, an’antokon-\ndraharaham-panjakana, an’antokon-draharaha fanasoavam-bahoaka ary an’ny fikambanana\nhafa mizaka ny zom-panjakana na izay ananan’ireo vondrona sy fikambanana ireny ny zom –\npitompoana tsy zaraina ;\n• Ny hazo, ny ala ary ny tany volena hazo an’ny vondrona mpikarakara ny ala najoro mba\nhahatontosana any amin’ny faritra amoron-dranomasina, fikojakojana ny toera-manintona\nvoajanahary ary ny fifandanjan’ny tontolo iainana ;\n• Ny tany anaovan’ny Fanjakana fambolen-kazo, ho fanatanterahana ny andininy faha – 43\namin’izao lalàna izao ;\n• Ny aro-rivotra atsatoka eny amin’ny tany fanaovan’asam-pambolena ;\n• Ny fambolena hazo fihinam-boa amin’ny tsy faritr’ala, toy ny tany fambolena voanio.',NULL),(17,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au régime forestier',NULL,NULL,'13','Tout propriétaire de forêt peut demander la soumission de sa forêt au régime\nforestier.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN’IZANY','Fampiharana ny sata itantanana ny ala','Ny tompon’ala rehetra dia afaka mangataka ny fampiharana amin’ny alany, ny sata\nitantanana ny ala.',NULL),(18,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au régime forestier',NULL,NULL,'14','Les conditions et les modalités de soumission au régime, peuvent varier suivant\nque les forêts considérées appartiennent à l\'Etat, aux Collectivités Territoriales Décentralisées,\naux Etablissements Publics, ou à des Personnes privées, physiques ou morales.\nDes décrets fixeront, en tant que de besoin, les conditions et modalités prévues à l\'alinéa\nprécédent.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN’IZANY','Fampiharana ny sata itantanana ny ala','Ny fepetra sy ny fombafomba fampiharana ny sata itantanana ny ala dia mety hiovaova\narakaraky ny ala voakasika raha toa izany an’ny fanjakana, an’ny Vondrom-bahoakam-paritra\nitsinjaram-pahefana, an’antokon-draharaham-panjakana na an’olo-tsotra, isam-batan’olona na\nfikambanana mizaka ny zony.\nDidim-panjakana no hametra, raha ilaina, ny fepetra sy ny fombafomba arahina voalazan’ny an-\ndàlana etsy aloha.',NULL),(19,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au régime forestier',NULL,NULL,'15','Toute contestation relative à la soumission ou non au régime forestier relève de la\ncompétence de la commission prévue à l\'article 5 de la présente.\nLes modalités et conditions d’application du présent article seront déterminés par voie\nréglementaire.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN’IZANY','Fampiharana ny sata itantanana ny ala','Izay fifandirana rehetra mikasika ny fampiharana na tsia ny sata itantanana ny ala dia\ntandrifim-pahefan’ny vaomiera voalazan’ny andininy faha – 5 amin’izao lalàna izao.\nNy fombafomba sy ny fepetra fampiharana izao dia ho faritana amin’ny alàlan’ny didy amam-\npitsipika.',NULL),(20,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au régime forestier',NULL,NULL,'16','La soumission au régime forestier est décidée :\n1\npour les forêts de l\'Etat, par le Ministre chargé des forêts après avis de la Commission\nprévue à l\'article 5 de la présente loi ;\n2\npour les forêts des Collectivités Territoriales Décentralisées et des Etablissements\nPublics, par le représentant régional du Ministère chargé des Forêts et après avis de la\ncommission forestière prévue à l\'article 5 ci-dessus.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN’IZANY','Fampiharana ny sata itantanana ny ala','Ny mpanapaka momba ny fampiharana ny sata itantanana ny ala dia :\n1. Ny Minisitra miandraikitra ny Ala rehefa avy manome ny heviny ny vaomiera voalazan’ny\nandininy faha –5 amin’izao lalàna izao, mikasika ny alam-panjakana ;\n2. Ny solontenam-paritry ny minisitera miandraikitra ny Ala rehefa avy manome ny heviny ny\nvaomiera mikarakara ny ala voalazan’ny andininy faha – 5 etsy ambony, mikasika ny ala an’ny\nVondrom-bahoakam-paritra itsinjaram-pahefana sy ny an’antokon-draharaham-panjakana.',NULL),(21,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','2','De la distraction du régime forestier',NULL,NULL,'17','Les forêts des personnes publiques et des personnes privées peuvent faire l\'objet\nde distraction temporaire ou définitive du régime forestier.\nToutefois, les Réserves Naturelles Intégrales, les Parcs Nationaux, les Réserves Spéciales et les\nforêts classées, dans le respect des conventions internationales ainsi que les terrains et\nsurfaces définis à l’article 2 ne sont pas susceptibles de distraction.\nPour les forêts de l\'Etat, la distraction est décidée par décret en Conseil de Gouvernement sur\nproposition du Ministre chargé des forêts.\nPour les forêts des Collectivités Territoriales Décentralisées et des Etablissements Publics,\nl\'autorisation de distraction est accordée par le représentant régional de l\'Administration\nForestière, sur demande du propriétaire, après avis de la commission prévue à l\'article 5 de la\nprésente loi.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN’IZANY','Ny amin’ny fanafahana tsy iharan’ny sata itantanana ny ala','Ny ala fananan’ny fikambanana mizaka ny zom-panjakana sy ny an’olon-tsotra dia azo\nafahana vonjimaika na tena raikitra ny sata itantanana ny ala.\nNa izany aza dia tsy ahazoana fanafahana tsy iharan’izany ny tahirin-java-boahary tanteraka, ny\nvalam-pirenena, ny faritra voaaro manokana ary ny ala voasokajy, ho fanajana ny fifanarahana\niraisam-pirenena ary koa ireo tany sy velaran-tany voafaritry ny andininy faha – 2.\nNy amin’ny alam-panjakana, ny fanafahana dia tapahina amin’ny alàlan’ny didim-panjakana eo am-\npivorian’ny Governemanta araka ny tolo-kevitra aroson’ny Minisitra miandraikitra ny Ala.\nMikasika ireo ala hafa, ny alàlana amin’ny fanafahana dia omen’ny solontenam-paritry ny\nfitantanana ny ala, araka ny fangatahana ataon’ny tompony, rehefa avy nanome ny heviny ny\nvaomiera voalazan’ny andininy faha – 5 amin’izao lalàna izao.\nIzany fanafahana izany dia tsy azo afindra ary omena amin’ny anaran’olon-tokana.',NULL),(22,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','2','De la distraction du régime forestier',NULL,NULL,'18','La demande d\'autorisation de distraction doit être fondée sur l\'exécution d\'un\nprogramme économique et social d\'utilité publique.\nLa demande de distraction est instruite dans les mêmes conditions et suivant les mêmes\nprocédures que la demande de soumission.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN’IZANY','Ny amin’ny fanafahana tsy iharan’ny sata itantanana ny ala','Ny fangatahana alalàna amin’ny fanafahana dia tsy mifototra amin’ny fanatanterahana ny\nfandaharan’asa fanasoavam-bahoaka ara-toekarena sy ara-tsosialy.\nNy famotopotorana fangatahana fanafahana dia anarahana fepetra sy paika mitovy ihany amin’ny\nfangatahana fampiharana ny sata.',NULL),(23,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','2','De la distraction du régime forestier',NULL,NULL,'19','La décision autorisant la distraction est prise dans les mêmes formes que pour la\nsoumission au régime forestier.\nElle est susceptible de recours par les mêmes personnes et dans les mêmes conditions que\npour la soumission au régime forestier.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN’IZANY','Ny amin’ny fanafahana tsy iharan’ny sata itantanana ny ala','Ny fanapahana anomezan-dàlana amin’ny fanafahana dia mitovy endrika ihany amin’ny\nfangatahana fampiharana ny sata itantanana ny ala.\nIzany dia mety hisy ny fampakaran-draharaha ataon’ireo olona ireo ihany sy araka ny fepetra mitovy\nihany amin’ny fampiharana ny sata itantanana ny ala.',NULL),(24,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','2','De la distraction du régime forestier',NULL,NULL,'20','Les forêts ayant fait l\'objet de distraction du régime forestier peuvent réintégrer ce\nrégime dans les conditions et suivant les procédures prévues dans la Section 1, du chapitre II,\ndu titre II de la présente loi.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN’IZANY','Ny amin’ny fanafahana tsy iharan’ny sata itantanana ny ala','Ny ala voakasiky ny fanafahana tsy iharan’ny sata itantanana ny ala dia azo averin-ko\nvoafehin’io sata io araka ny fepetra sy ny paika arahina voalazan’ny sokajy I, toko I, lohateny II\namin’izao lalàna izao.',NULL),(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rappelant sa résolution 55/61 du 4 décembre 2000, dans laquelle elle a créé\nun comité spécial chargé de négocier un instrument juridique international\nefficace contre la corruption et a prié le Secrétaire général de charger un groupe\nd’experts intergouvernemental à composition non limitée d’examiner la ques-\ntion du mandat de ce comité spécial et d’élaborer un projet de mandat pour les\nnégociations, et sa résolution 55/188 du 20 décembre 2000, dans laquelle elle\na invité le groupe intergouvernemental d’experts à composition non limitée\ndevant être convoqué conformément à la résolution 55/61 à examiner la ques-\ntion du transfert illégal de fonds et du rapatriement desdits fonds dans les pays\nd’origine,',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rappelant sa résolution 55/61 du 4 décembre 2000, dans laquelle elle a créé\nun comité spécial chargé de négocier un instrument juridique international\nefficace contre la corruption et a prié le Secrétaire général de charger un groupe\nd’experts intergouvernemental à composition non limitée d’examiner la ques-\ntion du mandat de ce comité spécial et d’élaborer un projet de mandat pour les\nnégociations, et sa résolution 55/188 du 20 décembre 2000, dans laquelle elle\na invité le groupe intergouvernemental d’experts à composition non limitée\ndevant être convoqué conformément à la résolution 55/61 à examiner la ques-\ntion du transfert illégal de fonds et du rapatriement desdits fonds dans les pays\nd’origine,',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rappelant également ses résolutions 56/186 du 21 décembre 2001 et\n57/244 du 20 décembre 2002 concernant l’action préventive et la lutte contre\nla corruption et le transfert de fonds d’origine illicite et la restitution desdits\nfonds aux pays d’origine,',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Est autorisée, la ratification de la Convention des Nations Unies\ncontre la corruption par Madagascar.',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2','La présente Loi sera publiée au Journal Officiel de la République. Elle sera\nexécutée comme Loi de l\'Etat.',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `contenus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infos`
--

DROP TABLE IF EXISTS `infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `titreType` varchar(255) DEFAULT NULL,
  `numeroType` varchar(255) DEFAULT NULL,
  `theme_id` bigint(20) unsigned NOT NULL,
  `type_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `titreTypeMg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `infos_theme_id_foreign` (`theme_id`),
  KEY `infos_type_id_foreign` (`type_id`),
  CONSTRAINT `infos_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `infos_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
INSERT INTO `infos` VALUES (1,'CONVENTION DES NATIONS UNIES CONTRE LA CORRUPTION','C2004',1,1,NULL,NULL,NULL),(2,'autorisant-la-ratification-de-la-Convention-des-Nations-Unies-contre-la-corruption-','2004-017',1,2,NULL,NULL,NULL),(3,'Portant Statut Général des Fonctionnaires','2003-011',1,2,NULL,NULL,NULL),(4,'portant Code de Conduite de la Police Nationale','24.4802012',2,3,NULL,NULL,NULL),(5,'portant Code de déontologie des magistrats','2005-710 ',2,4,NULL,NULL,NULL),(6,'fixant les modalités et les conditions d’application de la LOI n° 2015- 005','2017- 4157',3,4,NULL,'2022-12-03 00:38:40','jhgjhgj'),(7,'portant refonte du Code de Gestion des Aires Protégées','2015-005',3,2,NULL,NULL,NULL),(18,'Portant mise en place des normes d’exploitation des bois à Madagascar',' 136732017',4,3,NULL,NULL,NULL),(19,'portant réglementation des activités d’aquaculture','2016-1493',4,4,NULL,NULL,NULL),(20,'portant création de la chaîne spéciale de lutte contre le trafic de bois de rose etou de bois d\'ébène et répression des infractions relatives aux bois de rose etou bois d\'ébène','2015-056',4,2,NULL,NULL,NULL),(21,'portant Charte de l’Environnement Malagasy actualisée','2015-003',4,2,NULL,NULL,NULL),(22,'sur le commerce international des espèces de faune et de flore sauvages','2005-018',4,2,NULL,NULL,NULL),(23,'Fixant le régime des défrichements et des feux de végétation','60-127',4,5,NULL,NULL,NULL),(24,'sur la Lutte contre la Corruption','2016-020',5,2,NULL,NULL,NULL),(25,'CODE DE PROCEDURE PENALE',NULL,5,2,NULL,NULL,NULL),(26,'portant restructuration du BIANCO','2020-013',6,4,NULL,NULL,NULL),(27,'portant Code des Marchés Publics','2016-055',6,2,NULL,NULL,NULL),(28,'RELATIVE AU RECOUVREMENT DES AVOIRS ILLICITES','2019-015',6,5,NULL,NULL,NULL),(29,'Portant révision de la Législation Forestière','97/017',4,2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_12_01_182809_create_themes_table',1),(6,'2022_12_01_182915_create_types_table',1),(7,'2022_12_01_182952_create_contents_table',1),(8,'2022_12_02_092514_create_contenus_table',1),(10,'2022_12_02_095017_change_type_to_contenus_table',2),(11,'2022_12_02_212150_add_collone_to_contenus_table',3),(13,'2022_12_02_222107_create_avies_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plaintes`
--

DROP TABLE IF EXISTS `plaintes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plaintes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL DEFAULT 'Anonyme',
  `email` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plaintes`
--

LOCK TABLES `plaintes` WRITE;
/*!40000 ALTER TABLE `plaintes` DISABLE KEYS */;
INSERT INTO `plaintes` VALUES (1,'Jackie','0343433434','Blablabla','2022-12-02 19:56:29','2022-12-02 19:56:29'),(2,'Jackie-Chan','0333333333','Blablabla','2022-12-02 19:57:43','2022-12-02 19:57:43'),(3,'Jackie','0343433434','Blablabla','2022-12-02 22:23:55','2022-12-02 22:23:55'),(4,'kdkr','102022','jdjdjdjdjdjdd','2022-12-02 22:24:34','2022-12-02 22:24:34');
/*!40000 ALTER TABLE `plaintes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `themes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nomMg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
INSERT INTO `themes` VALUES (1,'Corruption et Engagement d’un représentant du gouvernement',NULL,NULL,NULL),(2,'Déontologie et bonne conduite des agents publics',NULL,NULL,NULL),(3,'Faune',NULL,NULL,NULL),(4,'Flore',NULL,NULL,'Ala'),(5,'Organisation de la lutte contre la corruption',NULL,NULL,NULL),(6,'Répression et principes',NULL,NULL,NULL);
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nomMg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Convention',NULL,NULL,NULL),(2,'Loi',NULL,NULL,'Lalana'),(3,'Arrêté',NULL,NULL,NULL),(4,'Decret ',NULL,NULL,NULL),(5,'Ordonnance ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-03  6:54:06
