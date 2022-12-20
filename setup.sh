#!/bin/bash

OPTIONS="Python CPP Java Quit"

select opt in $OPTIONS
do
    case $opt in
        "Python")
            echo "Creating a Python project..."
            ;;
        "CPP")
            echo "Creating a CPP project..."
            ;;
        "Java")
            echo "Creating a Java project..."
            ;;
        "Quit")
            exit 0
	    break ;;
	*)
		echo "Unknown option"
		;;
    esac
done
