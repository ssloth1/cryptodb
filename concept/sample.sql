INSERT INTO Blockchain 
(blockchainID, name, launch_date, block_time, consensus_mechanism, smart_contract_support, fork_date, fork_type, BuiltOn_blockchainID) 
VALUES 
(1, 'Bitcoin', '2009-01-03', 600, 'Proof of Work', FALSE, NULL, NULL, NULL),
(2, 'Ethereum', '2015-07-30', 12, 'Proof of Stake', TRUE, NULL, NULL, NULL),
(3, 'XRP Ledger', '2012-08-02', 4, 'Ripple Protocol Consensus', FALSE, NULL, NULL, NULL),
(4, 'Litecoin', '2011-10-13', 150, 'Proof of Work', FALSE, '2011-10-01', 'hard', 1),
(5, 'BNB Smart Chain', '2019-02-01', 3, 'Proof of Staked Authority', TRUE, NULL, NULL, NULL),
(6, 'Solana', '2020-03-24', 0.4, 'Proof of History', TRUE, NULL, NULL, NULL),
(7, 'Cardano', '2017-09-29', 20, 'Proof of Stake', TRUE, NULL, NULL, NULL),
(8, 'Dogecoin', '2013-12-06', 60, 'Proof of Work', FALSE, '2013-12-06', 'hard', 4),
(9, 'Chainlink', '2017-09-19', 15, 'Proof of Stake', TRUE, NULL, NULL, 2),
(10, 'Polygon', '2020-04-26', 2, 'Proof of Stake', TRUE, NULL, NULL, 2),
(11, 'Shiba Inu', '2020-08-01', 5, 'Proof of Stake', TRUE, NULL, NULL, 2),
(12, 'X-Chain', '2020-09-22', 2.1, 'Avalanche Consensus', TRUE, NULL, NULL, NULL),
(13, 'Tron Main', '2018-05-31', 3, 'Delegated Proof of Stake', TRUE, NULL, NULL, NULL),
(14, 'Polkadot', '2020-05-26', 6, 'Nominated Proof of Stake', TRUE, NULL, NULL, NULL),
(15, 'EOS.IO', '2018-06-01', .5, 'Delegated Proof of Stake', TRUE, NULL, NULL, NULL),
(16, 'Bitcoin Cash', '2017-08-01', 600, 'Proof of Work', TRUE, '2017-08-01', 'hard', 1),
(17, 'Monero', '2014-04-18', 120, 'Proof of Work', FALSE, NULL, NULL, NULL),
(18, 'Ethereum Classic', '2016-07-20', 15, 'Proof of Work', TRUE, '2016-07-20', 'hard', 2),
(19, 'Cosmos Hub', '2019-03-13', 6, 'Proof of Stake', TRUE, NULL, NULL, NULL),
(20, 'Kaspa', '2021-11-07', 1, 'Proof of Work', FALSE, NULL, NULL, NULL),
(21, 'Internet Computer', '2021-05-10', .93, 'Proof of Stake', TRUE, NULL, NULL, NULL),
(22, 'Stellar', '2014-07-31', 5, 'Stellar Consensus', FALSE, NULL, NULL, NULL),
(23, 'Algorand', '2019-06-19', 3.3, 'Pure Proof of Stake', TRUE, NULL, NULL, NULL),
(24, 'The Open Network', '2020-05-07', 5, 'Proof of Stake', TRUE, NULL, NULL, NULL),
(25, 'Aptos', '2022-10-22', 4, 'Proof of Stake', TRUE, NULL, NULL, NULL),
(26, 'Cronos Chain', '2021-11-08', 5, 'Proof of Authority', TRUE, NULL, NULL, NULL),
(27, 'NEAR Protocol', '2020-04-01', 1, 'Proof of Stake', TRUE, NULL, NULL, NULL),
(28, 'VeChainThor', '2018-06-30', 10, 'Proof of Authority', TRUE, NULL, NULL, NULL),
(29, 'Bitcoin SV', '2018-11-15', 600, 'Proof of Work', FALSE, '2018-11-15', 'hard', 16),
(30, 'Ravencoin', '2018-01-03', 60, 'Proof of Work', FALSE, '2018-01-03', 'hard', 1), 
(31, 'Pepe Coin', '2023-04-01', 12, 'Proof of Stake', TRUE, NULL, NULL, 2),
(32, 'Injective', '2020-10-01', .82, 'Proof of Stake', TRUE, NULL, NULL, 19),
(33, 'Optimism', '2022-11-01', 2, 'Proof of Stake', TRUE, NULL, NULL, 2);

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
(11, 'Shiba Inu', 'SHIB', '2020-08-01', 11),
(12, 'Avalanche', 'AVAX', '2020-09-22', 12),
(13, 'TRON', 'TRX', '2017-08-01', 13),
(14, 'Polkadot', 'DOT', '2020-05-26', 14),
(15, 'EOS', 'EOS', '2018-06-01', 15),
(16, 'Bitcoin Cash', 'BCH', '2017-08-01', 16),
(17, 'Monero', 'XMR', '2014-04-18', 17),
(18, 'Ethereum Classic', 'ETC', '2016-07-20', 18),
(19, 'Cosmos', 'ATOM', '2019-03-13', 19),
(20, 'Kaspa', 'KAS', '2021-11-07', 20),
(21, 'Internet Computer', 'ICP', '2021-05-10', 21),
(22, 'Stellar Lumens', 'XLM', '2014-07-31', 22),
(23, 'Algorand', 'ALGO', '2019-06-19', 23),
(24, 'Toncoin', 'TON', '2020-05-07', 24),
(25, 'Aptos ', 'APT', '2022-10-22', 25),
(26, 'Cronos', 'CRO', '2018-12-01', 26),
(27, 'NEAR Protocol', 'NEAR', '2020-04-01', 27),
(28, 'VeChain', 'VET', '2018-06-30', 28),
(29, 'Bitcoin SV', 'BSV', '2018-11-15', 29),
(30, 'Ravecoin', 'RVN', '2018-01-03', 30),
(31, 'Pepe Coin', 'PEPE', '2023-04-01', 31),
(32, 'Injective', 'INJ', '2020-10-01', 32),
(33, 'Optimism', 'OP', '2022-11-01', 33);

