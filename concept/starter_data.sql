-- Inserting into Blockchain
INSERT INTO Blockchain (blockchainID, name, launch_date, block_time, consensus_mechanism, fork_date, fork_type, BuiltOn_blockchainID) 
VALUES 
(1, 'Bitcoin', '2009-01-03', 10, 'Proof of Work', '2009-01-03', NULL, NULL),
(2, 'Ethereum', '2015-07-30', 15, 'Proof of Stake', '2015-07-30', NULL, NULL),
(3, 'XRP Ledger', '2012-08-02', 4, 'Consensus', NULL, NULL, NULL),
(4, 'Litecoin', '2011-10-13', 2.5, 'Proof of Work', '2011-10-01', 'hard', 1),
(5, 'BNB Smart Chain', '2019-02-01', 3, 'Proof of Stakes Authority' , NULL, NULL, NULL),
(6, 'Solana', '2020-03-24', 0.4, 'Proof of History', NULL, NULL, NULL),
(7, 'Cardano', '2017-09-29', 20, 'Proof of Stake', NULL, NULL, NULL),
(8, 'Dogecoin', '2013-12-06', 60, 'Proof of Work', '2013-12-06', 'hard', 4),
(9, 'Chainlink', '2017-09-19', 15, 'Proof of Stake', '2017-01-01', 'hard', 2),
(10, 'Polygon', '2020-04-26', 2, 'Proof of Stake', '2020-06-01', 'hard', 2),
(11, 'Shiba Inu', '2020-08-01', 5, 'Proof of Stake', '2020-08-01', 'hard', 8);

-- Inserting into Cryptocurrency
INSERT INTO Cryptocurrency (cryptocurrencyID, name, symbol, launch_date, blockchainID) 
VALUES 
(1, 'Bitcoin', 'BTC', '2009-01-03', 1),
(2, 'Ether', 'ETH', '2015-07-30', 2),
(3, 'Ripple', 'XRP', '2012-08-02', 3),
(4, 'Litecoin', 'LTC', '2011-10-13', 4),
(5, 'Binance Coin', 'BNB', '2019-04-18', 5),
(6, 'Solana', 'SOL', '2020-03-24', 6),
(7, 'Cardano', 'ADA', '2017-09-29',  7),
(8, 'Dogecoin', 'DOGE', '2013-12-06', 8),
(9, 'Chainlink', 'LINK', '2017-09-19', 9),
(10, 'Polygon', 'MATIC', '2019-04-26', 10),
(11, 'Shiba Inu', 'SHIB', '2020-08-01', 11);

-- Inserting into Exchange
INSERT INTO Exchange (exchangeID, name, fee_structure, location, launch_date, publically_traded) 
VALUES 
(1, 'Coinbase', 'percentage', 'USA', '2012-06-01', 'Yes'),
(2, 'Binance', 'percentage', 'Cayman Islands', '2017-06-01', 'No'),
(3, 'Kraken', 'percentage', 'USA', '2011-07-28', 'No'),
(4, 'Bitfinex', 'percentage', 'British Virgin Islands', '2012-10-11', 'No'),
(5, 'Crypto.com', 'percentage', 'Singapore', '2016-06-01', 'No'),
(6, 'Gemini', 'percentage', 'USA', '2014-06-01', 'No');

-- Intert into Market
INSERT INTO Market (cryptocurrencyID, price_usd, market_cap, 24hr_volume, 24hr_change, all_time_high, all_time_low, circulating_supply, last_updated)
VALUES
(1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),  -- Bitcoin
(2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),  -- Ethereum
(3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),  -- Ripple
(4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),  -- Litecoin
(5, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),  -- Binance Coin
(6, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),  -- Solana
(7, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),  -- Cardano
(8, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),  -- Dogecoin
(9, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),  -- Chainlink
(10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()), -- Polygon
(11, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()); -- Shiba Inu

-- Inserting into Regulatory
INSERT INTO Regulatory (country, legal_status) 
VALUES 
('USA', 'Legal'),
('Japan', 'Legal'),
('China', 'Illegal'),
('United Kingdom', 'Legal'),
('India', 'Regulated'),
('Australia', 'Legal'),
('Russia', 'Restricted');

-- Inserting into Specification
INSERT INTO Specification (specificationID, cryptocurrencyID, algorithm, total_supply, max_supply, last_update) 
VALUES 
(1, 1, 'SHA-256', 0, 0, '2023-11-12'),                             -- Bitcoin
(2, 2, 'Ethash', 0, 0, '2023-11-12'),                              -- Ether
(3, 3, 'Ripple Protocol Consensus Algorithm', 0, 0, '2023-11-12'), -- Ripple
(4, 4, 'Scrypt', 0, 0, '2023-11-12'),                              -- Litecoin
(5, 5, 'BEP-2', 0, 0, '2023-11-12'),                               -- Binance Coin
(6, 6, 'Proof of History', 0, 0, '2023-11-12'),                    -- Solana
(7, 7, 'Ouroboros', 0, 0, '2023-11-12'),                           -- Cardano
(8, 8, 'Scrypt', 0, 0, '2023-11-12'),                              -- Dogecoin
(9, 9, 'Ethereum based', 0, 0, '2023-11-12'),                      -- Chainlink
(10, 10, 'Ethereum based', 0, 0, '2023-11-12'),                    -- Polygon
(11, 11, 'Ethereum based', 0, 0, '2023-11-12');                    -- Shiba Inu

