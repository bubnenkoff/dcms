import std.stdio;
import std.string;
import mysql;
import vibe.d;
import core.thread;

import config;

class Database
{
	Config config;
	MySQLPool mydb;
	Connection connection;

	this(Config config)
	{
		this.config = config;
		mydb = new MySQLPool(config.dbhost, config.dbuser, config.dbpassword, config.dbname, config.dbport);	
	}

	bool connect()
	{
		if(connection is null)
		{
			scope(failure) reconnect();
			this.connection = mydb.lockConnection();
			return true;
		}
		else
			return false; 

	}

	void reconnect()
	{
		if(connection is null)
		{
			while(!connect) // continue till connection will not be established
			{
				Thread.sleep(3.seconds);
				logError("Connection to DB is not active...");
				connect();
			}
		if(connection !is null)
		{
			logWarn("Reconnection to DB server done");
		}

		}

	}


}