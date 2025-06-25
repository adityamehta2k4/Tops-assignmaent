# Q40.Write a .ython program to get unique values from a list.


def get_unique_cities(city_list):
    unique_cities = []
    for city in city_list:
        if city not in unique_cities:
            unique_cities.append(city)
    return unique_cities

cities = ['Ahmedabad','Surat','Rajkot','Baroda','Udaipur']
unique = get_unique_cities(cities)

print("Unique city names are:",unique)