module friendTest

import list
import friend
import ite
import bool
import relation

||| give a list of all friends
friendList: list friend
friendList = f :: f1 :: f2 :: f3 :: f4 :: nil

||| give a list of friends names
mapName: list String
mapName = map name friendList

||| give a list of friends who are only
||| trustworhty
filterTrust: list friend
filterTrust = filter trustworthy friendList

-- HOMEWORK 12 --

||| give the total happiness of all trustworthy friends
years: Nat
years = query2 friendList trustworthy happiness plus 0

||| give the age of all trustworthy friends
ageTotal: Nat
ageTotal = query2 friendList trustworthy age plus 0

||| names of all male friends
namesMale: String
namesMale = query2 friendList gender name (++) ""

||| give the names of all the trustworthy male friends
namesTrust: String
namesTrust = query2 friendList trustworthy name (++) ""
