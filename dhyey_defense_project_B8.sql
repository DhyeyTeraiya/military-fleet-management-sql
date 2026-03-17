USE defense;

CREATE TABLE indian_army_fleet (
    vehicle_id VARCHAR(10) PRIMARY KEY,
    vehicle_type VARCHAR(50),
    model_name VARCHAR(50),
    status VARCHAR(20),
    sector_location VARCHAR(50),
    mission_type VARCHAR(50),
    last_maintenance DATE,
    fuel_level INT,
    crew_assigned INT,
    manufacturer VARCHAR(50)
);

-- Insert Real Indian Army Vehicle Data
INSERT INTO indian_army_fleet VALUES
-- Main Battle Tanks (Ajeya/T-72 upgrades)
('MBT-001', 'Main Battle Tank', 'Ajeya', 'Active', 'Rajasthan Sector', 'Border Patrol', '2025-10-20', 85, 4, 'DRDO/HAL'),
('MBT-002', 'Main Battle Tank', 'Ajeya', 'Active', 'Punjab Sector', 'Border Patrol', '2025-10-18', 92, 4, 'DRDO/HAL'),
('MBT-003', 'Main Battle Tank', 'Bhishma (T-90S)', 'Active', 'Himachal Sector', 'Border Patrol', '2025-10-22', 88, 4, 'Russian-Russian'),

-- Infantry Fighting Vehicles (Sarath - BMP-2 upgrade)
('IFV-001', 'Infantry Fighting Vehicle', 'Sarath', 'Active', 'Kashmir Sector', 'Counter-Insurgency', '2025-10-19', 78, 8, 'AVNI'),
('IFV-002', 'Infantry Fighting Vehicle', 'Sarath', 'Active', 'Northeast Sector', 'Counter-Insurgency', '2025-10-21', 82, 8, 'AVNI'),
('IFV-003', 'Infantry Fighting Vehicle', 'Sarath', 'Maintenance', 'Base Camp', 'Counter-Insurgency', '2025-10-05', 35, 0, 'AVNI'),

-- Armored Personnel Carriers (Kestrel 8x8)
('APC-001', 'Armored Personnel Carrier', 'Kestrel', 'Active', 'Punjab Sector', 'Border Patrol', '2025-10-23', 87, 10, 'Mahindra Defence'),
('APC-002', 'Armored Personnel Carrier', 'Kestrel', 'Active', 'Rajasthan Sector', 'Border Patrol', '2025-10-22', 90, 10, 'Mahindra Defence'),
('APC-003', 'Armored Personnel Carrier', 'Kestrel', 'Active', 'Gujarat Sector', 'Border Patrol', '2025-10-21', 85, 10, 'Mahindra Defence'),

-- Anti-Tank Guided Missile Carrier (NAMICA)
('ATGM-001', 'ATGM Carrier', 'NAMICA', 'Active', 'Rajasthan Sector', 'Anti-Tank', '2025-10-20', 80, 5, 'AVNI'),
('ATGM-002', 'ATGM Carrier', 'NAMICA', 'Repair', 'Maintenance Facility', 'Anti-Tank', '2025-09-15', 0, 0, 'AVNI'),

-- Light Support Vehicles (Tata Merlin/Safari Storme)
('LSV-001', 'Light Support Vehicle', 'Tata Merlin', 'Active', 'Himachal Sector', 'Reconnaissance', '2025-10-24', 76, 4, 'Tata Motors'),
('LSV-002', 'Light Support Vehicle', 'Tata Safari Storme', 'Active', 'Kashmir Sector', 'Reconnaissance', '2025-10-23', 88, 4, 'Tata Motors'),
('LSV-003', 'Light Support Vehicle', 'Tata Merlin', 'Maintenance', 'Base Camp', 'Reconnaissance', '2025-10-10', 25, 0, 'Tata Motors'),

-- Mine Protected Vehicles (MPVI)
('MPV-001', 'Mine Protected Vehicle', 'MPVI', 'Active', 'Northeast Sector', 'Counter-Insurgency', '2025-10-20', 72, 6, 'Mahindra & Mahindra'),
('MPV-002', 'Mine Protected Vehicle', 'MPVI', 'Active', 'Kashmir Sector', 'Counter-Insurgency', '2025-10-19', 79, 6, 'Mahindra & Mahindra'),

-- Transport Trucks (Heavy Motor Vehicles)
('TRK-001', 'Heavy Transport Truck', 'Tata 6x6', 'Active', 'Rajasthan Sector', 'Supply Chain', '2025-10-22', 75, 2, 'Tata Motors'),
('TRK-002', 'Heavy Transport Truck', 'Ashok Leyland', 'Active', 'Punjab Sector', 'Supply Chain', '2025-10-21', 81, 2, 'Ashok Leyland'),

