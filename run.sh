#!/bin/bash
jmeter -n -t restful_booker_crud.jmx -l result.jtl -e -o report/