INSERT INTO Exchange (exchangeID, name, website, fee_structure, location, launch_date, publically_traded) 
VALUES 
(1, 'Coinbase', 'https://www.coinbase.com/', 'percentage', 'United States', '2012-06-01', 'Yes'),
(2, 'Binance', 'https://www.binance.com/', 'percentage', 'Cayman Islands', '2017-06-01', 'No'),
(3, 'Kraken', 'https://www.kraken.com/', 'percentage', 'United States', '2011-07-28', 'No'),
(4, 'Bitfinex', 'https://www.bitfinex.com/', 'percentage', 'British Virgin Islands', '2012-10-11', 'No'),
(5, 'Crypto.com', 'https://crypto.com/', 'percentage', 'Singapore', '2016-06-01', 'No'),
(6, 'Gemini', 'https://www.gemini.com/', 'percentage', 'United States', '2014-06-01', 'No'),
(7, 'Huobi Global', 'https://www.htx.com/', 'percentage', 'Seychelles', '2013-09-01', 'No'),
(8, 'KuCoin', 'https://www.kucoin.com/', 'percentage', 'Seychelles', '2017-09-15', 'No'),
(9, 'OKX', 'https://www.okx.com/', 'percentage', 'Malta', '2017-01-01', 'No'),
(10, 'Bitstamp', 'https://www.bitstamp.net/', 'percentage', 'Luxembourg', '2011-08-01', 'No');