-- Specialty Vehicles
('SPL-001', 'Armored Recovery Vehicle', 'VBPR', 'Active', 'Base Camp', 'Engineering', '2025-10-18', 70, 3, 'DRDO'),
('SPL-002', 'Bridge Launcher', 'Armored Bridge', 'Maintenance', 'Maintenance Facility', 'Engineering', '2025-09-25', 0, 0, 'DRDO'),

-- Additional Main Battle Tanks
('MBT-004', 'Main Battle Tank', 'Ajeya', 'Active', 'Jammu Sector', 'Border Patrol', '2025-10-17', 89, 4, 'DRDO/HAL'),
('MBT-005', 'Main Battle Tank', 'Bhishma (T-90S)', 'Active', 'Siachen Sector', 'Border Patrol', '2025-10-16', 91, 4, 'Russian-Russian'),
('MBT-006', 'Main Battle Tank', 'Ajeya', 'Maintenance', 'Base Camp', 'Border Patrol', '2025-10-01', 40, 0, 'DRDO/HAL'),
('MBT-007', 'Main Battle Tank', 'Bhishma (T-90S)', 'Active', 'Ladakh Sector', 'Border Patrol', '2025-10-19', 84, 4, 'Russian-Russian'),
('MBT-008', 'Main Battle Tank', 'Ajeya', 'Repair', 'Maintenance Facility', 'Border Patrol', '2025-09-20', 0, 0, 'DRDO/HAL'),

-- Additional Infantry Fighting Vehicles
('IFV-004', 'Infantry Fighting Vehicle', 'Sarath', 'Active', 'Arunachal Sector', 'Counter-Insurgency', '2025-10-20', 80, 8, 'AVNI'),
('IFV-005', 'Infantry Fighting Vehicle', 'Sarath', 'Active', 'Tripura Sector', 'Counter-Insurgency', '2025-10-18', 77, 8, 'AVNI'),
('IFV-006', 'Infantry Fighting Vehicle', 'Sarath', 'Active', 'Mizoram Sector', 'Counter-Insurgency', '2025-10-21', 83, 8, 'AVNI'),
('IFV-007', 'Infantry Fighting Vehicle', 'Sarath', 'Maintenance', 'Base Camp', 'Counter-Insurgency', '2025-10-08', 32, 0, 'AVNI'),
('IFV-008', 'Infantry Fighting Vehicle', 'Sarath', 'Repair', 'Maintenance Facility', 'Counter-Insurgency', '2025-09-18', 0, 0, 'AVNI'),

-- Additional Armored Personnel Carriers
('APC-004', 'Armored Personnel Carrier', 'Kestrel', 'Active', 'Uttar Pradesh Sector', 'Border Patrol', '2025-10-20', 86, 10, 'Mahindra Defence'),
('APC-005', 'Armored Personnel Carrier', 'Kestrel', 'Active', 'Bihar Sector', 'Border Patrol', '2025-10-19', 89, 10, 'Mahindra Defence'),
('APC-006', 'Armored Personnel Carrier', 'Kestrel', 'Maintenance', 'Base Camp', 'Border Patrol', '2025-10-06', 28, 0, 'Mahindra Defence'),
('APC-007', 'Armored Personnel Carrier', 'Kestrel', 'Active', 'Assam Sector', 'Border Patrol', '2025-10-22', 91, 10, 'Mahindra Defence'),
('APC-008', 'Armored Personnel Carrier', 'Kestrel', 'Active', 'Meghalaya Sector', 'Border Patrol', '2025-10-21', 84, 10, 'Mahindra Defence'),

-- Additional ATGM Carriers
('ATGM-003', 'ATGM Carrier', 'NAMICA', 'Active', 'Punjab Sector', 'Anti-Tank', '2025-10-19', 78, 5, 'AVNI'),
('ATGM-004', 'ATGM Carrier', 'NAMICA', 'Active', 'Himachal Sector', 'Anti-Tank', '2025-10-18', 82, 5, 'AVNI'),
('ATGM-005', 'ATGM Carrier', 'NAMICA', 'Maintenance', 'Base Camp', 'Anti-Tank', '2025-10-09', 30, 0, 'AVNI'),

