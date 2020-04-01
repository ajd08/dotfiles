#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json, requests


def main():
    CELCIUS_CONV = 273.15
    base_url = "http://api.openweathermap.org/data/2.5/weather?"
    api_key = "6b703c1e7be500ec95edc56a79642555"
    city = "Toronto"
    complete_url = base_url + "appid=" + api_key + "&q=" +city
    response = requests.get(complete_url)
    x=response.json()
    temp_celcius = round(x['main']['temp'] - CELCIUS_CONV)
    print(str(int(temp_celcius)) + ' °C')

if __name__ == "__main__":
	print(main())
