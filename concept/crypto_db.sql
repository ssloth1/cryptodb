CREATE TABLE Blockchain
(
  blockchainID INT NOT NULL,
  BuiltOn_blockchainID INT,
  name VARCHAR(255) NOT NULL,
  launch_date DATE NOT NULL,
  block_time INT,
  security_protocol VARCHAR(255),
  consensus_mechanism VARCHAR(255) NOT NULL,
  fork_date DATE,
  fork_type VARCHAR(255),
  PRIMARY KEY (blockchainID),
  FOREIGN KEY (BuiltOn_blockchainID) REFERENCES Blockchain(blockchainID)
);

CREATE TABLE Cryptocurrency
(
  cryptocurrencyID INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  symbol VARCHAR(255) NOT NULL,
  launch_date DATE NOT NULL,
  blockchainID INT NOT NULL,
  PRIMARY KEY (cryptocurrencyID),
  FOREIGN KEY (blockchainID) REFERENCES Blockchain(blockchainID)
);

CREATE TABLE Exchange
(
  exchangeID INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  fee_structure VARCHAR(255),
  location VARCHAR(255) NOT NULL,
  launch_date DATE NOT NULL,
  publically_traded VARCHAR(255) NOT NULL,
  PRIMARY KEY (exchangeID)
);

CREATE TABLE Market
(
  cryptocurrencyID INT NOT NULL,
  price_usd DECIMAL(15, 10) NOT NULL,
  market_cap DECIMAL(15, 2) NOT NULL,
  24hr_volume DECIMAL(15, 2) NOT NULL,
  24hr_change DECIMAL(15, 2) NOT NULL,
  all_time_high DECIMAL(15, 10) NOT NULL,
  all_time_low DECIMAL(15, 10) NOT NULL,
  circulating_supply DECIMAL(20,2) NOT NULL,
  last_updated DATE NOT NULL,
  PRIMARY KEY (cryptocurrencyID),
  FOREIGN KEY (cryptocurrencyID) REFERENCES Cryptocurrency(cryptocurrencyID)
);

CREATE TABLE Specification
(
  specificationID INT NOT NULL,
  cryptocurrencyID INT NOT NULL,
  algorithm VARCHAR(255),
  total_supply INT,
  max_supply INT,
  last_update DATE,
  PRIMARY KEY (specificationID),
  FOREIGN KEY (cryptocurrencyID) REFERENCES Cryptocurrency(cryptocurrencyID)
);

CREATE TABLE Community
(
  cryptocurrencyID INT NOT NULL,
  website VARCHAR(255),
  twitter VARCHAR(255),
  discord VARCHAR(255),
  reddit VARCHAR(255),
  whitepaper VARCHAR(255),
  is_open_source VARCHAR(255),
  repository_url VARCHAR(255),
  PRIMARY KEY (cryptocurrencyID),
  FOREIGN KEY (cryptocurrencyID) REFERENCES Cryptocurrency(cryptocurrencyID)
);

CREATE TABLE ListedOn
(
  cryptocurrencyID INT NOT NULL,
  exchangeID INT NOT NULL,
  PRIMARY KEY (cryptocurrencyID, exchangeID),
  FOREIGN KEY (cryptocurrencyID) REFERENCES Cryptocurrency(cryptocurrencyID),
  FOREIGN KEY (exchangeID) REFERENCES Exchange(exchangeID)
);

CREATE TABLE Cryptocurrency_founder
(
  cryptocurrencyID INT NOT NULL,
  founder VARCHAR(255) NOT NULL,
  PRIMARY KEY (founder, cryptocurrencyID),
  FOREIGN KEY (cryptocurrencyID) REFERENCES Cryptocurrency(cryptocurrencyID)
);

CREATE TABLE Regulatory
(
  country VARCHAR(255) NOT NULL,
  legal_status VARCHAR(255) NOT NULL
);