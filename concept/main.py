import mysql.connector
from mysql.connector import Error
from scrape_market_data import get_data, update_market, update_specifications

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
    ('shiba-inu', 'SHIB')
]

def main():
    try:
        # Connect to the crypto database
        connection = mysql.connector.connect(host='localhost', database='crypto', user='root')

        if connection.is_connected():
            print("Connected to crypto database.")
            
            # Loop through each cryptocurrency and fetch then update the data. 
            # Specifically the market table and the specification table. 
            for coin_id, symbol in crypto:
                coin_data = get_data(coin_id)
                print(coin_data)
                if coin_data:
                    update_market(connection, symbol, coin_data) # Market Data
                    update_specifications(connection, symbol, coin_data) # Specification data like Max Supply, Total Supply. 

    except Error as e:
        print("Error while connecting to MySQL", e)

    finally:
        print("Updates complete!")

        # Close the connection to the db after making updates. 
        if connection.is_connected():
            connection.close()
            print("Connection to crypto database is closed.")

if __name__ == '__main__':
    main()
        
        
        