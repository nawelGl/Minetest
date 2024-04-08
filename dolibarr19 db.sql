-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 08 avr. 2024 à 20:42
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dolibarr19`
--

-- --------------------------------------------------------

--
-- Structure de la table `llx_c_action_trigger`
--

DROP TABLE IF EXISTS `llx_c_action_trigger`;
CREATE TABLE IF NOT EXISTS `llx_c_action_trigger` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `elementtype` varchar(64) NOT NULL,
  `code` varchar(128) NOT NULL,
  `contexts` varchar(255) DEFAULT NULL,
  `label` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `rang` int DEFAULT '0',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `uk_action_trigger_code` (`code`),
  KEY `idx_action_trigger_rang` (`rang`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `llx_c_action_trigger`
--

INSERT INTO `llx_c_action_trigger` (`rowid`, `elementtype`, `code`, `contexts`, `label`, `description`, `rang`) VALUES
(1, 'societe', 'COMPANY_CREATE', NULL, 'Third party created', 'Executed when a third party is created', 1),
(2, 'societe', 'COMPANY_MODIFY', NULL, 'Third party update', 'Executed when you update third party', 1),
(3, 'societe', 'COMPANY_SENTBYMAIL', NULL, 'Mails sent from third party card', 'Executed when you send email from third party card', 1),
(4, 'societe', 'COMPANY_DELETE', NULL, 'Third party deleted', 'Executed when you delete third party', 1),
(5, 'societe', 'COMPANY_RIB_CREATE', NULL, 'Third party payment information created', 'Executed when a third party payment information is created', 1),
(6, 'societe', 'COMPANY_RIB_MODIFY', NULL, 'Third party payment information updated', 'Executed when a third party payment information is updated', 1),
(7, 'societe', 'COMPANY_RIB_DELETE', NULL, 'Third party payment information deleted', 'Executed when a third party payment information is deleted', 1),
(8, 'propal', 'PROPAL_VALIDATE', NULL, 'Customer proposal validated', 'Executed when a commercial proposal is validated', 2),
(9, 'propal', 'PROPAL_MODIFY', NULL, 'Customer proposal modified', 'Executed when a customer proposal is modified', 2),
(10, 'propal', 'PROPAL_SENTBYMAIL', NULL, 'Commercial proposal sent by mail', 'Executed when a commercial proposal is sent by mail', 3),
(11, 'propal', 'PROPAL_CLOSE_SIGNED', NULL, 'Customer proposal closed signed', 'Executed when a customer proposal is closed signed', 2),
(12, 'propal', 'PROPAL_CLOSE_REFUSED', NULL, 'Customer proposal closed refused', 'Executed when a customer proposal is closed refused', 2),
(13, 'propal', 'PROPAL_CLASSIFY_BILLED', NULL, 'Customer proposal set billed', 'Executed when a customer proposal is set to billed', 2),
(14, 'propal', 'PROPAL_DELETE', NULL, 'Customer proposal deleted', 'Executed when a customer proposal is deleted', 2),
(15, 'commande', 'ORDER_VALIDATE', NULL, 'Customer order validate', 'Executed when a customer order is validated', 4),
(16, 'commande', 'ORDER_CLOSE', NULL, 'Customer order classify delivered', 'Executed when a customer order is set delivered', 5),
(17, 'commande', 'ORDER_MODIFY', NULL, 'Customer order modified', 'Executed when a customer order is set modified', 5),
(18, 'commande', 'ORDER_CLASSIFY_BILLED', NULL, 'Customer order classify billed', 'Executed when a customer order is set to billed', 5),
(19, 'commande', 'ORDER_CANCEL', NULL, 'Customer order canceled', 'Executed when a customer order is canceled', 5),
(20, 'commande', 'ORDER_SENTBYMAIL', NULL, 'Customer order sent by mail', 'Executed when a customer order is sent by mail ', 5),
(21, 'commande', 'ORDER_DELETE', NULL, 'Customer order deleted', 'Executed when a customer order is deleted', 5),
(22, 'facture', 'BILL_VALIDATE', NULL, 'Customer invoice validated', 'Executed when a customer invoice is approved', 6),
(23, 'facture', 'BILL_MODIFY', NULL, 'Customer invoice modified', 'Executed when a customer invoice is modified', 7),
(24, 'facture', 'BILL_PAYED', NULL, 'Customer invoice payed', 'Executed when a customer invoice is payed', 7),
(25, 'facture', 'BILL_CANCEL', NULL, 'Customer invoice canceled', 'Executed when a customer invoice is conceled', 8),
(26, 'facture', 'BILL_SENTBYMAIL', NULL, 'Customer invoice sent by mail', 'Executed when a customer invoice is sent by mail', 9),
(27, 'facture', 'BILL_UNVALIDATE', NULL, 'Customer invoice unvalidated', 'Executed when a customer invoice status set back to draft', 9),
(28, 'facture', 'BILL_DELETE', NULL, 'Customer invoice deleted', 'Executed when a customer invoice is deleted', 9),
(29, 'proposal_supplier', 'PROPOSAL_SUPPLIER_VALIDATE', NULL, 'Price request validated', 'Executed when a commercial proposal is validated', 10),
(30, 'proposal_supplier', 'PROPOSAL_SUPPLIER_MODIFY', NULL, 'Price request modified', 'Executed when a commercial proposal is modified', 10),
(31, 'proposal_supplier', 'PROPOSAL_SUPPLIER_SENTBYMAIL', NULL, 'Price request sent by mail', 'Executed when a commercial proposal is sent by mail', 10),
(32, 'proposal_supplier', 'PROPOSAL_SUPPLIER_CLOSE_SIGNED', NULL, 'Price request closed signed', 'Executed when a customer proposal is closed signed', 10),
(33, 'proposal_supplier', 'PROPOSAL_SUPPLIER_CLOSE_REFUSED', NULL, 'Price request closed refused', 'Executed when a customer proposal is closed refused', 10),
(34, 'proposal_supplier', 'PROPOSAL_SUPPLIER_DELETE', NULL, 'Price request deleted', 'Executed when a customer proposal delete', 10),
(35, 'order_supplier', 'ORDER_SUPPLIER_VALIDATE', NULL, 'Supplier order validated', 'Executed when a supplier order is validated', 12),
(36, 'order_supplier', 'ORDER_SUPPLIER_APPROVE', NULL, 'Supplier order request approved', 'Executed when a supplier order is approved', 13),
(37, 'order_supplier', 'ORDER_SUPPLIER_MODIFY', NULL, 'Supplier order request modified', 'Executed when a supplier order is modified', 13),
(38, 'order_supplier', 'ORDER_SUPPLIER_SUBMIT', NULL, 'Supplier order request submited', 'Executed when a supplier order is approved', 13),
(39, 'order_supplier', 'ORDER_SUPPLIER_RECEIVE', NULL, 'Supplier order request received', 'Executed when a supplier order is received', 13),
(40, 'order_supplier', 'ORDER_SUPPLIER_REFUSE', NULL, 'Supplier order request refused', 'Executed when a supplier order is refused', 13),
(41, 'order_supplier', 'ORDER_SUPPLIER_CANCEL', NULL, 'Supplier order request canceled', 'Executed when a supplier order is canceled', 13),
(42, 'order_supplier', 'ORDER_SUPPLIER_SENTBYMAIL', NULL, 'Supplier order sent by mail', 'Executed when a supplier order is sent by mail', 14),
(43, 'order_supplier', 'ORDER_SUPPLIER_CLASSIFY_BILLED', NULL, 'Supplier order set billed', 'Executed when a supplier order is set as billed', 14),
(44, 'order_supplier', 'ORDER_SUPPLIER_DELETE', NULL, 'Supplier order deleted', 'Executed when a supplier order is deleted', 14),
(45, 'invoice_supplier', 'BILL_SUPPLIER_VALIDATE', NULL, 'Supplier invoice validated', 'Executed when a supplier invoice is validated', 15),
(46, 'invoice_supplier', 'BILL_SUPPLIER_MODIFY', NULL, 'Supplier invoice modified', 'Executed when a supplier invoice is modified', 15),
(47, 'invoice_supplier', 'BILL_SUPPLIER_UNVALIDATE', NULL, 'Supplier invoice unvalidated', 'Executed when a supplier invoice status is set back to draft', 15),
(48, 'invoice_supplier', 'BILL_SUPPLIER_PAYED', NULL, 'Supplier invoice payed', 'Executed when a supplier invoice is payed', 16),
(49, 'invoice_supplier', 'BILL_SUPPLIER_SENTBYMAIL', NULL, 'Supplier invoice sent by mail', 'Executed when a supplier invoice is sent by mail', 17),
(50, 'invoice_supplier', 'BILL_SUPPLIER_CANCELED', NULL, 'Supplier invoice cancelled', 'Executed when a supplier invoice is cancelled', 17),
(51, 'invoice_supplier', 'BILL_SUPPLIER_DELETE', NULL, 'Supplier invoice deleted', 'Executed when a supplier invoice is deleted', 17),
(52, 'contrat', 'CONTRACT_VALIDATE', NULL, 'Contract validated', 'Executed when a contract is validated', 18),
(53, 'contrat', 'CONTRACT_MODIFY', NULL, 'Contract modified', 'Executed when a contract is modified', 18),
(54, 'contrat', 'CONTRACT_SENTBYMAIL', NULL, 'Contract sent by mail', 'Executed when a contract is sent by mail', 18),
(55, 'contrat', 'CONTRACT_DELETE', NULL, 'Contract deleted', 'Executed when a contract is deleted', 18),
(56, 'shipping', 'SHIPPING_VALIDATE', NULL, 'Shipping validated', 'Executed when a shipping is validated', 20),
(57, 'shipping', 'SHIPPING_MODIFY', NULL, 'Shipping modified', 'Executed when a shipping is modified', 20),
(58, 'shipping', 'SHIPPING_SENTBYMAIL', NULL, 'Shipping sent by mail', 'Executed when a shipping is sent by mail', 21),
(59, 'shipping', 'SHIPPING_DELETE', NULL, 'Shipping sent is deleted', 'Executed when a shipping is deleted', 21),
(60, 'reception', 'RECEPTION_VALIDATE', NULL, 'Reception validated', 'Executed when a reception is validated', 22),
(61, 'reception', 'RECEPTION_SENTBYMAIL', NULL, 'Reception sent by mail', 'Executed when a reception is sent by mail', 22),
(62, 'member', 'MEMBER_VALIDATE', NULL, 'Member validated', 'Executed when a member is validated', 22),
(63, 'member', 'MEMBER_MODIFY', NULL, 'Member modified', 'Executed when a member is modified', 23),
(64, 'member', 'MEMBER_SENTBYMAIL', NULL, 'Mails sent from member card', 'Executed when you send email from member card', 23),
(65, 'member', 'MEMBER_SUBSCRIPTION_CREATE', NULL, 'Member subscribtion recorded', 'Executed when a member subscribtion is deleted', 24),
(66, 'member', 'MEMBER_SUBSCRIPTION_MODIFY', NULL, 'Member subscribtion modified', 'Executed when a member subscribtion is modified', 24),
(67, 'member', 'MEMBER_SUBSCRIPTION_DELETE', NULL, 'Member subscribtion deleted', 'Executed when a member subscribtion is deleted', 24),
(68, 'member', 'MEMBER_RESILIATE', NULL, 'Member resiliated', 'Executed when a member is resiliated', 25),
(69, 'member', 'MEMBER_DELETE', NULL, 'Member deleted', 'Executed when a member is deleted', 26),
(70, 'member', 'MEMBER_EXCLUDE', NULL, 'Member excluded', 'Executed when a member is excluded', 27),
(71, 'ficheinter', 'FICHINTER_VALIDATE', NULL, 'Intervention validated', 'Executed when a intervention is validated', 30),
(72, 'ficheinter', 'FICHINTER_MODIFY', NULL, 'Intervention modify', 'Executed when a intervention is modify', 30),
(73, 'ficheinter', 'FICHINTER_CLASSIFY_BILLED', NULL, 'Intervention set billed', 'Executed when a intervention is set to billed (when option FICHINTER_CLASSIFY_BILLED is set)', 32),
(74, 'ficheinter', 'FICHINTER_CLASSIFY_UNBILLED', NULL, 'Intervention set unbilled', 'Executed when a intervention is set to unbilled (when option FICHINTER_CLASSIFY_BILLED is set)', 33),
(75, 'ficheinter', 'FICHINTER_REOPEN', NULL, 'Intervention opened', 'Executed when a intervention is re-opened', 34),
(76, 'ficheinter', 'FICHINTER_SENTBYMAIL', NULL, 'Intervention sent by mail', 'Executed when a intervention is sent by mail', 35),
(77, 'ficheinter', 'FICHINTER_DELETE', NULL, 'Intervention is deleted', 'Executed when a intervention is deleted', 35),
(78, 'ficheinter', 'FICHINTER_CLOSE', NULL, 'Intervention is done', 'Executed when a intervention is done', 36),
(79, 'product', 'PRODUCT_CREATE', NULL, 'Product or service created', 'Executed when a product or sevice is created', 40),
(80, 'product', 'PRODUCT_MODIFY', NULL, 'Product or service modified', 'Executed when a product or sevice is modified', 41),
(81, 'product', 'PRODUCT_DELETE', NULL, 'Product or service deleted', 'Executed when a product or sevice is deleted', 42),
(82, 'expensereport', 'EXPENSE_REPORT_CREATE', NULL, 'Expense report created', 'Executed when an expense report is created', 201),
(83, 'expensereport', 'EXPENSE_REPORT_VALIDATE', NULL, 'Expense report validated', 'Executed when an expense report is validated', 202),
(84, 'expensereport', 'EXPENSE_REPORT_MODIFY', NULL, 'Expense report modified', 'Executed when an expense report is modified', 202),
(85, 'expensereport', 'EXPENSE_REPORT_APPROVE', NULL, 'Expense report approved', 'Executed when an expense report is approved', 203),
(86, 'expensereport', 'EXPENSE_REPORT_PAID', NULL, 'Expense report billed', 'Executed when an expense report is set as billed', 204),
(87, 'expensereport', 'EXPENSE_REPORT_DELETE', NULL, 'Expense report deleted', 'Executed when an expense report is deleted', 205),
(88, 'project', 'PROJECT_CREATE', NULL, 'Project creation', 'Executed when a project is created', 140),
(89, 'project', 'PROJECT_VALIDATE', NULL, 'Project validation', 'Executed when a project is validated', 141),
(90, 'project', 'PROJECT_MODIFY', NULL, 'Project modified', 'Executed when a project is modified', 142),
(91, 'project', 'PROJECT_DELETE', NULL, 'Project deleted', 'Executed when a project is deleted', 143),
(92, 'project', 'PROJECT_SENTBYMAIL', NULL, 'Project sent by mail', 'Executed when a project is sent by email', 144),
(93, 'project', 'PROJECT_CLOSE', NULL, 'Project closed', 'Executed when a project is closed', 145),
(94, 'ticket', 'TICKET_CREATE', NULL, 'Ticket created', 'Executed when a ticket is created', 161),
(95, 'ticket', 'TICKET_MODIFY', NULL, 'Ticket modified', 'Executed when a ticket is modified', 163),
(96, 'ticket', 'TICKET_ASSIGNED', NULL, 'Ticket assigned', 'Executed when a ticket is modified', 164),
(97, 'ticket', 'TICKET_CLOSE', NULL, 'Ticket closed', 'Executed when a ticket is closed', 165),
(98, 'ticket', 'TICKET_SENTBYMAIL', NULL, 'Ticket message sent by email', 'Executed when a message is sent from the ticket record', 166),
(99, 'ticket', 'TICKET_DELETE', NULL, 'Ticket deleted', 'Executed when a ticket is deleted', 167),
(100, 'user', 'USER_SENTBYMAIL', NULL, 'Email sent', 'Executed when an email is sent from user card', 300),
(101, 'user', 'USER_CREATE', NULL, 'User created', 'Executed when a user is created', 301),
(102, 'user', 'USER_MODIFY', NULL, 'User update', 'Executed when a user is updated', 302),
(103, 'user', 'USER_DELETE', NULL, 'User update', 'Executed when a user is deleted', 303),
(104, 'user', 'USER_NEW_PASSWORD', NULL, 'User update', 'Executed when a user is change password', 304),
(105, 'user', 'USER_ENABLEDISABLE', NULL, 'User update', 'Executed when a user is enable or disable', 305),
(107, 'bom', 'BOM_VALIDATE', NULL, 'BOM validated', 'Executed when a BOM is validated', 650),
(108, 'bom', 'BOM_UNVALIDATE', NULL, 'BOM unvalidated', 'Executed when a BOM is unvalidated', 651),
(109, 'bom', 'BOM_CLOSE', NULL, 'BOM disabled', 'Executed when a BOM is disabled', 652),
(110, 'bom', 'BOM_REOPEN', NULL, 'BOM reopen', 'Executed when a BOM is re-open', 653),
(111, 'bom', 'BOM_DELETE', NULL, 'BOM deleted', 'Executed when a BOM deleted', 654),
(112, 'mrp', 'MRP_MO_VALIDATE', NULL, 'MO validated', 'Executed when a MO is validated', 660),
(113, 'mrp', 'MRP_MO_PRODUCED', NULL, 'MO produced', 'Executed when a MO is produced', 661),
(114, 'mrp', 'MRP_MO_DELETE', NULL, 'MO deleted', 'Executed when a MO is deleted', 662),
(115, 'mrp', 'MRP_MO_CANCEL', NULL, 'MO canceled', 'Executed when a MO is canceled', 663),
(116, 'contact', 'CONTACT_CREATE', NULL, 'Contact address created', 'Executed when a contact is created', 50),
(117, 'contact', 'CONTACT_MODIFY', NULL, 'Contact address update', 'Executed when a contact is updated', 51),
(118, 'contact', 'CONTACT_SENTBYMAIL', NULL, 'Mails sent from third party card', 'Executed when you send email from contact address record', 52),
(119, 'contact', 'CONTACT_DELETE', NULL, 'Contact address deleted', 'Executed when a contact is deleted', 53),
(120, 'recruitment', 'RECRUITMENTJOBPOSITION_CREATE', NULL, 'Job created', 'Executed when a job is created', 7500),
(121, 'recruitment', 'RECRUITMENTJOBPOSITION_MODIFY', NULL, 'Job modified', 'Executed when a job is modified', 7502),
(122, 'recruitment', 'RECRUITMENTJOBPOSITION_SENTBYMAIL', NULL, 'Mails sent from job record', 'Executed when you send email from job record', 7504),
(123, 'recruitment', 'RECRUITMENTJOBPOSITION_DELETE', NULL, 'Job deleted', 'Executed when a job is deleted', 7506),
(124, 'recruitment', 'RECRUITMENTCANDIDATURE_CREATE', NULL, 'Candidature created', 'Executed when a candidature is created', 7510),
(125, 'recruitment', 'RECRUITMENTCANDIDATURE_MODIFY', NULL, 'Candidature modified', 'Executed when a candidature is modified', 7512),
(126, 'recruitment', 'RECRUITMENTCANDIDATURE_SENTBYMAIL', NULL, 'Mails sent from candidature record', 'Executed when you send email from candidature record', 7514),
(127, 'recruitment', 'RECRUITMENTCANDIDATURE_DELETE', NULL, 'Candidature deleted', 'Executed when a candidature is deleted', 7516),
(128, 'project', 'TASK_CREATE', NULL, 'Task created', 'Executed when a project task is created', 150),
(129, 'project', 'TASK_MODIFY', NULL, 'Task modified', 'Executed when a project task is modified', 151),
(130, 'project', 'TASK_DELETE', NULL, 'Task deleted', 'Executed when a project task is deleted', 152),
(131, 'agenda', 'ACTION_CREATE', NULL, 'Action added', 'Executed when an action is added to the agenda', 700),
(132, 'holiday', 'HOLIDAY_CREATE', NULL, 'Holiday created', 'Executed when a holiday is created', 800),
(133, 'holiday', 'HOLIDAY_MODIFY', NULL, 'Holiday modified', 'Executed when a holiday is modified', 801),
(134, 'holiday', 'HOLIDAY_VALIDATE', NULL, 'Holiday validated', 'Executed when a holiday is validated', 802),
(135, 'holiday', 'HOLIDAY_APPROVE', NULL, 'Holiday approved', 'Executed when a holiday is aprouved', 803),
(136, 'holiday', 'HOLIDAY_CANCEL', NULL, 'Holiday canceled', 'Executed when a holiday is canceled', 802),
(137, 'holiday', 'HOLIDAY_DELETE', NULL, 'Holiday deleted', 'Executed when a holiday is deleted', 804),
(138, 'hrm', 'HRM_EVALUATION_CREATE', NULL, 'HR Evaluation created', 'Executed when an evaluation is created', 4000),
(139, 'hrm', 'HRM_EVALUATION_MODIFY', NULL, 'HR Evaluation modified', 'Executed when an evaluation is modified', 4001),
(140, 'hrm', 'HRM_EVALUATION_VALIDATE', NULL, 'HR Evaluation validated', 'Executed when an evaluation is validated', 4002),
(141, 'hrm', 'HRM_EVALUATION_UNVALIDATE', NULL, 'HR Evaluation back to draft', 'Executed when an evaluation is back to draft', 4003),
(142, 'hrm', 'HRM_EVALUATION_DELETE', NULL, 'HR Evaluation deleted', 'Executed when an evaluation is dleted', 4005),
(143, 'facturerec', 'BILLREC_CREATE', NULL, 'Template invoices created', 'Executed when a Template invoices is created', 900),
(144, 'facturerec', 'BILLREC_MODIFY', NULL, 'Template invoices update', 'Executed when a Template invoices is updated', 901),
(145, 'facturerec', 'BILLREC_DELETE', NULL, 'Template invoices deleted', 'Executed when a Template invoices is deleted', 902),
(146, 'partnership', 'PARTNERSHIP_CREATE', NULL, 'Partnership created', 'Executed when a partnership is created', 58000),
(147, 'partnership', 'PARTNERSHIP_MODIFY', NULL, 'Partnership modified', 'Executed when a partnership is modified', 58002),
(148, 'partnership', 'PARTNERSHIP_SENTBYMAIL', NULL, 'Mails sent from partnership file', 'Executed when you send email from partnership file', 58004),
(149, 'partnership', 'PARTNERSHIP_DELETE', NULL, 'Partnership deleted', 'Executed when a partnership is deleted', 58006);

-- --------------------------------------------------------

--
-- Structure de la table `llx_minetest_item`
--

DROP TABLE IF EXISTS `llx_minetest_item`;
CREATE TABLE IF NOT EXISTS `llx_minetest_item` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `nom_item` varchar(40) NOT NULL,
  `quantiteItem` int NOT NULL,
  `id_joueur` int NOT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_minetest_item_rowid` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `llx_minetest_item_extrafields`
