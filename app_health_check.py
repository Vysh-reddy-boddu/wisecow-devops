import requests

url = "http://172.18.0.2:30007"

try:
    response = requests.get(url)

    if response.status_code == 200:
        print("Application is UP and running")
    else:
        print("Application returned status:", response.status_code)

except:
    print("Application is DOWN or unreachable")
