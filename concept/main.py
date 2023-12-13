import mysql.connector
from mysql.connector import Error
from datetime import datetime
from scrape_market_data import get_data, update_market, update_specifications
import time

# List of cryptocurrencies that we want to update, each with it's Coingecko ID and symbol.
crypto = [
    
    ('bitcoin', 'BTC'), 
    ('ethereum', 'ETH'), 
    ('ripple', 'XRP'), 
    ('litecoin', 'LTC'), 
    ('binancecoin', 'BNB'),
    ('solana', 'SOL'),
    ('cardano', 'ADA'),
    ('dogecoin', 'DOGE'),
    ('chainlink', 'LINK'),
    ('matic-network', 'MATIC'),
    ('shiba-inu', 'SHIB'),
    ('avalanche-2', 'AVAX'),
    ('tron', 'TRX'),
    ('polkadot', 'DOT'),
    ('eos', 'EOS'),
    ('bitcoin-cash', 'BCH'),
    ('monero', 'XMR'),
    ('ethereum-classic', 'ETC'),
    ('cosmos', 'ATOM'),
    ('kaspa', 'KAS'),
    ('internet-computer', 'ICP'),
    ('stellar', 'XLM'),
    ('algorand','ALGO'),
    ('the-open-network', 'TON'),
    ('aptos', 'APT'),
    ('crypto-com-chain', 'CRO'),
    ('near', 'NEAR'),
    ('vechain', 'VET'),
    ('bitcoin-cash-sv', 'BSV'),
    ('ravencoin', 'RVN')
]

def main():
    try:
        connection = mysql.connector.connect(host='localhost', database='cryptodatabase', user='root', password='4341')

        if connection.is_connected():
            print("Connected to crypto database.")

            # Initialize a counter for API calls
            api_call_count = 0

            for coin_id, symbol in crypto:
                start_time = datetime.now()
                coin_data = get_data(coin_id)
                
                if coin_data:
                    update_market(connection, symbol, coin_data)
                    update_specifications(connection, symbol, coin_data)
                
                end_time = datetime.now()
                time_taken = end_time - start_time
                print(f"Time taken to update {symbol}: {time_taken}")

                # Increment the API call counter
                api_call_count += 1

                # Check if 20 API calls have been made
                if api_call_count >= 20:
                    print("Reached 20 API calls, sleeping for 60 seconds...")
                    time.sleep(60)  # Sleep for 60 seconds
                    api_call_count = 0  # Reset the counter

    except Error as e:
        print("Error while connecting to MySQL", e)

    finally:
        print("Updates complete!")
        if connection.is_connected():
            connection.close()
            print("Connection to crypto database is closed.")

if __name__ == '__main__':
    main()   