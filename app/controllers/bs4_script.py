from bs4 import BeautifulSoup
import requests
import sys

file = open("log.txt","w")
file.write("worked")
file.close()
html = requests.get("http://www.tennisexplorer.com/washington/2017/atp-men/").text
soup = BeautifulSoup(html,'html5lib')
tag = sys.argv[1]
print(len(soup.find_all(str(tag))))
