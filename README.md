# INA260 Driver

![coverage](coverage.svg)

## Introduction

This Python package provides a platform agnostic driver for the [TI INA260](https://www.ti.com/product/INA260) precision power monitor. Conveniently, the INA260 has a built-in sense resistor so it's very easy to integrate into your projects. It can sense from 0 to 36V and up to 15A(!) with 16-bit resolution. Thus, it's perfect for pretty much all hobbyist projects.

The only dependency for this library is `smbus2` so provided your I2C device is addressable by that, this library should work (for example on a Raspberry Pi or other dev board).