-- Inserting into Community
INSERT INTO Community (cryptocurrencyID, website, twitter, discord, reddit, whitepaper, is_open_source, repository_url) 
VALUES 
(1, 'https://bitcoin.org/', 'https://twitter.com/Bitcoin/', NULL, NULL,'https://bitcoin.org/bitcoin.pdf', 'true', 'https://github.com/bitcoin'),
(2, 'https://ethereum.org/', 'https://twitter.com/ethereum/', 'https://discord.com/invite/CetY6Y4', 'https://www.reddit.com/r/ethereum', 'https://ethereum.org/en/whitepaper/', 'true', 'https://github.com/ethereum'),
(3, 'https://www.ripple.com/', 'https://twitter.com/Ripple', NULL, NULL, 'https://www.ripple.com/files/ripple_consensus_whitepaper.pdf', 'true', 'https://github.com/ripple'),
(4, 'https://litecoin.org/', 'https://twitter.com/LTCFoundation', NULL, 'https://www.reddit.com/r/litecoin', 'https://litecoin.org/', 'true', 'https://github.com/litecoin-project/litecoin'),
(5, 'https://www.binance.com/', 'https://twitter.com/binance', NULL, NULL, 'https://www.binance.com/en/bnb', 'true', 'https://github.com/binance-exchange'),
(6, 'https://solana.com/', 'https://twitter.com/solana', NULL, 'https://www.reddit.com/r/solana', 'https://solana.com/solana-whitepaper.pdf', 'true', 'https://github.com/solana-labs'),
(7, 'https://cardano.org/', 'https://twitter.com/cardano', NULL, 'https://www.reddit.com/r/cardano', 'https://docs.cardano.org/en/latest/', 'true', 'https://github.com/input-output-hk'),
(8, 'https://dogecoin.com/', 'https://twitter.com/dogecoin', NULL, 'https://www.reddit.com/r/dogecoin', 'https://foundation.dogecoin.com/about/', 'true', 'https://github.com/dogecoin'),
(9, 'https://chain.link/', 'https://twitter.com/chainlink', NULL, 'https://www.reddit.com/r/chainlink', 'https://research.chain.link/whitepaper-v2.pdf', 'true', 'https://github.com/smartcontractkit'),
(10, 'https://polygon.technology/', 'https://twitter.com/0xPolygon', 'https://discord.com/invite/XvpHAxZ', 'https://www.reddit.com/r/maticnetwork', 'https://polygon.technology/papers/pol-whitepaper', 'true', 'https://github.com/maticnetwork'),
(11, 'https://shibatoken.com/', 'https://twitter.com/shibainucoin', 'https://discord.com/invite/shibatoken', 'https://www.reddit.com/r/SHIBArmy', 'https://uploads-ssl.webflow.com/6424006598e25f12a6360e93/6425c40b662f5690cb62e831_Ryoshi_Article.pdf', 'true', 'https://github.com/shibaswaparmy');

-- Inserting into ListedOn
INSERT INTO ListedOn (cryptocurrencyID, exchangeID) 
VALUES 
-- Bitcoin
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6),
-- Ether
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6),
-- Ripple
(3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6),
-- Litecoin
(4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6),
-- Binance Coin
(5, 2),
-- Solana
(6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6),
-- Cardano
(7, 1), (7, 2), (7, 3), (7, 4), (7, 5),
-- Dogecoin
(8, 1), (8, 2), (8, 3), (8, 4), (8, 5),
-- Chainlink
(9, 1), (9, 2), (9, 3), (9, 4), (9, 5),
-- Polygon
(10, 1), (10, 2), (10, 3), (10, 4), (10, 5),
-- Shiba Inu
(11, 1), (11, 2), (11, 3), (11, 4), (11, 5);


-- Inserting into Cryptocurrency_founder
INSERT INTO Cryptocurrency_founder (founder, cryptocurrencyID) 
VALUES 
('Satoshi Nakamoto', 1),     -- Bitcoin
('Vitalik Buterin', 2),      -- Ether
('Jed McCaleb', 3),          -- Ripple
('Ryan Fugger', 3),          -- Ripple (Co-Founder)
('Charlie Lee', 4),          -- Litecoin
('Changpeng Zhao', 5),       -- Binance Coin
('Anatoly Yakovenko', 6),    -- Solana
('Charles Hoskinson', 7),    -- Cardano
('Billy Markus', 8),         -- Dogecoin
('Jackson Palmer', 8),       -- Dogecoin (Co-Founder)
('Sergey Nazarov', 9),       -- Chainlink
('Steve Ellis', 9),          -- Chainlink (Co-Founder)
('Jaynti Kanani', 10),       -- Polygon
('Sandeep Nailwal', 10),     -- Polygon (Co-Founder)
('Anurag Arjun', 10),        -- Polygon (Co-Founder)
('Mihailo Bjelic', 10),      -- Polygon (Co-Founder)
('Ryoshi', 11),              -- Shiba Inu
('Shyotshi Kusama', 11);     -- Shiba Inu (Co-Founder)

