<div align="center">
<img src="mangadownloader/md.ico" alt="Logo" style="width: 100px" />
<h1>Free Manga Downloader 2 (FMD2)</h1>

<sup>(Forked from https://github.com/fmd-project-team/FMD)</sup>

[![Supported Websites](https://img.shields.io/badge/Supported%20Websites-Blue?style=for-the-badge&color=purple)](https://github.com/dazedcat19/FMD2/blob/master/docs/SUPPORTED_WEBSITES.md) 

## Download

[![Latest release](https://img.shields.io/github/release/dazedcat19/FMD2?style=for-the-badge)](https://github.com/dazedcat19/FMD2/releases/latest)  
[![Download latest release (Win32)](https://img.shields.io/github/downloads/dazedcat19/FMD2/latest/fmd_2.0.33.1_i386-win32.7z?style=for-the-badge&label=Win32)](https://github.com/dazedcat19/FMD2/releases/download/2.0.33.1/fmd_2.0.33.1_i386-win32.7z)
[![Download latest release (Win64)](https://img.shields.io/github/downloads/dazedcat19/FMD2/latest/fmd_2.0.33.1_x86_64-win64.7z?style=for-the-badge&label=Win64)](https://github.com/dazedcat19/FMD2/releases/download/2.0.33.1/fmd_2.0.33.1_x86_64-win64.7z)
</div>

<div align="center">
<details>
  <summary>
    <h2>Project Samples</h2>
  </summary>

![image](https://github.com/user-attachments/assets/92684b74-d19f-4069-8cd7-38384162663b)
![image](https://github.com/user-attachments/assets/ec6651dd-19c2-4a22-ab11-63c917035795)
![image](https://github.com/user-attachments/assets/9ab0a7d4-7d2e-410e-b06a-7d328235fbab)

</details>
</div>

## About FMD

This is an active fork of the Free Manga Downloader which is a free open source application written in Object Pascal for managing and downloading manga from various websites. The source code was released under the GPLv2 license.
  
Some useful arguments that can be used in FMD2:
- `--lua-dofile` trigger FMD2 to always load lua modules from file. Only use it when developing a module. It might slowing down FMD2.
- `--no-commit-queue` disable commit queue for databases. The same as `--max-commit-queue=0 --max-flush-queue=0`. It might slowing down FMD2 with large databases due to intense disk write.
- `--max-commit-queue=16` override max number of commit before writing to disk.
- `--max-flush-queue=256` override max number of update before commiting to database engine.
- `--max-big-flush-queue=16384` override max number of update before commiting to database. Internally used when making large update to databases in one go. Be careful when reducing the number it might slowing down FMD2 significantly.
- `--backup-interval=10` override backup databases interval (minutes).

## Build instructions

In order to build FMD from the source code, you must install the latest stable version of Lazarus and Free Pascal Compiler:  
[![Lazarus](https://img.shields.io/badge/Lazarus%20IDE-Blue?style=for-the-badge&color=blue)](https://sourceforge.net/projects/lazarus/files/Lazarus%20Windows%2064%20bits/)  

To compile FMD some packages and components are needed. You can download and install most of them by the built-in Online Package Manager (OPM).  
The following packages and components are used for building FMD:  
![Synapse 40.1](https://img.shields.io/badge/Synapse%2040.1-OPM%20(40.1.0.0)-Blue?style=plastic&color=blue) <sup>(Compile before "InternetTools")</sup>  
![DCPCrypt](https://img.shields.io/badge/DCPCrypt-OPM%20(2.0.4.2)-Blue?style=plastic&color=blue)  
![RichMemo](https://img.shields.io/badge/RichMemo-OPM%20(1.0.0.0)-Blue?style=plastic&color=blue)  
![LCL Extensions](https://img.shields.io/badge/LCL%20Extensions-OPM%20(0.6.1.0)-Blue?style=plastic&color=blue) <sup>(Compile before "VirtualTreeViewV5")</sup>  
![VirtualTreeViewV5](https://img.shields.io/badge/VirtualTreeViewV5-OPM%20(5.5.3.1)-Blue?style=plastic&color=blue)  
![MultiLog](https://img.shields.io/badge/MultiLog-OPM%20(0.7.0.0)-Blue?style=plastic&color=blue)  
[![InternetTools](https://img.shields.io/badge/InternetTools-GitHub-Blue?style=plastic&color=blue)](https://github.com/benibela/internettools)
  
After everything is installed, open the file `md.lpi` by using Lazarus IDE.  
To compile and build the source code of FMD select `Run -> Build`. If everything is ok, the binary file should be in `FMD_source_code_folder/bin`.  

By default `InternetTools` uses [FLRE](https://github.com/BeRo1985/flre) and [PUCU](https://github.com/BeRo1985/PUCU) for its regex engine. Just copy the `FLRE.pas` and `PUCU.pas` to `InternetTools\data` folder. You can use Sorokin's RegExpr engine that comes with lazarus by adjusting the defines. But it's not recommended since the author of `InternetTools` prefer FLRE and doesn't always check the Sorokin's RegExpr compatibility when making an update.

Try to `Clean up and build` within lazarus if it still fail to compile.

Some other external 3rd party tools and libraries are used as well:  
[![7-Zip](https://img.shields.io/badge/7--Zip%20(Standalone)-19.00-Blue?style=plastic&color=blue)](https://www.7-zip.org)  
[![Duktape](https://img.shields.io/badge/Duktape-2.5.0-Blue?style=plastic&color=blue)](https://github.com/grijjy/DelphiDuktape)  
[![WebP (libwebp)](https://img.shields.io/badge/WebP%20(libwebp)-1.1.0-Blue?style=plastic&color=blue)](https://github.com/webmproject/libwebp/)  
[![Lua](https://img.shields.io/badge/Lua-5.4.2-Blue?style=plastic&color=blue)](http://www.lua.org/download)  
[![OpenSSL](https://img.shields.io/badge/OpenSSL-1.1.1g-Blue?style=plastic&color=blue)](https://www.openssl.org/)  
[![SQLite](https://img.shields.io/badge/SQLite-3.46.0-Blue?style=plastic&color=blue)](https://www.sqlite.org/)  
[![Brotli](https://img.shields.io/badge/Brotli-1.0.8-Blue?style=plastic&color=blue)](https://www.brotli.org/)  
  
These tools and libraries are not part of the source. You have to either download pre-compiled binaries, compile them yourself or just copy them from the latest FMD releases.  
  
## Localization

Translations are stored inside `languages` folder with `.po` extension.  
In order to translate FMD to your native language you can copy `fmd.po` and rename it to `fmd.xx.po`, where `xx` stand for two-letter language code.  
Additionally you can add country code at the end of language code. For reference you can look at http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes and http://en.wikipedia.org/wiki/ISO_3166-1. For example `id_ID` will be recognized as `Bahasa Indonesia (Indonesia)`.  
To translate the content of the file you need to use translation tools like [Poedit](https://poedit.net).  
Once you have finished translating all of its content you can launch FMD and it will automatically detect your new languages upon startup.
