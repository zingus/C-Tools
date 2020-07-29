@echo off
setlocal

if not exist ".git"           (
  echo git
  call git init
) else echo found git

if not exist "package.json"   (
  echo npm
  call npm init -y
) else echo found npm

if not exist "composer.json"  (
  echo composer
  call composer init -n
) else echo found composer

if not exist "Cargo.toml"     (
  echo cargo
  call cargo init
) else echo found cargo

if not exist "jest.config.js" (
  echo jest
  (for %%i in (1,1,10) do (echo. & timeout /T 1)) | call jest --init
) else echo found jest

if not exist "index.js" (
  echo.>>"index.js"
) else echo found index.js




