USE GHANA_PORT;
-- 1. CREATE THE PORT TABLE (Holds location info)
CREATE TABLE port_data (
    portid VARCHAR(50) NOT NULL,
    portname VARCHAR(255) NOT NULL,
    country VARCHAR(255),
    ISO3 VARCHAR(10),
    PRIMARY KEY (portid)
);

-- 2. CREATE THE IMPORT TABLE (Holds portcalls + import metrics)
CREATE TABLE ghana_import_data (
    import_id INT AUTO_INCREMENT,
    portid VARCHAR(50),
    `date` DATE,
    `year` INT,
    `month` VARCHAR(20),
    `day` INT,
    portcalls_container INT,
    portcalls_dry_bulk INT,
    portcalls_general_cargo INT,
    portcalls_roro INT,
    portcalls_tanker INT,
    portcalls_cargo INT,
    portcalls INT,
    import_container DOUBLE,
    import_dry_bulk DOUBLE,
    import_general_cargo DOUBLE,
    import_roro DOUBLE,
    import_tanker DOUBLE,
    import_cargo DOUBLE,
    `import` DOUBLE,
    PRIMARY KEY (import_id),
    FOREIGN KEY (portid) REFERENCES port_data(portid)
);

-- 3. CREATE THE EXPORT TABLE (Holds portcalls + export metrics)
CREATE TABLE ghana_export_data (
    export_id INT AUTO_INCREMENT,
    portid VARCHAR(50),
    `date` DATE,
    `year` INT,
    `month` VARCHAR(20),
    `day` INT,
    portcalls_container INT,
    portcalls_dry_bulk INT,
    portcalls_general_cargo INT,
    portcalls_roro INT,
    portcalls_tanker INT,
    portcalls_cargo INT,
    portcalls INT,
    export_container DOUBLE,
    export_dry_bulk DOUBLE,
    export_general_cargo DOUBLE,
    export_roro DOUBLE,
    export_tanker DOUBLE,
    export_cargo DOUBLE,
    `export` DOUBLE,
    PRIMARY KEY (export_id),
    FOREIGN KEY (portid) REFERENCES port_data(portid)
);


SELECT *
FROM port_data;

SELECT*
FROM ghana_export_data;

SELECT *
FROM ghana_import_data;

-- 1. POPULATE THE PORT TABLE (Extracts only unique ports)
INSERT INTO port_data (portid, portname, country, ISO3)
SELECT DISTINCT portid, portname, country, ISO3
FROM ghana_shipping_data
WHERE portid IS NOT NULL;

-- 2. POPULATE THE IMPORT TABLE
INSERT INTO ghana_import_data (
    portid, `date`, `year`, `month`, `day`, 
    portcalls_container, portcalls_dry_bulk, portcalls_general_cargo, 
    portcalls_roro, portcalls_tanker, portcalls_cargo, portcalls, 
    import_container, import_dry_bulk, import_general_cargo, 
    import_roro, import_tanker, import_cargo, `import`
)
SELECT 
    portid, `date`, `year`, `month`, `day`, 
    portcalls_container, portcalls_dry_bulk, portcalls_general_cargo, 
    portcalls_roro, portcalls_tanker, portcalls_cargo, portcalls, 
    import_container, import_dry_bulk, import_general_cargo, 
    import_roro, import_tanker, import_cargo, `import`
FROM ghana_shipping_data;

-- 3. POPULATE THE EXPORT TABLE
INSERT INTO ghana_export_data (
    portid, `date`, `year`, `month`, `day`, 
    portcalls_container, portcalls_dry_bulk, portcalls_general_cargo, 
    portcalls_roro, portcalls_tanker, portcalls_cargo, portcalls, 
    export_container, export_dry_bulk, export_general_cargo, 
    export_roro, export_tanker, export_cargo, `export`
)
SELECT 
    portid, `date`, `year`, `month`, `day`, 
    portcalls_container, portcalls_dry_bulk, portcalls_general_cargo, 
    portcalls_roro, portcalls_tanker, portcalls_cargo, portcalls, 
    export_container, export_dry_bulk, export_general_cargo, 
    export_roro, export_tanker, export_cargo, `export`
FROM ghana_shipping_data;




-- PORT_ACTIVITY (Fact table for Page 1: Traffic & Fleet Mix)
CREATE TABLE port_activity AS
SELECT 
    date,
    year,
    month,
    day,
    portid,
    portcalls,
    portcalls_container,
    portcalls_tanker,
    portcalls_dry_bulk,
    portcalls_general_cargo,
    portcalls_roro,
    portcalls_cargo
FROM ghana_shipping_data;
