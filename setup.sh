#!/bin/sh

sysname="orderBox"
libdir=${sysname}"/lib"

# データベースファルの作成

sqlite3 ${libdir}/databases/${sysname}.db < ${libdir}/databases/${sysname}.sql

# ファイル属性の変更

chmod 755 ${sysname}/*.rb
chmod 777 ${libdir}/databases
chmod 777 ${libdir}/databases/${sysname}.db

# ログファイルの作成

touch ${libdir}/aduser.log
chmod 666 ${libdir}/aduser.log
