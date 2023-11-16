import requests
from decimal import Decimal, ROUND_HALF_UP, getcontext
import datetime
from mysql.connector import Error

# Function to get data fro a specific cryptocurrency from CoinGecko API
def get_data(coin_id):
    
    api_key = 'CG-oqbhnq5TQGxKfMkdqPdzgwvK'
    url = f'https://api.coingecko.com/api/v3/coins/{coin_id}'

    # Filtering out localization, community data, and developer data fro now. 
    params = {
        'x_cg_demo_api_key': api_key,
        'localization': 'false',
        'community_data': 'false',  
        'developer_data': 'false', 
        'sparkline': 'false' 
    }

    response = requests.get(url, params=params)
    if response.status_code == 200:
        data = response.json()

        # Extract the relavent data we need for our DB. 
        return {
            'price': data['market_data']['current_price']['usd'],
            'market_cap': data['market_data']['market_cap']['usd'],
            'volume': data['market_data']['total_volume']['usd'],
            '24hr_change': data['market_data']['price_change_percentage_24h'],
            'ath': data['market_data']['ath']['usd'],
            'atl': data['market_data']['atl']['usd'],
            'circulating_supply': data['market_data']['circulating_supply'],
            'total_supply': data['market_data']['total_supply'], # Goes to specifications
            'max_supply': data['market_data']['max_supply'] # Goes to specifications
        }
    
    else:
        print(f"Could not fetch data for {coin_id} from CoinGecko.")
        return None

# Function actually updates the market data in the db for a given cryptocurrenct.
def update_market(connection, symbol, coin_data):
    try:
        cursor = connection.cursor()
        print(f"Updating data for {symbol}")

        # Query to update the market data in the 'Market' table. 
        update_query = """
        UPDATE Market
        SET price_usd = %s, market_cap = %s, 24hr_volume = %s, 24hr_change = %s, 
        all_time_high = %s, all_time_low = %s, circulating_supply = %s, last_updated = %s
        WHERE cryptocurrencyID = (SELECT cryptocurrencyID FROM Cryptocurrency WHERE symbol = %s)
        """

        # Function helps round different monetary values. 
        def decide_rounding(value):
            value = Decimal(value)

            # Round to two decimal places if the value is $0.01 or more
            if value >= Decimal('0.01'):
                return value.quantize(Decimal('0.01'))
            else:
                # Return the value with its existing precision if below $0.01
                return value

        cursor.execute(update_query, (
            decide_rounding(coin_data['price']),
            decide_rounding(coin_data['market_cap']),
            decide_rounding(coin_data['volume']),
            decide_rounding(coin_data['24hr_change']),
            decide_rounding(coin_data['ath']),
            decide_rounding(coin_data['atl']),
            coin_data['circulating_supply'], 
            datetime.datetime.now().strftime('%Y-%m-%d'),
            symbol
        ))

        connection.commit()
        print(f"Updating market data for {symbol}")

    except Error as e:
        print("Error while updating MySQL", e)

# Function to update the specification data in the db for a given cryptocurrency.
def update_specifications(connection, symbol, coin_data):
    try:
        cursor = connection.cursor()
        print(f"Updating specifications for {symbol}")

        # SQL query to update Specifications
        update_query = """
        UPDATE Specification
        SET total_supply = %s, max_supply = %s, last_update = %s
        WHERE cryptocurrencyID = (SELECT cryptocurrencyID FROM Cryptocurrency WHERE symbol = %s)
        """

        cursor.execute(update_query, (
            coin_data['total_supply'],
            coin_data['max_supply'],
            datetime.datetime.now().strftime('%Y-%m-%d'),
            symbol
        ))

        connection.commit()
        print(f"Specifications updated for {symbol}")

    except Error as e:
        print("Error while updating MySQL", e)


