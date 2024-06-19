Izveidot Python skriptu, lai izveidotu API pieprasījumu, apstrādātu datus un izvadītu universitāšu nosaukumus alfabētiskā secībā.

import requests

def get_latvian_universities():
    # API pieprasījums, lai iegūtu universitātes no Latvijas
    url = "http://universities.hipolabs.com/search?country=Latvia"
    response = requests.get(url)
    
    if response.status_code == 200:
        universities = response.json()
        # Atlasa tikai nosaukumus
        university_names = [uni['name'] for uni in universities]
        # Sakārto nosaukumus alfabētiskā secībā
        university_names.sort()
        # Izvada universitāšu nosaukumus
        for name in university_names:
            print(name)
    else:
        print(f"Failed to retrieve data: {response.status_code}")

if __name__ == "__main__":
    get_latvian_universities()

Kā tas darbojas:
API pieprasījums: requests.get(url) veic pieprasījumu uz http://universities.hipolabs.com/search?country=Latvia, lai iegūtu Latvijas universitātes.
Datu apstrāde: Ja pieprasījums ir veiksmīgs (status_code == 200), tad atbildes JSON tiek pārvērsts Python sarakstā.
Sakārtošana: Atlasa tikai universitāšu nosaukumus un sakārto tos alfabētiskā secībā, izmantojot sort().
Izvadīšana: Izvada katru universitātes nosaukumu.

Skripts izvadīs Latvijas universitāšu nosaukumus alfabētiskā secībā.