-- Additional Light Support Vehicles
('LSV-004', 'Light Support Vehicle', 'Tata Merlin', 'Active', 'Uttarakhand Sector', 'Reconnaissance', '2025-10-22', 81, 4, 'Tata Motors'),
('LSV-005', 'Light Support Vehicle', 'Tata Safari Storme', 'Active', 'Ladakh Sector', 'Reconnaissance', '2025-10-21', 79, 4, 'Tata Motors'),
('LSV-006', 'Light Support Vehicle', 'Tata Merlin', 'Active', 'Sikkim Sector', 'Reconnaissance', '2025-10-20', 85, 4, 'Tata Motors'),
('LSV-007', 'Light Support Vehicle', 'Tata Safari Storme', 'Active', 'Nagaland Sector', 'Reconnaissance', '2025-10-19', 72, 4, 'Tata Motors'),
('LSV-008', 'Light Support Vehicle', 'Tata Merlin', 'Repair', 'Maintenance Facility', 'Reconnaissance', '2025-09-22', 0, 0, 'Tata Motors'),

-- Additional Mine Protected Vehicles
('MPV-003', 'Mine Protected Vehicle', 'MPVI', 'Active', 'Manipur Sector', 'Counter-Insurgency', '2025-10-18', 75, 6, 'Mahindra & Mahindra'),
('MPV-004', 'Mine Protected Vehicle', 'MPVI', 'Active', 'West Bengal Sector', 'Counter-Insurgency', '2025-10-17', 68, 6, 'Mahindra & Mahindra'),
('MPV-005', 'Mine Protected Vehicle', 'MPVI', 'Active', 'Odisha Sector', 'Counter-Insurgency', '2025-10-21', 81, 6, 'Mahindra & Mahindra'),
('MPV-006', 'Mine Protected Vehicle', 'MPVI', 'Maintenance', 'Base Camp', 'Counter-Insurgency', '2025-10-07', 20, 0, 'Mahindra & Mahindra'),

-- Additional Transport Trucks
('TRK-003', 'Heavy Transport Truck', 'Tata 6x6', 'Active', 'Gujarat Sector', 'Supply Chain', '2025-10-20', 77, 2, 'Tata Motors'),
('TRK-004', 'Heavy Transport Truck', 'Ashok Leyland', 'Active', 'Himachal Sector', 'Supply Chain', '2025-10-19', 83, 2, 'Ashok Leyland'),
('TRK-005', 'Heavy Transport Truck', 'Tata 6x6', 'Active', 'Ladakh Sector', 'Supply Chain', '2025-10-22', 73, 2, 'Tata Motors'),
('TRK-006', 'Heavy Transport Truck', 'Ashok Leyland', 'Maintenance', 'Base Camp', 'Supply Chain', '2025-10-11', 25, 0, 'Ashok Leyland'),
('TRK-007', 'Heavy Transport Truck', 'Tata 6x6', 'Active', 'Kashmir Sector', 'Supply Chain', '2025-10-21', 79, 2, 'Tata Motors'),

-- Additional Specialty Vehicles
('SPL-003', 'Armored Recovery Vehicle', 'VBPR', 'Active', 'Rajasthan Sector', 'Engineering', '2025-10-17', 68, 3, 'DRDO'),
('SPL-004', 'Bridge Launcher', 'Armored Bridge', 'Active', 'Punjab Sector', 'Engineering', '2025-10-16', 65, 2, 'DRDO'),
('SPL-005', 'Armored Recovery Vehicle', 'VBPR', 'Maintenance', 'Maintenance Facility', 'Engineering', '2025-10-02', 0, 0, 'DRDO'),
('SPL-006', 'Bridge Launcher', 'Armored Bridge', 'Active', 'Jammu Sector', 'Engineering', '2025-10-20', 72, 2, 'DRDO'),
('SPL-007', 'Command Vehicle', 'Mobile CP', 'Active', 'Base Camp', 'Command Center', '2025-10-19', 82, 5, 'AVNI'),
('SPL-008', 'Command Vehicle', 'Mobile CP', 'Active', 'Rajasthan Sector', 'Command Center', '2025-10-18', 78, 5, 'AVNI'),
('SPL-009', 'NBC Detection Vehicle', 'NBCV', 'Active', 'Punjab Sector', 'CBRN', '2025-10-21', 76, 3, 'DRDO'),
('SPL-010', 'NBC Detection Vehicle', 'NBCV', 'Active', 'Kashmir Sector', 'CBRN', '2025-10-20', 81, 3, 'DRDO'),

