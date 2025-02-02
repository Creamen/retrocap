PRAGMA foreign_keys = ON;

-- Constructeur
CREATE TABLE vendor(
  id   INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT UNIQUE NOT NULL
);

-- Console
CREATE TABLE console(
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  revision_id INTEGER,
  vendor_id   INTEGER,
  FOREIGN KEY (vendor_id) REFERENCES vendor(id),
  UNIQUE(id, revision_id)
);

-- Revision + Capacitors list
CREATE TABLE compoment(
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  console_id  INTEGER,
  type        CHECK ( type IN ( 'psu', 'mb', 'cd', 'misc' ) ),
  FOREIGN KEY (console_id) REFERENCES console(id)
);

-- Capacitors
CREATE TABLE capacitor(
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  cap_name    TEXT NOT NULL,
  cap_voltage TEXT NOT NULL,
  cap_farad   TEXT NOT NULL,
  cap_type    TEXT DEFAULT 'TH' CHECK ( cap_type IN ( 'TH', 'SMD' ) ),
  cap_comment TEXT,
  FOREIGN KEY (id) REFERENCES compoment(id)
);
