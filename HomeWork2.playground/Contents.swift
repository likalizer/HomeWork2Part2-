import UIKit

var greeting = "Hello, playground"

typealias Weather = (city: String, tempKelvin: Double, tempMinKelvin: Double, tempMaxKelvin: Double)

let cityNames = ["Харків", "Київ", "Одеса", "Львів", "Чернігів", "Житомир", "Вінниця"]

let kelvinZero = 273.15

var weatherInCities: [Weather] = cityNames.map { city in
    (city, Double(arc4random_uniform(30)) + 273.15, Double(arc4random_uniform(30)) + 273.15, Double(arc4random_uniform(30)) + 273.15)
}

func kelvinToCelsius(_ kelvin: Double) -> Double {
    return kelvin - kelvinZero
}

func kelvinToFahrenheit(_ kelvin: Double) -> Double {
    return kelvin * 9.0 / 5.0 - 459.67
}

// ЕКРАН 1
print("---------- ЕКРАН 1 ----------")
for weather in weatherInCities {
    let city = weather.city
    let tempCelsius = kelvinToCelsius(weather.tempKelvin)
    let tempFahrenheit = kelvinToFahrenheit(weather.tempKelvin)
    let minTempCelsius = kelvinToCelsius(weather.tempMinKelvin)
    let minTempFahrenheit = kelvinToFahrenheit(weather.tempMinKelvin)
    let maxTempCelsius = kelvinToCelsius(weather.tempMaxKelvin)
    let maxTempFahrenheit = kelvinToFahrenheit(weather.tempMaxKelvin)

    print("""
    \(city):
    t: \(String(format: "%.1f", tempCelsius)) C / \(String(format: "%.1f", tempFahrenheit)) F
    min t: \(String(format: "%.1f", minTempCelsius)) C / \(String(format: "%.1f", minTempFahrenheit)) F
    max t: \(String(format: "%.1f", maxTempCelsius)) C / \(String(format: "%.1f", maxTempFahrenheit)) F
    """)
}
print("\n-----------------------------")


// ЕКРАН 2


print("---------- ЕКРАН 2 ----------")
for weather in weatherInCities {
    let city = weather.city
    let tempCelsius = kelvinToCelsius(weather.tempKelvin)
    
    print("""
    \(city):
    t: \(String(format: "%.1f", tempCelsius)) C
    """)
}
print("\n-----------------------------")


// ЕКРАН 3

print("---------- ЕКРАН 3 ----------")
for weather in weatherInCities {
    let city = weather.city
    let tempFahrenheit = kelvinToFahrenheit(weather.tempKelvin)
    
    print("""
    \(city):
    t: \(String(format: "%.1f", tempFahrenheit)) F
    """)
}
print("\n-----------------------------")