-- Additional Counter-Insurgency Vehicles
('CI-001', 'Rapid Action Vehicle', 'Mahindra Bolero Pik-Up', 'Active', 'Northeast Sector', 'Counter-Insurgency', '2025-10-22', 87, 6, 'Mahindra Defence'),
('CI-002', 'Rapid Action Vehicle', 'Mahindra Bolero Pik-Up', 'Active', 'Kashmir Sector', 'Counter-Insurgency', '2025-10-21', 85, 6, 'Mahindra Defence'),
('CI-003', 'Rapid Action Vehicle', 'Mahindra Bolero Pik-Up', 'Active', 'Central Region', 'Counter-Insurgency', '2025-10-20', 88, 6, 'Mahindra Defence'),
('CI-004', 'Rapid Action Vehicle', 'Mahindra Bolero Pik-Up', 'Maintenance', 'Base Camp', 'Counter-Insurgency', '2025-10-12', 35, 0, 'Mahindra Defence'),

-- Additional Reconnaissance Vehicles
('REC-001', 'Surveillance Vehicle', 'Tata Sumo Gold', 'Active', 'Rajasthan Sector', 'Reconnaissance', '2025-10-23', 84, 4, 'Tata Motors'),
('REC-002', 'Surveillance Vehicle', 'Tata Sumo Gold', 'Active', 'Punjab Sector', 'Reconnaissance', '2025-10-22', 89, 4, 'Tata Motors'),
('REC-003', 'Surveillance Vehicle', 'Tata Sumo Gold', 'Active', 'Gujarat Sector', 'Reconnaissance', '2025-10-21', 80, 4, 'Tata Motors'),
('REC-004', 'Surveillance Vehicle', 'Tata Sumo Gold', 'Maintenance', 'Base Camp', 'Reconnaissance', '2025-10-14', 38, 0, 'Tata Motors'),

-- Armored Ambulances
('AMB-001', 'Armored Ambulance', 'Medical APC', 'Active', 'Rajasthan Sector', 'Medical Support', '2025-10-20', 75, 3, 'Mahindra Defence'),
('AMB-002', 'Armored Ambulance', 'Medical APC', 'Active', 'Kashmir Sector', 'Medical Support', '2025-10-19', 79, 3, 'Mahindra Defence'),
('AMB-003', 'Armored Ambulance', 'Medical APC', 'Active', 'Northeast Sector', 'Medical Support', '2025-10-18', 73, 3, 'Mahindra Defence');

-- Query 1: Identify All Active Combat Vehicles for Border Patrol
SELECT vehicle_id, vehicle_type, model_name, status, sector_location
FROM indian_army_fleet
WHERE status = 'Active'
AND mission_type = 'Border Patrol'
ORDER BY sector_location;


-- Query 2: Fleet Readiness by Vehicle Type
SELECT vehicle_type, COUNT(*) as total_vehicles,
       SUM(CASE WHEN status = 'Active' THEN 1 ELSE 0 END) as active_count,
       SUM(CASE WHEN status = 'Maintenance' THEN 1 ELSE 0 END) as maintenance_count,
       SUM(CASE WHEN status = 'Repair' THEN 1 ELSE 0 END) as repair_count,
       SUM(CASE WHEN status = 'Inactive' THEN 1 ELSE 0 END) as inactive_count
FROM indian_army_fleet
GROUP BY vehicle_type
ORDER BY total_vehicles DESC;

-- Query 3: Sector-wise Deployment & Resources
SELECT sector_location, vehicle_type, COUNT(*) as vehicles_deployed,
       ROUND(AVG(fuel_level), 2) as avg_fuel_level,
       SUM(crew_assigned) as total_crew_strength,
       MIN(fuel_level) as min_fuel_alert
FROM indian_army_fleet
WHERE status = 'Active'
GROUP BY sector_location, vehicle_type
ORDER BY sector_location;

-- Query 4: Critical Fuel Alert - Vehicles needing resupply
SELECT vehicle_id, vehicle_type, model_name, sector_location, fuel_level, crew_assigned
FROM indian_army_fleet
WHERE status = 'Active'
AND fuel_level < 50
ORDER BY fuel_level ASC;

-- Query 5: Maintenance Status Report
SELECT vehicle_type, model_name, COUNT(*) as units_in_maintenance,
       MAX(last_maintenance) as latest_maintenance_date
FROM indian_army_fleet
WHERE status IN ('Maintenance', 'Repair')
GROUP BY vehicle_type, model_name
ORDER BY vehicle_type;

-- Query 6: Manufacturer Performance Overview
SELECT manufacturer, COUNT(*) as total_units,
       SUM(CASE WHEN status = 'Active' THEN 1 ELSE 0 END) as operational,
       ROUND(100.0 * SUM(CASE WHEN status = 'Active' THEN 1 ELSE 0 END) / COUNT(*), 2) as operational_percentage
FROM indian_army_fleet
GROUP BY manufacturer
ORDER BY operational_percentage DESC;