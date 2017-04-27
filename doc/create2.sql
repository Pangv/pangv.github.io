CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `aufgabe_102` AS
    SELECT 
        `auftrag`.`status` AS `status`,
        `kundengruppe`.`bezeichnung` AS `bezeichnung`,
        `kunde`.`kundennr` AS `kundennr`,
        `kunde`.`vorname` AS `vorname`,
        `kunde`.`nachname` AS `nachname`,
        `kunde`.`geschlecht` AS `geschlecht`,
        `kunde`.`geburtstag` AS `geburtstag`,
        `kunde`.`kundengrp` AS `kundengrp`,
        `kunde`.`standort` AS `standort`
    FROM
        ((`kunde`
        JOIN `kundengruppe` ON ((`kundengruppe`.`kundengruppe` = `kunde`.`kundengrp`)))
        JOIN `auftrag` ON ((`auftrag`.`kunde` = `kunde`.`kundennr`)))
    WHERE
        (`auftrag`.`status` = 'offen') 
    UNION SELECT 
        `auftrag`.`status` AS `status`,
        `kundengruppe`.`bezeichnung` AS `bezeichnung`,
        `kunde`.`kundennr` AS `kundennr`,
        `kunde`.`vorname` AS `vorname`,
        `kunde`.`nachname` AS `nachname`,
        `kunde`.`geschlecht` AS `geschlecht`,
        `kunde`.`geburtstag` AS `geburtstag`,
        `kunde`.`kundengrp` AS `kundengrp`,
        `kunde`.`standort` AS `standort`
    FROM
        ((`kunde`
        JOIN `kundengruppe` ON ((`kundengruppe`.`kundengruppe` = `kunde`.`kundengrp`)))
        JOIN `auftrag` ON ((`auftrag`.`kunde` = `kunde`.`kundennr`)))
    WHERE
        (`kundengruppe`.`bezeichnung` = 'C');

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `aufgabe_103` AS
    SELECT 
        `artikel`.`artikelnr` AS `artikel`,
        `lieferant`.`name` AS `lieferant`,
        `artikel`.`farbe` AS `farbe`,
        `artikel`.`preis` AS `preis`
    FROM
        (`artikel`
        JOIN `lieferant` ON ((`lieferant`.`lieferantennr` = `artikel`.`lieferant`)))
    WHERE
        (`artikel`.`lieferant` = 2) 
    UNION SELECT 
        `artikel`.`artikelnr` AS `artikel`,
        `lieferant`.`name` AS `lieferant`,
        `artikel`.`farbe` AS `farbe`,
        `artikel`.`preis` AS `preis`
    FROM
        (`artikel`
        JOIN `lieferant` ON ((`lieferant`.`lieferantennr` = `artikel`.`lieferant`)))
    WHERE
        (`artikel`.`farbe` = 'schwarz') 
    UNION SELECT 
        `artikel`.`artikelnr` AS `artikel`,
        `lieferant`.`name` AS `lieferant`,
        `artikel`.`farbe` AS `farbe`,
        `artikel`.`preis` AS `preis`
    FROM
        (`artikel`
        JOIN `lieferant` ON ((`lieferant`.`lieferantennr` = `artikel`.`lieferant`)))
    WHERE
        (`artikel`.`preis` > 40);

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `aufgabe_105` AS
    SELECT 
        `position`.`positionsmenge` AS `positionsmenge`,
        `position`.`einzelpreisrabatt` AS `einzelpreisrabatt`
    FROM
        (`position`
        JOIN `artikel` ON ((`position`.`artikel` = `artikel`.`artikelnr`)))
    WHERE
        ((`position`.`positionsmenge` > 2)
            AND `position`.`einzelpreisrabatt` IN (SELECT 
                `position`.`einzelpreisrabatt`
            FROM
                (`position`
                JOIN `artikel` ON ((`position`.`artikel` = `artikel`.`artikelnr`)))
            WHERE
                (`position`.`einzelpreisrabatt` >= 5)));

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `aufgabe_106` AS
    SELECT 
        `auftrag`.`auftragsnr` AS `auftragsnr`,
        `auftrag`.`auftragsdatum` AS `auftragsdatum`,
        `auftrag`.`liederdatum` AS `liederdatum`,
        `auftrag`.`status` AS `status`
    FROM
        (`auftrag`
        JOIN `mitarbeiter` ON ((`mitarbeiter`.`mitarbeiternr` = `auftrag`.`mitarbeiter`)))
    WHERE
        ((`mitarbeiter`.`nachname` = 'Graf')
            AND `auftrag`.`status` IN (SELECT 
                `auftrag`.`status`
            FROM
                (`auftrag`
                JOIN `mitarbeiter` ON ((`mitarbeiter`.`mitarbeiternr` = `auftrag`.`mitarbeiter`)))
            WHERE
                (`auftrag`.`status` = 'geliefert')));

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `aufgabe_108` AS
    SELECT 
        `abteilung`.`bezeichnung` AS `abteilungsbezeichnung`,
        `ort`.`stadt` AS `stadt`
    FROM
        ((((`abteilung`
        JOIN `mitarbeiter` ON ((`mitarbeiter`.`abteilung` = `abteilung`.`abteilungsnummer`)))
        JOIN `warenhaus` ON ((`warenhaus`.`warenhausnr` = `mitarbeiter`.`einsatzort`)))
        JOIN `standort` ON ((`standort`.`standortsnr` = `warenhaus`.`standort`)))
        JOIN `ort` ON ((`ort`.`plz` = `standort`.`ort`)))
    WHERE
        (NOT (`ort`.`stadt` IN (SELECT 
                `ort`.`stadt`
            FROM
                `ort`
            WHERE
                ((`ort`.`stadt` = 'Köln')
                    OR (`ort`.`stadt` = 'Berlin')))));

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `aufgabe_109` AS
    SELECT 
        `kunde`.`vorname` AS `vorname`,
        `kunde`.`nachname` AS `nachname`,
        `auftrag`.`auftragsnr` AS `auftragsnr`,
        `position`.`positionswert` AS `positionswert`
    FROM
        ((`kunde`
        JOIN `auftrag` ON ((`auftrag`.`kunde` = `kunde`.`kundennr`)))
        JOIN `position` ON ((`position`.`auftrag` = `auftrag`.`auftragsnr`)))
    WHERE
        ((`kunde`.`geschlecht` = 'm')
            AND (NOT (`position`.`positionswert` IN (SELECT 
                `position`.`positionswert`
            FROM
                `position`
            WHERE
                (`position`.`positionswert` < 150)))));

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `aufgabe_112` AS
    SELECT 
        `position`.`einzelpreis` AS `einzelpreis`,
        `position`.`positionswert` AS `positionswert`,
        `position`.`positionsmenge` AS `positionsmenge`
    FROM
        `position`
    WHERE
        (((`position`.`positionsmenge` > 3)
            AND (`position`.`positionswert` < 40))
            XOR (`position`.`einzelpreis` > 150));

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `aufgabe_111` AS
    SELECT 
        `auftrag`.`status` AS `status`,
        `auftrag`.`auftragsdatum` AS `auftragsdatum`
    FROM
        `auftrag`
    WHERE
        ((`auftrag`.`auftragsdatum` = '2012-10-05')
            XOR (`auftrag`.`status` = 'offen'));
