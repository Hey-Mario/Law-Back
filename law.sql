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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avies`
--

LOCK TABLES `avies` WRITE;
/*!40000 ALTER TABLE `avies` DISABLE KEYS */;
INSERT INTO `avies` VALUES (1,'Jackie','0343433434','Blablabla','2022-12-02 19:55:37','2022-12-02 19:55:37'),(2,'Jackiesss','034343343854','Blablabla','2022-12-02 19:58:03','2022-12-02 19:58:03'),(3,'Jackie','0343433434','Mario','2022-12-03 02:19:31','2022-12-03 02:19:31'),(4,'Mario','0340731748','Tena mafy ny fiainana','2022-12-03 04:09:18','2022-12-03 04:09:18'),(5,'Jackie','0343433434','Blablablavvhjkbvgghnkkkbvvvvvvbbvcfgbn','2022-12-03 04:54:21','2022-12-03 04:54:21'),(6,'Jackie','0343433434','Blablabla','2022-12-03 05:57:22','2022-12-03 05:57:22');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenus`
--

LOCK TABLES `contenus` WRITE;
/*!40000 ALTER TABLE `contenus` DISABLE KEYS */;
INSERT INTO `contenus` VALUES (5,'1','DEFINITION DE LA FOR??T',NULL,NULL,NULL,NULL,NULL,NULL,'1','Par for??t, au sens de la pr??sente Loi N?? 97/017, on entend toutes surfaces r??pondant aux qualifications ci-apr??s: les surfaces couvertes d\'arbres ou de v??g??tation ligneuse, autres que plant??es ?? des fins exclusives de production fruiti??re, de production de fourrage ou d\'ornementation; les surfaces occup??es par les arbres et les buissons situ??s sur les berges des cours d\'eau et lacs et sur des terrains ??rod??s; les terrains dont les fruits exclusifs ou principaux sont des produits forestiers, tels qu\'ils sont d??finis ?? l\'alin??a ci-dessous; Sont qualifi??s produits des for??ts : tous produits naturels issus de leur expLoi N?? 97/017tation et dont la liste fera l???objet d???un d??cret.',29,NULL,NULL,'FAMARITANA NY ALA',NULL,NULL,'Amin???ny heviny raketin???izao lal??na izao, ny atao hoe ala dia ny velaran ??? tany rehetra mahafeno ireto toetoetra manaraka ireto : ??? Ny velaran-tany rakotr???hazo na zava-maniry mitsiraka, hafa noho ireo novolena manokana fotsiny ho famokarana voankazo, hamokarana vilona sakafon??? ny biby fiompy na ho haingo aman-dravaka ;??? Ny velaran-tany hanirian???hazo sy kirihitra miorona amoron???ny rian-drano sy farihy ary tehezandrano kaohin-driaka ;??? Ny velaran-tany izay ahitana fa ny hany vokatra na matoam-bokatra eo dia vokatry ny ala, araka ny famaritana izay amin??? ny andal??na eto ambany ; kilasiana ho vokatry ny ala ; ny vokatra voajanahary rehetra avy amin???ny fitrandrahana azy ka didim-panjakana no hanoritana ny lisitr???izy ireny',NULL),(6,'1','DEFINITION DE LA FOR??T',NULL,NULL,NULL,NULL,NULL,NULL,'2','Sont assimil??s aux for??ts: les surfaces non bois??es d\'un bien fonds forestier telles que les clairi??res ou surfaces occup??es par des routes foresti??res, constructions et installations n??cessaires ?? la gestion foresti??re; les terrains non bois??s ?? vocation foresti??re, notamment pour la conservation et la restauration des sols, la conservation de la biodiversit??, la r??gulation des syst??mes hydriques ou l\'accroissement de la production foresti??re d??s qu\'ils auront fait l\'objet d\'un classement tel que d??fini ?? l???article 44 de la pr??sente Loi N?? 97/017; les terrains d??bois??s depuis moins de cinq ans et n\'ayant pas fait l\'objet d\'une autorisation de d??frichement; les marais, les peuplements d\'alo??s; les peuplements naturels et purs d\'arbres produisant des fruits, tels que les manguiers et anacardiers; les mangroves, les bois sacr??s, les raphi??res (coeur de palmiers Ravinala).',29,NULL,NULL,'FAMARITANA NY ALA',NULL,NULL,'Ampitoviana amin???ny ala : ??? Ny velaran-tany tsy hanirian???hazo amin???ny faritra misy ala toy ny toerana sy kitrok???ala na valaran- d??lana manavatsava ala, ny misy trano miorina sy tsangan???asa ilaina amin???ny fitantanana ny ala ;??? Ny tany tsy volen???hazo amin???ny aty ala voatokana, indrindra ho fikajiana sy famerenana amin???ny laoniny ny nofon-tany, fikajiana ny tontolom-piveloman???ny zava-miaina samihafa, fandrindrandrafitra mitana hamandoana na fampitomboana ny vokatry ny ala raha vita ny fanakilasiana azy araka ny voasoritry ny andininy faha ??? 76 sy ny manaraka amin???izao lal??na izao ;??? Ny velaran-tany efa voakapa hazo efa hatramin???ny dimy taona latsaka nefa tsy nahozoana al??lana hanaovana famakian-tany vao ;??? Ny tany hokara, ny anirian???ny vahona ;??? Ny anirian???ny voahary tsy miharoharo, manome hazo fihinam-boa, toy ny manga sy ny mahabibo ;Ny ala-konko, ny hazo manan-kasina, ny anirian-drofia (iroboroboan???ny Ravinala)',NULL),(7,'1','DEFINITION DE LA FOR??T',NULL,NULL,NULL,NULL,NULL,NULL,'3','Des surfaces minimales peuvent ??tre fix??es par voie r??glementaire et adapt??es au niveau r??gional',29,NULL,NULL,'FAMARITANA NY ALA',NULL,NULL,'Azo atao ny mametra amin???ny al??lan???ny didy aman-tsipika, ny farafahakelin???ny velaran-tany voatokana antonona ny isam-paritra.',NULL),(8,'1','DEFINITION DE LA FOR??T',NULL,NULL,NULL,NULL,NULL,NULL,'4','Ne sont pas consid??r??s comme for??ts: les cultures d???arbres et boisements plant??s sur un terrain non forestier; les jardins bois??s, les all??es et parcs urbains et les p??pini??res non situ??es sur des biens fonds forestiers; les cultures d\'arbres et boisements destin??s ?? une expLoi N?? 97/017tation ?? court terme, plant??s sur un terrain non forestier, annonc??s et enregistr??s comme tels aupr??s de l\'Administration foresti??re lors de leur ??tablissement. toute surface donnant des produits agricoles, sauf s\'il s\'agit de surface couverte d\'arbres ayant pouss?? naturellement, ou de reboisements; les p??turages, suivant la vocation des sols d??finie par la Loi N?? 97/017.',29,NULL,NULL,'FAMARITANA NY ALA',NULL,NULL,'Tsy heverina ho ala : ??? Ny voly hazo sy ny fambolen-java-maniry amin???ny tsy faritr???ala ;??? Ny zaridaina volena hazo, ny l??lana sy faritra iriariavana an-tan??n-dehibe ary ny ambolena zanakazo tsy tafiditra anatin???ny faritry ny ala ;??? Ny voly hazo sy ny fambolen-java-maniry ho trandrahina anatin???ny fotoana fohy, amin???ny tany tsy faritr???ala, nambara sy noraketina am-boky ho izany, tany amin???ny Fandraharahampanjakana momba ny ala fony izy ireny naorina ;??? Ny velaran-tany rehetra ahazoana vokatry ny fambolena, raha tsy hoe rakotr???hazo naniry ho azy na voavoly izy ireny ;??? Ny fanaovana kij??na firaofana, arakaraka ny anokanana ny tany voasoritry ny lal??na.',NULL),(9,'1','DEFINITION DE LA FOR??T',NULL,NULL,NULL,NULL,NULL,NULL,'5','La constatation de la nature foresti??re d\'un terrain rel??ve de la comp??tence d\'une commission foresti??re du lieu de situation du terrain et dont la composition et le mode de fonctionnement sont d??termin??s par d??cret',29,NULL,NULL,'FAMARITANA NY ALA',NULL,NULL,'Ny fizaham-pototra ny maha-faritr???ala ny tany dia tandrifim-pahefan???ny vaomiera iray momba ny ala eo amin???ny toerana misy ny tany ka didim-panjakana no mametra izay ho anisany sy ny fomba fampandehanana azy',NULL),(10,'1','DEFINITION DE LA FOR??T',NULL,NULL,NULL,NULL,NULL,NULL,'6','Les d??cisions de la commission sont susceptibles de recours devant la juridiction administrative qui pourra statuer sur tous les cas de litige',29,NULL,NULL,'FAMARITANA NY ALA',NULL,NULL,'Ny fanapahana ataon???ny vaomiera dia azo ampakarina eo anatrehan???antokom-pitsarana arapitondrana izay hanapaka ny amin???ny fifanolanana rehetra mitranga.',NULL),(11,'2','DU REGIME FORESTIER','1','DEFINITION',NULL,NULL,NULL,NULL,'7','Le r??gime forestier est l???ensemble des dispositions l??gislatives et r??glementaires ayant pour objet la protection et la bonne gestion durable des ressources foresti??res',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMARITANA',NULL,'Ny sata itantanana ny ala dia ny fitambaramben???ny fepetra soritan???ny didy aman-dal??na ary\nfitsipika mifototra amin???ny fiarovana sy ny fitantanana tsara sady maharitra ny loharanon-karen???ny\nala.',NULL),(12,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER',NULL,NULL,NULL,NULL,'8','Toute for??t peut ??tre soumise au r??gime forestier ou en ??tre distraite par d??cision de\nl???Administration apr??s avis de la commission foresti??re pr??vue ?? l???article 5 de la pr??sente loi.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN???IZANY',NULL,'Ny ala rehetra dia azo ampiharana ny sata itantanana ny ala na ahafahana amin???izany\namin???ny al??lan???ny fanapahana ataon???ny Fandraharaham-panjakana rehefa manome ny heviny ny\nvaomiera mikarakara ny ala voalazan???ny andininy faha ??? 5 amin???izao laharana izao.',NULL),(13,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au r??gime forestier',NULL,NULL,'9','Toute for??t soumise au r??gime forestier est r??gie par les r??gles de protection, de\ngestion et d\'exploitation d??finies par la pr??sente loi.\n\nTout investissement quel qu???en soit la nature qui pourra entra??ner la destruction des for??ts doit\navoir l???aval du Minist??re charg?? des for??ts et conform??ment aux dispositions de la loi M.E.C.I.E.\n(Mise en Compatibilit?? des Investissements sur l???Environnement).',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN???IZANY','Fampiharana ny sata itantanana ny ala','Ny ala rehetra ampiharana ny sata itantanana ny ala dia fehezin???ny fitsipika momba ny\nfiarovana, fitantanana ary fitrandrahana soritan???ireo lal??na ireo.',NULL),(14,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au r??gime forestier',NULL,NULL,'10','Les for??ts soumises au r??gime forestier sont inali??nables et imprescriptibles',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN???IZANY','Fampiharana ny sata itantanana ny ala','Ny ala iharan???ny sata itantanana ny ala dia tsy azo amidy sy tsy maty paik???andro ny\nfitompoana azy.',NULL),(15,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au r??gime forestier',NULL,NULL,'11','Les for??ts soumises au r??gime forestier b??n??ficient de divers avantages qui sont\nd??termin??s par voie r??glementaire.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN???IZANY','Fampiharana ny sata itantanana ny ala','Ny ala iharan???ny sata itantanana ny ala dia mahazo ny tombontsoa samihafa voafaritra\namin???ny al??lan???ny didy amam-pitsipika.',NULL),(16,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au r??gime forestier',NULL,NULL,'12','Sont notamment soumis au r??gime forestier, d??s l\'entr??e en vigueur de la pr??sente\nloi, compte tenu des dispositions particuli??res des Conventions internationales :\n\n??? les for??ts naturelles telles que les R??serves Naturelles Int??grales, Parcs Nationaux,\nR??serves Sp??ciales, For??ts Class??es, les For??ts domaniales, les R??serves Foresti??res ;\n??? les for??ts artificielles appartenant ?? des personnes publiques dont notamment les\nreboisements et p??rim??tres de reboisement ou de restauration des sols, les stations\nforesti??res;\n??? les for??ts et terrains ?? boiser qui font partie du domaine de l\'Etat ou sur lequel l\'Etat a\ndes droits de propri??t?? indivis ;\n??? les bois et for??ts susceptibles d\'am??nagement, d\'exploitation r??guli??re ou de\nreconstitution et les terrains ?? boiser appartenant aux Collectivit??s territoriales\nd??centralis??es, aux ??tablissements publics, aux ??tablissements d\'utilit?? publique, et ??\nd\'autres personnes morales publiques ou sur lesquels ces collectivit??s et personnes\nmorales ont des droits de propri??t?? indivis ;\n??? les bois, for??ts et terrains ?? boiser, propri??t?? d\'un groupement forestier constitu??s dans le\nbut de mener dans les r??gions c??ti??res une politique fonci??re de sauvegarde de l\'espace\nlittoral, de respect des sites naturels et de l\'??quilibre ??cologique ;\n??? les terrains rebois??s par l\'Etat en ex??cution de l???article 44 de la pr??sente loi ;\n??? les brise-vent plant??s sur des biens fonds agricoles ;\nLes plantations fruiti??res sur terrains non forestiers, telles les cocoteraies.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN???IZANY','Fampiharana ny sata itantanana ny ala','Iharan???ny sata itantanana ny ala indrindra, raha vantany vao manan-kery izao lal??na izao,\nka tandrovina ny fepetra manokana raketin???ny Fifanarahana iraisam-pirenena :\n??? Ny ala voajanahary toy ny tahirin-javaboahary tanteraka, ny valam-pirenena, ny faritra voaaro\nmanokana, ny ala voasokajy, ny ala amin???ny tanim-panjakana, ny faritra rakotr???ala voaaro ;\n??? Ny ala harin-t??nan???olona an???ny fikambanana mizaka ny zom-panjakana indrindra ny fambolen-\nkazo sy ny faritra fambolen-kazo na ny anajariana ny nofon-tany, ny toby fikarakarana ny ala ;\n??? Ny ala sy ny tany volena hazo izay anisan???ny harem-panjakana, na tany ananan???ny Fanjakana\nzom-pitompoana tsy zaraina ;\n??? Ny hazo sy ny ala mbola mety hojariana, trandrahana ara-dal??na na havaozina indray ary ny\ntany volena hazo an???ny Vondrom-bahoakam-paritra itsinjaram-pahefana, an???antokon-\ndraharaham-panjakana, an???antokon-draharaha fanasoavam-bahoaka ary an???ny fikambanana\nhafa mizaka ny zom-panjakana na izay ananan???ireo vondrona sy fikambanana ireny ny zom ???\npitompoana tsy zaraina ;\n??? Ny hazo, ny ala ary ny tany volena hazo an???ny vondrona mpikarakara ny ala najoro mba\nhahatontosana any amin???ny faritra amoron-dranomasina, fikojakojana ny toera-manintona\nvoajanahary ary ny fifandanjan???ny tontolo iainana ;\n??? Ny tany anaovan???ny Fanjakana fambolen-kazo, ho fanatanterahana ny andininy faha ??? 43\namin???izao lal??na izao ;\n??? Ny aro-rivotra atsatoka eny amin???ny tany fanaovan???asam-pambolena ;\n??? Ny fambolena hazo fihinam-boa amin???ny tsy faritr???ala, toy ny tany fambolena voanio.',NULL),(17,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au r??gime forestier',NULL,NULL,'13','Tout propri??taire de for??t peut demander la soumission de sa for??t au r??gime\nforestier.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN???IZANY','Fampiharana ny sata itantanana ny ala','Ny tompon???ala rehetra dia afaka mangataka ny fampiharana amin???ny alany, ny sata\nitantanana ny ala.',NULL),(18,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au r??gime forestier',NULL,NULL,'14','Les conditions et les modalit??s de soumission au r??gime, peuvent varier suivant\nque les for??ts consid??r??es appartiennent ?? l\'Etat, aux Collectivit??s Territoriales D??centralis??es,\naux Etablissements Publics, ou ?? des Personnes priv??es, physiques ou morales.\nDes d??crets fixeront, en tant que de besoin, les conditions et modalit??s pr??vues ?? l\'alin??a\npr??c??dent.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN???IZANY','Fampiharana ny sata itantanana ny ala','Ny fepetra sy ny fombafomba fampiharana ny sata itantanana ny ala dia mety hiovaova\narakaraky ny ala voakasika raha toa izany an???ny fanjakana, an???ny Vondrom-bahoakam-paritra\nitsinjaram-pahefana, an???antokon-draharaham-panjakana na an???olo-tsotra, isam-batan???olona na\nfikambanana mizaka ny zony.\nDidim-panjakana no hametra, raha ilaina, ny fepetra sy ny fombafomba arahina voalazan???ny an-\nd??lana etsy aloha.',NULL),(19,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au r??gime forestier',NULL,NULL,'15','Toute contestation relative ?? la soumission ou non au r??gime forestier rel??ve de la\ncomp??tence de la commission pr??vue ?? l\'article 5 de la pr??sente.\nLes modalit??s et conditions d???application du pr??sent article seront d??termin??s par voie\nr??glementaire.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN???IZANY','Fampiharana ny sata itantanana ny ala','Izay fifandirana rehetra mikasika ny fampiharana na tsia ny sata itantanana ny ala dia\ntandrifim-pahefan???ny vaomiera voalazan???ny andininy faha ??? 5 amin???izao lal??na izao.\nNy fombafomba sy ny fepetra fampiharana izao dia ho faritana amin???ny al??lan???ny didy amam-\npitsipika.',NULL),(20,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','1','Soumission au r??gime forestier',NULL,NULL,'16','La soumission au r??gime forestier est d??cid??e :\n1\npour les for??ts de l\'Etat, par le Ministre charg?? des for??ts apr??s avis de la Commission\npr??vue ?? l\'article 5 de la pr??sente loi ;\n2\npour les for??ts des Collectivit??s Territoriales D??centralis??es et des Etablissements\nPublics, par le repr??sentant r??gional du Minist??re charg?? des For??ts et apr??s avis de la\ncommission foresti??re pr??vue ?? l\'article 5 ci-dessus.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN???IZANY','Fampiharana ny sata itantanana ny ala','Ny mpanapaka momba ny fampiharana ny sata itantanana ny ala dia :\n1. Ny Minisitra miandraikitra ny Ala rehefa avy manome ny heviny ny vaomiera voalazan???ny\nandininy faha ???5 amin???izao lal??na izao, mikasika ny alam-panjakana ;\n2. Ny solontenam-paritry ny minisitera miandraikitra ny Ala rehefa avy manome ny heviny ny\nvaomiera mikarakara ny ala voalazan???ny andininy faha ??? 5 etsy ambony, mikasika ny ala an???ny\nVondrom-bahoakam-paritra itsinjaram-pahefana sy ny an???antokon-draharaham-panjakana.',NULL),(21,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','2','De la distraction du r??gime forestier',NULL,NULL,'17','Les for??ts des personnes publiques et des personnes priv??es peuvent faire l\'objet\nde distraction temporaire ou d??finitive du r??gime forestier.\nToutefois, les R??serves Naturelles Int??grales, les Parcs Nationaux, les R??serves Sp??ciales et les\nfor??ts class??es, dans le respect des conventions internationales ainsi que les terrains et\nsurfaces d??finis ?? l???article 2 ne sont pas susceptibles de distraction.\nPour les for??ts de l\'Etat, la distraction est d??cid??e par d??cret en Conseil de Gouvernement sur\nproposition du Ministre charg?? des for??ts.\nPour les for??ts des Collectivit??s Territoriales D??centralis??es et des Etablissements Publics,\nl\'autorisation de distraction est accord??e par le repr??sentant r??gional de l\'Administration\nForesti??re, sur demande du propri??taire, apr??s avis de la commission pr??vue ?? l\'article 5 de la\npr??sente loi.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN???IZANY','Ny amin???ny fanafahana tsy iharan???ny sata itantanana ny ala','Ny ala fananan???ny fikambanana mizaka ny zom-panjakana sy ny an???olon-tsotra dia azo\nafahana vonjimaika na tena raikitra ny sata itantanana ny ala.\nNa izany aza dia tsy ahazoana fanafahana tsy iharan???izany ny tahirin-java-boahary tanteraka, ny\nvalam-pirenena, ny faritra voaaro manokana ary ny ala voasokajy, ho fanajana ny fifanarahana\niraisam-pirenena ary koa ireo tany sy velaran-tany voafaritry ny andininy faha ??? 2.\nNy amin???ny alam-panjakana, ny fanafahana dia tapahina amin???ny al??lan???ny didim-panjakana eo am-\npivorian???ny Governemanta araka ny tolo-kevitra aroson???ny Minisitra miandraikitra ny Ala.\nMikasika ireo ala hafa, ny al??lana amin???ny fanafahana dia omen???ny solontenam-paritry ny\nfitantanana ny ala, araka ny fangatahana ataon???ny tompony, rehefa avy nanome ny heviny ny\nvaomiera voalazan???ny andininy faha ??? 5 amin???izao lal??na izao.\nIzany fanafahana izany dia tsy azo afindra ary omena amin???ny anaran???olon-tokana.',NULL),(22,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','2','De la distraction du r??gime forestier',NULL,NULL,'18','La demande d\'autorisation de distraction doit ??tre fond??e sur l\'ex??cution d\'un\nprogramme ??conomique et social d\'utilit?? publique.\nLa demande de distraction est instruite dans les m??mes conditions et suivant les m??mes\nproc??dures que la demande de soumission.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN???IZANY','Ny amin???ny fanafahana tsy iharan???ny sata itantanana ny ala','Ny fangatahana alal??na amin???ny fanafahana dia tsy mifototra amin???ny fanatanterahana ny\nfandaharan???asa fanasoavam-bahoaka ara-toekarena sy ara-tsosialy.\nNy famotopotorana fangatahana fanafahana dia anarahana fepetra sy paika mitovy ihany amin???ny\nfangatahana fampiharana ny sata.',NULL),(23,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','2','De la distraction du r??gime forestier',NULL,NULL,'19','La d??cision autorisant la distraction est prise dans les m??mes formes que pour la\nsoumission au r??gime forestier.\nElle est susceptible de recours par les m??mes personnes et dans les m??mes conditions que\npour la soumission au r??gime forestier.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN???IZANY','Ny amin???ny fanafahana tsy iharan???ny sata itantanana ny ala','Ny fanapahana anomezan-d??lana amin???ny fanafahana dia mitovy endrika ihany amin???ny\nfangatahana fampiharana ny sata itantanana ny ala.\nIzany dia mety hisy ny fampakaran-draharaha ataon???ireo olona ireo ihany sy araka ny fepetra mitovy\nihany amin???ny fampiharana ny sata itantanana ny ala.',NULL),(24,'2','DU REGIME FORESTIER','2','SOUMMISSION ET DISTRACTION AU REGIME FORESTIER','2','De la distraction du r??gime forestier',NULL,NULL,'20','Les for??ts ayant fait l\'objet de distraction du r??gime forestier peuvent r??int??grer ce\nr??gime dans les conditions et suivant les proc??dures pr??vues dans la Section 1, du chapitre II,\ndu titre II de la pr??sente loi.',29,NULL,NULL,'NY MOMBA NY SATA ITANTANANA NY ALA','FAMPIHARANA NY SATA ITANTANANA NY ALA\nSY NY FANAFAHANA AMIN???IZANY','Ny amin???ny fanafahana tsy iharan???ny sata itantanana ny ala','Ny ala voakasiky ny fanafahana tsy iharan???ny sata itantanana ny ala dia azo averin-ko\nvoafehin???io sata io araka ny fepetra sy ny paika arahina voalazan???ny sokajy I, toko I, lohateny II\namin???izao lal??na izao.',NULL),(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/ Rappel','Rappelant sa r??solution 55/61 du 4 d??cembre 2000, dans laquelle elle a cr????\nun comit?? sp??cial charg?? de n??gocier un instrument juridique international\nefficace contre la corruption et a pri?? le Secr??taire g??n??ral de charger un groupe\nd???experts intergouvernemental ?? composition non limit??e d???examiner la ques-\ntion du mandat de ce comit?? sp??cial et d?????laborer un projet de mandat pour les\nn??gociations, et sa r??solution 55/188 du 20 d??cembre 2000, dans laquelle elle\na invit?? le groupe intergouvernemental d???experts ?? composition non limit??e\ndevant ??tre convoqu?? conform??ment ?? la r??solution 55/61 ?? examiner la ques-\ntion du transfert ill??gal de fonds et du rapatriement desdits fonds dans les pays\nd???origine,',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/ Rappel','Rappelant sa r??solution 55/61 du 4 d??cembre 2000, dans laquelle elle a cr????\nun comit?? sp??cial charg?? de n??gocier un instrument juridique international\nefficace contre la corruption et a pri?? le Secr??taire g??n??ral de charger un groupe\nd???experts intergouvernemental ?? composition non limit??e d???examiner la ques-\ntion du mandat de ce comit?? sp??cial et d?????laborer un projet de mandat pour les\nn??gociations, et sa r??solution 55/188 du 20 d??cembre 2000, dans laquelle elle\na invit?? le groupe intergouvernemental d???experts ?? composition non limit??e\ndevant ??tre convoqu?? conform??ment ?? la r??solution 55/61 ?? examiner la ques-\ntion du transfert ill??gal de fonds et du rapatriement desdits fonds dans les pays\nd???origine,',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/ Rappel','Rappelant ??galement ses r??solutions 56/186 du 21 d??cembre 2001 et\n57/244 du 20 d??cembre 2002 concernant l???action pr??ventive et la lutte contre\nla corruption et le transfert de fonds d???origine illicite et la restitution desdits\nfonds aux pays d???origine,',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','Est autoris??e, la ratification de la Convention des Nations Unies\ncontre la corruption par Madagascar.',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2','La pr??sente Loi sera publi??e au Journal Officiel de la R??publique. Elle sera\nex??cut??e comme Loi de l\'Etat.',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  `pdf` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `infos_theme_id_foreign` (`theme_id`),
  KEY `infos_type_id_foreign` (`type_id`),
  CONSTRAINT `infos_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `infos_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos`
--

LOCK TABLES `infos` WRITE;
/*!40000 ALTER TABLE `infos` DISABLE KEYS */;
INSERT INTO `infos` VALUES (1,'CONVENTION DES NATIONS UNIES CONTRE LA CORRUPTION','C2004',1,1,NULL,NULL,NULL,'https://github.com/Hey-Mario/pdf-law/raw/main/Corruption%20et%20Engagement%20d%E2%80%99un%20repr%C3%A9sentant%20du%20gouvernement/CONVENTION%20C2004%20-%20CONVENTION%20DES%20NATIONS%20UNIES%20CONTRE%20LA%20CORRUPTION.pdf'),(2,'Autorisant la ratification de la Convention des Nations Unies-contre-la-corruption-','2004-017',1,2,NULL,'2022-12-18 04:41:34',NULL,'https://github.com/Hey-Mario/pdf-law/raw/main/Corruption%20et%20Engagement%20d%E2%80%99un%20repr%C3%A9sentant%20du%20gouvernement/LOI-2004-017-autorisant-la-ratification-de-la-Convention-des-Nations-Unies-contre-la-corruption-p.pdf'),(3,'Portant Statut G??n??ral des Fonctionnaires','2003-011',1,2,NULL,NULL,NULL,'https://github.com/Hey-Mario/pdf-law/raw/main/Corruption%20et%20Engagement%20d%E2%80%99un%20repr%C3%A9sentant%20du%20gouvernement/LOI%20n%C2%B0%202003-011%20Portant%20Statut%20G%C3%A9n%C3%A9ral%20des%20Fonctionnaires.pdf'),(4,'Portant Code de Conduite de la Police Nationale','24.4802012',2,3,NULL,'2022-12-18 05:24:30',NULL,NULL),(5,'Portant Code de d??ontologie des magistrats','2005-710',2,4,NULL,'2022-12-18 05:24:38',NULL,NULL),(6,'fixant les modalit??s et les conditions d???application de la LOI n?? 2015- 005','2017- 415',3,4,NULL,'2022-12-03 00:38:40',NULL,NULL),(7,'portant refonte du Code de Gestion des Aires Prot??g??es','2015-005',3,2,NULL,NULL,NULL,NULL),(18,'Portant mise en place des normes d???exploitation des bois ?? Madagascar',' 136732017',4,3,NULL,NULL,NULL,NULL),(19,'portant r??glementation des activit??s d???aquaculture','2016-1493',4,4,NULL,NULL,NULL,NULL),(20,'portant cr??ation de la cha??ne sp??ciale de lutte contre le trafic de bois de rose etou de bois d\'??b??ne et r??pression des infractions relatives aux bois de rose etou bois d\'??b??ne','2015-056',4,2,NULL,NULL,NULL,NULL),(21,'portant Charte de l???Environnement Malagasy actualis??e','2015-003',4,2,NULL,NULL,NULL,NULL),(22,'sur le commerce international des esp??ces de faune et de flore sauvages','2005-018',4,2,NULL,NULL,NULL,NULL),(23,'Fixant le r??gime des d??frichements et des feux de v??g??tation','60-127',4,5,NULL,NULL,NULL,NULL),(24,'sur la Lutte contre la Corruption','2016-020',5,2,NULL,NULL,NULL,NULL),(25,'CODE DE PROCEDURE PENALE',NULL,5,2,NULL,NULL,NULL,NULL),(26,'portant restructuration du BIANCO','2020-013',6,4,NULL,NULL,NULL,NULL),(27,'portant Code des March??s Publics','2016-055',6,2,NULL,NULL,NULL,NULL),(28,'RELATIVE AU RECOUVREMENT DES AVOIRS ILLICITES','2019-015',6,5,NULL,NULL,NULL,NULL),(29,'Portant r??vision de la L??gislation Foresti??re','97/017',4,2,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
INSERT INTO `themes` VALUES (1,'Corruption et Engagement d???un repr??sentant du gouvernement',NULL,NULL,NULL),(2,'D??ontologie et bonne conduite des agents publics',NULL,NULL,NULL),(3,'Faune',NULL,NULL,NULL),(4,'Flore',NULL,NULL,'Ala'),(5,'Organisation de la lutte contre la corruption',NULL,NULL,NULL),(6,'R??pression et principes',NULL,NULL,NULL);
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
INSERT INTO `types` VALUES (1,'Convention',NULL,NULL,NULL),(2,'Loi',NULL,NULL,'Lalana'),(3,'Arr??t??',NULL,NULL,NULL),(4,'Decret ',NULL,NULL,NULL),(5,'Ordonnance ',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@gmail.com',NULL,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,NULL);
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

-- Dump completed on 2022-12-18 13:25:08