--

DROP TABLE IF EXISTS `llx_minetest_item_extrafields`;
CREATE TABLE IF NOT EXISTS `llx_minetest_item_extrafields` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `tms` timestamp NULL DEFAULT NULL,
  `fk_object` int NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_item_fk_object` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `llx_minetest_joueur`
--

DROP TABLE IF EXISTS `llx_minetest_joueur`;
CREATE TABLE IF NOT EXISTS `llx_minetest_joueur` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `pseudo` text NOT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_minetest_joueur_rowid` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `llx_minetest_joueur_extrafields`
--

DROP TABLE IF EXISTS `llx_minetest_joueur_extrafields`;
CREATE TABLE IF NOT EXISTS `llx_minetest_joueur_extrafields` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `tms` timestamp NULL DEFAULT NULL,
  `fk_object` int NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_joueur_fk_object` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `llx_minetest_position`
--

DROP TABLE IF EXISTS `llx_minetest_position`;
CREATE TABLE IF NOT EXISTS `llx_minetest_position` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `pos_x` double NOT NULL,
  `pos_y` double NOT NULL,
  `pos_z` double NOT NULL,
  `id_joueur` int NOT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_minetest_position_rowid` (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `llx_minetest_position_extrafields`
--

DROP TABLE IF EXISTS `llx_minetest_position_extrafields`;
CREATE TABLE IF NOT EXISTS `llx_minetest_position_extrafields` (
  `rowid` int NOT NULL AUTO_INCREMENT,
  `tms` timestamp NULL DEFAULT NULL,
  `fk_object` int NOT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`rowid`),
  KEY `idx_position_fk_object` (`fk_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
