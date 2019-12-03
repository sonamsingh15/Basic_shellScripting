#!/bin/bash
if env | grep usersecret
then
	echo env variable is already
else
	echo bariable created
	env usersecret="DH34xjaa23";
fi