INSERT INTO Market (cryptocurrencyID, price_usd, market_cap, 24hr_volume, 24hr_change, all_time_high, all_time_low, circulating_supply, last_updated)
VALUES
(1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(5, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(6, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(7, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(8, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(9, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(11, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(12, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(13, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(14, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(15, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(16, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(17, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(18, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(19, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(20, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(21, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(22, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(23, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(24, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(25, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(26, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(27, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(28, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(29, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(30, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(31, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(32, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE()),
(33, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, CURDATE());

INSERT INTO Specification (cryptocurrencyID, use_case, total_supply, max_supply, last_update) 
VALUES 
(1, 'digital currency', NULL, NULL, CURDATE()),
(2, 'smart contracts', NULL, NULL, CURDATE()),
(3, 'digital payments', NULL, NULL, CURDATE()),
(4, 'digital currency', NULL, NULL, CURDATE()),
(5, 'utility', NULL, NULL, CURDATE()),
(6, 'smart contracts', NULL, NULL, CURDATE()),
(7, 'smart contracts', NULL, NULL, CURDATE()),
(8, 'meme and digital currency', NULL, NULL, CURDATE()),
(9, 'DeFi', NULL, NULL, CURDATE()),
(10, 'ethereum scaling solution', NULL, NULL, CURDATE()),
(11, 'meme token', NULL, NULL, CURDATE()),
(12, 'smart contracts', NULL, NULL, CURDATE()),
(13, 'digital entertainment', NULL, NULL, CURDATE()),
(14, 'interoperability', NULL, NULL, CURDATE()),
(15,'dApps', NULL, NULL, CURDATE()),
(16, 'digital currency', NULL, NULL, CURDATE()),
(17, 'digital currency', NULL, NULL, CURDATE()),
(18, 'smart contracts', NULL, NULL, CURDATE()),
(19, 'interoperability', NULL, NULL, CURDATE()),
(20, 'digital payments', NULL, NULL, CURDATE()),
(21, 'internet services', NULL, NULL, CURDATE()),
(22, 'digital payments', NULL, NULL, CURDATE()),
(23, 'financial infastructure', NULL, NULL, CURDATE()),
(24, 'digital currency', NULL, NULL, CURDATE()),
(25, 'smart contracts', NULL, NULL, CURDATE()),
(26, 'dApps', NULL, NULL, CURDATE()),
(27, 'smart contracts', NULL, NULL, CURDATE()),
(28, 'digital currency', NULL, NULL, CURDATE()),
(29, 'digital currency', NULL, NULL, CURDATE()),
(30, 'asset tokenization', NULL, NULL, CURDATE()),
(31, 'meme', NULL, NULL, CURDATE()),
(32, 'dApps', NULL, NULL, CURDATE()),
(33, 'governance', NULL, NULL, CURDATE());

INSERT INTO Community (cryptocurrencyID, website, twitter, discord, reddit, whitepaper, is_open_source, repository_url) 
VALUES 
(1, 'https://bitcoin.org/', 'https://twitter.com/Bitcoin/', NULL, NULL,'https://bitcoin.org/bitcoin.pdf', TRUE, 'https://github.com/bitcoin'),
(2, 'https://ethereum.org/', 'https://twitter.com/ethereum/', 'https://discord.com/invite/CetY6Y4', 'https://www.reddit.com/r/ethereum', 'https://ethereum.org/en/whitepaper/', TRUE, 'https://github.com/ethereum'),
(3, 'https://www.ripple.com/', 'https://twitter.com/Ripple', NULL, NULL, 'https://www.ripple.com/files/ripple_consensus_whitepaper.pdf', TRUE, 'https://github.com/ripple'),
(4, 'https://litecoin.org/', 'https://twitter.com/LTCFoundation', NULL, 'https://www.reddit.com/r/litecoin', 'https://litecoin.org/', TRUE, 'https://github.com/litecoin-project/litecoin'),
(5, 'https://www.binance.com/', 'https://twitter.com/binance', NULL, NULL, 'https://www.binance.com/en/bnb', TRUE, 'https://github.com/binance-exchange'),
(6, 'https://solana.com/', 'https://twitter.com/solana', NULL, 'https://www.reddit.com/r/solana', 'https://solana.com/solana-whitepaper.pdf', TRUE, 'https://github.com/solana-labs'),
(7, 'https://cardano.org/', 'https://twitter.com/cardano', NULL, 'https://www.reddit.com/r/cardano', 'https://docs.cardano.org/en/latest/', TRUE, 'https://github.com/input-output-hk'),
(8, 'https://dogecoin.com/', 'https://twitter.com/dogecoin', NULL, 'https://www.reddit.com/r/dogecoin', 'https://foundation.dogecoin.com/about/', TRUE, 'https://github.com/dogecoin'),
(9, 'https://chain.link/', 'https://twitter.com/chainlink', NULL, 'https://www.reddit.com/r/chainlink', 'https://research.chain.link/whitepaper-v2.pdf', TRUE, 'https://github.com/smartcontractkit'),
(10, 'https://polygon.technology/', 'hSttps://twitter.com/0xPolygon', 'https://discord.com/invite/XvpHAxZ', 'https://www.reddit.com/r/maticnetwork', 'https://polygon.technology/papers/pol-whitepaper', TRUE, 'https://github.com/maticnetwork'),
(11, 'https://shibatoken.com/', 'https://twitter.com/shibainucoin', 'https://discord.com/invite/shibatoken', 'https://www.reddit.com/r/SHIBArmy', 'https://uploads-ssl.webflow.com/6424006598e25f12a6360e93/6425c40b662f5690cb62e831_Ryoshi_Article.pdf', TRUE, 'https://github.com/shibaswaparmy'),
(12, 'https://www.avax.network/', 'https://twitter.com/avax', 'https://discord.com/invite/RwXY7P6', 'https://www.reddit.com/r/Avax/', 'https://www.avalabs.org/whitepapers', TRUE, 'https://github.com/ava-labs'),
(13, 'https://tron.network/', 'https://twitter.com/Tronfoundation', 'https://discord.com/invite/hqKvyAM', 'https://www.reddit.com/r/Tronix', 'https://tron.network/static/doc/white_paper_v_2_0.pdf', TRUE, 'https://github.com/tronprotocol'),
(14, 'https://polkadot.network/', 'https://twitter.com/Polkadot', 'https://discord.com/invite/polkadot', 'https://www.reddit.com/r/dot', 'https://polkadot.network/PolkaDotPaper.pdf', TRUE, 'https://github.com/paritytech'),
(15, 'https://eos.io/', 'https://twitter.com/EOS_io', 'https://discord.com/invite/eos-network', 'https://www.reddit.com/r/eos', 'https://github.com/EOSIO/Documentation/blob/master/TechnicalWhitePaper.md', TRUE, 'https://github.com/EOSIO'),
(16, 'https://bitcoincash.org/', 'https://twitter.com/bitcoincashorg', NULL, 'https://www.reddit.com/r/Bitcoincash/', 'https://bitcoincash.org/bitcoin.pdf', TRUE, 'https://github.com/bitcoincashbch/bitcoin-cash'),
(17, 'https://www.getmonero.org/', 'https://twitter.com/monero', NULL, 'https://www.reddit.com/r/Monero', 'https://bytecoin.org/old/whitepaper.pdf', TRUE, 'https://github.com/monero-project/monero'),
(18, 'https://ethereumclassic.org/', 'https://twitter.com/eth_classic', 'https://discord.com/invite/hQs894U', 'https://www.reddit.com/r/EthereumClassic/', 'https://github.com/ethereum/wiki/wiki/White-Paper', TRUE, 'https://github.com/ethereumclassic'),
(19, 'https://cosmos.network/', 'https://twitter.com/cosmos', 'https://discord.gg/cosmosnetwork', 'https://www.reddit.com/r/cosmosnetwork', 'https://cosmos.network/resources/whitepaper', TRUE, 'https://github.com/cosmos/cosmos-sdk'),
(20, 'https://kaspa.org/', 'https://twitter.com/KaspaCurrency', 'https://discord.com/invite/kS3SK5F36R', 'https://www.reddit.com/r/kaspa/', 'https://eprint.iacr.org/2018/104.pdf', TRUE, 'https://github.com/kaspanet'),
(21, 'https://internetcomputer.org/', 'https://twitter.com/dfinity', NULL, NULL, 'https://internetcomputer.org/whitepaper.pdf', TRUE, 'https://github.com/dfinity'),
(22, 'https://www.stellar.org/', 'https://twitter.com/StellarOrg', NULL, 'https://www.reddit.com/r/Stellar', 'https://www.stellar.org/papers/stellar-consensus-protocol.pdf', TRUE, 'https://github.com/stellar'),
(23, 'https://www.algorand.com/', 'https://twitter.com/Algorand', 'https://discord.com/invite/QBYp7Y2', 'https://www.reddit.com/r/AlgorandOfficial', 'https://arxiv.org/pdf/1607.01341.pdf', TRUE, 'https://github.com/algorand'),
(24, 'https://ton.org/', 'https://twitter.com/OpenNetwork', NULL, NULL, 'https://ton.org/docs/', TRUE, 'https://github.com/ton-blockchain'),
(25, 'https://aptoslabs.com/', 'https://twitter.com/Aptos_Network', 'https://discord.com/invite/aptoslabs', 'https://www.reddit.com/r/aptos', 'https://aptosfoundation.org/whitepaper', TRUE, 'https://github.com/aptos-labs'),
(26, 'https://cronos.org/', 'https://twitter.com/cronos_chain', 'https://discord.com/invite/cronos', NULL, 'https://whitepaper.cronos.org/', TRUE, 'https://github.com/crypto-org-chain'),
(27, 'https://near.org/', 'https://twitter.com/nearprotocol', 'https://discord.com/invite/zfhfRpaM4m', 'https://www.reddit.com/r/nearprotocol', 'https://near.org/papers/the-official-near-white-paper', TRUE, 'https://github.com/near'),
(28, 'https://www.vechain.org/', 'https://twitter.com/vechainofficial', NULL, 'https://www.reddit.com/r/Vechain', 'https://www.vechain.org/whitepaper/', TRUE, 'https://github.com/vechain'),
(29, 'https://bitcoinsv.com/', 'https://twitter.com/BitcoinSVNode', NULL, 'https://www.reddit.com/r/bitcoincashSV', 'https://www.bsvblockchain.org/about', TRUE, 'https://github.com/bitcoin-sv'),
(30, 'https://ravencoin.org/', 'https://twitter.com/ravencoin', 'https://discord.com/invite/CqbfUZd', 'https://www.reddit.com/r/Ravencoin', 'https://ravencoin.org/assets/documents/Ravencoin.pdf', TRUE, 'https://github.com/RavenProject'),
(31, 'https://www.pepe.vip/', 'https://twitter.com/pepecoineth', NULL, NULL, 'https://www.allcryptowhitepapers.com/pepe-whitepaper/', NULL, NULL),
(32, 'https://injective.com/', 'https://twitter.com/Injective_', 'https://discord.com/invite/NK4qdbv', NULL, 'https://docs.injective.network/learn/introduction', TRUE, 'https://github.com/InjectiveLabs'),
(33, 'https://app.optimism.io/governance', 'https://twitter.com/optimismFND', 'https://discord.com/invite/optimism', NULL, 'https://community.optimism.io/', TRUE, 'https://github.com/ethereum-optimism');

INSERT INTO ListedOn (cryptocurrencyID, exchangeID) 
VALUES 
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10),
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (2, 8), (2, 9), (2, 10),
(3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (3, 8), (3, 9), (3, 10),
(4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (4, 8), (4, 9), (4, 10),
(5, 2), (5, 7), (5, 8), (5, 9),
(6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6), (6, 7), (6, 8), (6, 9), (6, 10),
(7, 1), (7, 2), (7, 3), (7, 4), (7, 5), (7, 7), (7, 8), (7, 9), (7, 10),
(8, 1), (8, 2), (8, 3), (8, 4), (8, 5), (8, 7), (8, 8), (8, 9),
(9, 1), (9, 2), (9, 3), (9, 4), (9, 5), (9, 7), (9, 8), (9, 9),
(10, 1), (10, 2), (10, 3), (10, 4), (10, 5), (10, 7), (10, 8), (10, 9),
(11, 1), (11, 2), (11, 3), (11, 4), (11, 5), (11, 7), (11, 8), (11, 9),
(12, 1), (12, 2), (12, 3), (12, 4), (12, 5), (12, 7), (12, 8), (12, 9),
(13, 2), (13, 3), (13, 4), (13, 7), (13, 8), (13, 9),
(14, 1), (14, 2), (14, 3), (14, 4), (14, 5), (14, 6), (14, 7), (14, 8), (14, 9), (14, 10),
(15, 1), (15, 2), (15, 3), (15, 4), (15, 5), (15, 7), (15, 8), (15, 9),
(16, 1), (16, 2), (16, 3), (16, 5), (16, 6), (16, 7), (16, 8), (16, 9), (16, 10),
(17, 2), (17, 3), (17, 4), (17, 7), (17, 8), (17, 9),
(18, 1), (18, 2), (18, 3), (18, 4), (18, 5), (18, 7), (18, 8), (18, 9),
(19, 1), (19, 2), (19, 3), (19, 5), (19, 7), (19, 8), (19, 9),
(20, 8),
(21, 1), (21, 2), (21, 3), (21, 4), (21, 5), (21, 7), (21, 8), (21, 9),
(22, 1), (22, 2), (22, 3), (22, 4), (22, 5), (22, 7), (22, 8), (22, 9), (22, 10),
(23, 1), (23, 2), (23, 3), (23, 4), (23, 5),
(24, 4), (24, 7), (24, 8), (24, 9),
(25, 1), (25, 2), (25, 3), (25, 4), (25, 7), (25, 8), (25, 9),
(26, 1), (26, 5), (26, 6), (26, 8), (26, 9),
(27, 1), (27, 2), (27, 3), (27, 4), (27, 5), (27, 7), (27, 8), (27, 9),
(28, 1), (28, 2), (28, 4), (28, 5), (28, 7), (28, 8),
(29, 7), (29, 8), (29, 9),
(30, 2), (30, 5), (30, 7), (30, 8), (30, 9),
(31, 2), (31, 3), (31, 4), (31, 6), (31, 7), (31, 8), (31, 9),
(32, 1), (32, 2), (32, 3), (32, 5), (32, 7), (32, 8), (32, 9), (32, 10),
(33, 1), (33, 2), (33, 3), (33, 5), (33, 7), (33, 8), (33, 9);

INSERT INTO Cryptocurrency_founder (founder, cryptocurrencyID) 
VALUES 
('Satoshi Nakamoto', 1),
('Vitalik Buterin', 2),
('Gavin Wood', 2),
('Charles Hoskinson', 2),
('Anthony Di Lorio', 2),
('Joseph Lubin', 2),
('Jed McCaleb', 3),
('Ryan Fugger', 3),
('Charlie Lee', 4),
('Changpeng Zhao', 5),
('Anatoly Yakovenko', 6),
('Charles Hoskinson', 7),
('Jeremy Wood', 7),
('Billy Markus', 8),
('Jackson Palmer', 8),
('Sergey Nazarov', 9),
('Steve Ellis', 9),
('Jaynti Kanani', 10),
('Sandeep Nailwal', 10),
('Anurag Arjun', 10),
('Mihailo Bjelic', 10),
('Ryoshi', 11),
('Shyotshi Kusama', 11),
('Emin Gün Sirer', 12),
('Kevin Sekniqi', 12),
('Maofan Yin', 12),
('Justin Sun', 13),
('Gavin Wood', 14),
('Daniel Larimer', 15),
('Brendan Blumer', 15),
('Bitcoin Community', 16),
('Nicolas van Saberhagen', 17),
('Vitalik Buterin', 18),
('Gavin Wood', 18),
('Jae Kwon', 19),
('Ethan Buchman', 19),
('Yonatan Sompolinsky', 20),
('Dominic Williams', 21),
('Jed McCaleb', 22),
('Joyce Kim', 22),
('Silvio Micali', 23),
('Pavel Durov', 24),
('Mo Shaikh', 25),
('Avery Ching', 25),
('Kris Marszalek', 26),
('Bobby Bao', 26),
('Gary Or', 26),
('Erik Trautman', 27),
('Illia Polosukhin', 27),
('Alexander Skidanov', 27),
('Sunny Lu', 28),
('Jay Zhang', 28),
('Bitcoin Community', 29),
('Bruce Fenton', 30),
('Tron Black', 30),
('Unknown', 31),
('Eric Chen', 32),
('Albert Chon', 32),
('Jinglan Wang', 33),
('Karl Floersch', 33),
('Kevin Ho', 33);