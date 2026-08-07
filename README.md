# WebDNA Language Extension [![made-for-VSCode](https://img.shields.io/badge/Made%20for-VSCode-1f425f.svg)](https://code.visualstudio.com/) ![Maintained](https://img.shields.io/badge/maintained-yes-brightgreen.svg) ![Release Version](https://img.shields.io/badge/project%20stage-alpha-orange) [![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/danielgreyio/webdna-vscode)](https://github.com/danielgreyio/webdna-vscode/releases) [![WebDNA Version Support](https://img.shields.io/badge/webdna-%5E8.6-blue)](http://www.webdna.us/page.dna?numero=1)

This is a language extension for VSCode that will perform syntax highlighting on [WebDNA](http://www.webdna.us/) code. It is very much a work in progress and should be considered in 'alpha' as not everything is fully implemented or even tested!

## Current Language Support

### Features
In addition to general syntax highlighting (described below) this extension provides additional functionality such as:
1. Multi-File Support - Automatically recognizes htm, html, dna, tpl and inc files as potentially containing WebDNA and highlights accordingly.
2. Comment Block Highlighting - Anything code between WebDNA comment tags will be not be processed or highlighted- instead everything will be highlighted with one color allowing for quick identification of commented out code.
3. Any tag that is not recognized will, by default, be seen as a variable.
4. Basic Embeded Language Support - This extension will perform syntax highlighting for embeded languages automagically: IE HTML, SQL, CSS, JS, ect.
5. Context Based Highlighting - Tags only available within a context will be highlighted only when used within that context, only recognized parameters will be highlighted, ect. in order to help ensure better code and fewer bugs.

### Syntax Highlighting
Syntax Highlighting for WebDNA consists of a few components that each tag has: the tag name, potential tag parameters, and a potential tag context. 
1. Tag Name: The minimal level of support a tag will have will be support for highlighting of the tag name. If the tag has a corresponding closing tag, that will also be highlighted.
2. Tag Parameters: If a tag has support for parameter highlighting, then all supported parameters will be recognized and highlighted. If a parameter is not valid for the tag, it will not highlight.
3. Tag Contexts: If the tag has context highlighting support, then anything between the opening and closing tags will be subject to syntax highlighting unique to itself. For example, the Founditems tag (opening and closing) will only highlight if it is between search tags (or any other tag that would use the founditems tag). Another example would be any SQL code that is between the SQLExecute opening and closing tags will be highlighted appropriately for sql (but not outside of the context!).

### Supported Tags
| Tag                   | Name | Parameter | Context |
| -----------           |:------:|:------:|:------:|
| AddFields             | ✗        | ✗        | ✗        |
| AddLineItem           | ✗        | ✗        | ✗        |
| Append                | ✗        | ✗        | ✗        |
| AppendFile            | ✓        | ✓        | ✓        |
| AppleScript           | ✓        | N/A       | ✓        |
| ArrayGet              | ✗        | ✗        | ✗        |
| ArraySet              | ✗        | ✗        | ✗        |
| Authenticate          | ✓        | ✓        | N/A       |
| BoldWords             | ✓        | ✓        | ✓         |
| BioType               | ✗        | ✗        | N/A       |
| BrowserName           | ✓        | N/A       | N/A       |
| CalcFileCRC32         | ✓        | ✓         | N/A       |
| Capitalize            | ✓        | N/A       | ✓         |
| Cart                  | ✓        | N/A       | N/A       |
| Case                  | ✓        | ✓        | ✗         |
| ClearLineItems        | ✓        | ✓        | N/A       |
| CloseDatabase         | ✗        | ✗        | N/A       |
| Command               | ✓        | N/A       | N/A       |
| CommitDatabase        | ✗        | ✗        | N/A       |
| ConvertChars          | ✓        | ✓        | ✓        |
| ConvertWords          | ✓        | ✓        | ✓        |
| CopyFile              | ✓        | ✓        | N/A       |
| CopyFolder            | ✓        | ✓        | N/A       |
| CountChars            | ✓        | N/A       | ✓        |
| CountWords            | ✓        | ✓        | ✓        |
| CreateDB              | ✗        | ✗        | N/A       |
| CreateFolder          | ✓        | ✓        | N/A       |
| Date                  | ✓        | ✓        | N/A       |
| DBEncrypt             | ✗        | ✗        | N/A       |
| DDEConnect            | ✓        | ✓        | ✓        |
| DDESend               | ✓        | N/A       | ✓        |
| Decrypt               | ✓        | ✓        | ✓        |
| Default               | ✓        | N/A       | ✗        |
| Delete                | ✗        | ✗        | N/A       |
| DeleteFile            | ✓        | ✓        | N/A       |
| DeleteFolder          | ✓        | ✓        | N/A       |
| DOS                   | ✓        | N/A       | ✓        |
| ElapsedTime           | ✓        | N/A       | N/A      |
| Else                  | ✓        | N/A       | ✗        |
| Encrypt               | ✓        | ✓        | N/A       |
| ExclusiveLock         | ✓        | ✓        | ✓        |
| FileCompare           | ✓        | ✓        | N/A       |
| FileInfo              | ✓        | ✓        | ✓        |
| FindString            | ✓        | ✓        | N/A       |
| FlushCache            | ✓        | N/A       | N/A      |
| FlushDatabases        | ✓        | N/A       | N/A      |
| Format                | ✗        | ✗        | ✗        |
| FormVariables         | ✓        | ✓        | ✓        |
| FoundItems            | ✗        | ✗        | ✗        |
| FreeMemory            | ✓        | N/A       | N/A      |
| Function              | ✓        | ✓        | ✗        |
| GetChars              | ✓        | ✓        | ✓        |
| GetCookie             | ✓        | ✓        | N/A      |
| GetMIMEHeader         | ✓        | ✓        | N/A      |
| Grep                  | ✓        | ✓        | ✓        |
| Hide                  | ✗        | N/A      | ✗        |
| HideIf                | ✓        | ✓        | ✓        |
| HTML1                 | ✓        | N/A       | ✓        |
| HTML2                 | ✓        | N/A       | ✓        |
| HTML3                 | ✓        | N/A       | ✓        |
| HTTPMethod            | ✓        | N/A       | N/A      |
| If                    | ✓        | ✓         | ✗       |
| Include               | ✓        | ✗        | N/A       |
| Input                 | ✓        | N/A       | ✓        |
| Interpret             | ✓        | N/A       | ✓        |
| IPAddress             | ✓        | N/A       | N/A      |
| IsSecureClient        | ✓        | N/A       | N/A      |
| JSONStore             | ✗        | ✗        | ✗        |
| JSONStore2            | ✗        | ✗        | ✗        |
| LastAutoNumber        | ✓        | N/A       | N/A      |
| LastRandom            | ✓        | N/A       | N/A      |
| LineItems             | ✓        | N/A       | ✓        |
| ListChars             | ✓        | ✓        | ✓        |
| ListCookies           | ✓        | ✓        | ✓        |
| ListDatabases         | ✓        | N/A       | ✓        |
| ListFields            | ✓        | ✓        | ✓        |
| ListFiles             | ✓        | ✓        | ✓        |
| ListMIMEHeaders       | ✓        | ✓        | ✓        |
| ListPath              | ✓        | ✓        | ✓        |
| ListVariables         | ✓        | ✓        | ✓        |
| ListWords             | ✓        | ✓        | ✓        |
| Lookup                | ✓        | ✗        | N/A       |
| Loop                  | ✗        | ✗        | ✗        |
| LowerCase             | ✓        | ✓        | ✓        |
| Math                  | ✓        | ✓        | ✗        |
| Middle                | ✗        | ✗        | ✗        |
| MoveFile              | ✓        | ✓        | N/A       |
| OrderFile             | ✗        | ✗        | ✗        |
| Object                | ✗        | ✗        | ✗        |
| Password              | ✓        | N/A       | N/A      |
| PermRedirect          | ✓        | N/A       | N/A      |
| Platform              | ✓        | N/A       | N/A      |
| Product               | ✓        | N/A       | N/A      |
| Protect               | ✓        | ✓        | N/A      |
| Purchase              | ✓        | ✓        | N/A      |
| Random                | ✓        | ✓        | N/A      |
| Raw                   | ✓        | N/A       | ✗       |
| RawPost               | X        | N/A       | ✗       |
| RealIP                | ✓        | N/A       | N/A       |
| Redirect              | ✓        | ✓        | N/A      |
| Referrer              | ✓        | N/A       | N/A      |
| Referer               | ✓        | N/A       | N/A      |
| Regex                 | ✗        | ✗        | ✗        |
| RemoveHTML            | ✓        | ✓        | ✓        |
| RemoveLineItem        | ✓        | ✓        | N/A      |
| Replace               | ✗        | ✗        | ✗        |
| ReplaceFoundItems     | ✗        | N/A       | ✗        |
| Return                | ✓        | N/A       | ✗        |
| ReturnRaw             | ✗        | ✗        | ✗        |
| Scope                 | ✗        | ✗        | ✗        |
| Search                | ✗        | ✗        | ✗        |
| SendMail              | ✗        | ✗        | ✗        |
| Session               | ✗        | ✗        | N/A      |
| SessionAlive          | ✗        | ✗        | N/A      |
| SessionDate           | ✗        | ✗        | N/A      |
| SessionEnd            | ✗        | ✗        | N/A      |
| SessionIP             | ✗        | ✗        | N/A      |
| SessionIPMatch        | ✗        | ✗        | N/A      |
| SessionLife           | ✗        | ✗        | N/A      |
| SessionStart          | ✗        | ✗        | N/A      |
| SessionTime           | ✗        | ✗        | N/A      |
| SessionUTime          | ✗        | ✗        | N/A      |
| SetCookie             | ✓        | ✓        | N/A      |
| SetHeader             | ✗        | ✗        | ✗        |
| SetLineItem           | ✗        | ✗        | ✗        |
| SetMIMEHeader         | ✓        | ✓        | N/A      |
| Shell                 | ✓        | N/A       | ✗        |
| ShowIf                | ✓        | ✓        | ✓        |
| ShowNext              | ✗        | ✗        | ✗        |
| Spawn                 | ✓        | N/A       | ✓        |
| SQL                   | ✓        | ✓        | ✓        |
| SQLConnect            | ✓        | ✓        | ✓        |
| SQLDisconnect         | ✓        | ✓        | N/A      |
| SQLExecute            | ✓        | ✓        | ✓        |
| SQLInfo               | ✓        | ✓        | ✓        |
| SQLRelease            | ✓        | ✓        | N/A      |
| SQLResult             | ✓        | ✓        | ✓        |
| Store                 | ✗        | ✗        | ✗        |
| Switch                | ✓        | ✓        | ✗        |
| Table                 | ✗        | ✗        | ✗        |
| TCPConnect            | ✗        | ✗        | ✗        |
| TCPSend               | ✗        | ✗        | ✗        |
| Text                  | ✓        | ✓        | ✗        |
| Then                  | ✓        | N/A       | ✗        |
| ThisFile              | ✓        | N/A       | N/A      |
| ThisHost              | ✓        | N/A       | N/A      |
| ThisPort              | ✓        | N/A       | N/A      |
| ThisURL               | ✓        | N/A       | N/A      |
| ThisURLPlusGet        | ✓        | N/A       | N/A      |
| Time                  | ✓        | ✓        | N/A      |
| UnURL                 | ✓        | N/A       | ✓        |
| URL                   | ✓        | N/A       | ✓        |
| Uppercase             | ✓        | ✓        | ✓        |
| UserName              | ✓        | N/A       | N/A      |
| ValidCard             | ✓        | ✓        | N/A      |
| Version               | ✓        | N/A       | N/A      |
| Wait                  | ✗        | ✗        | N/A      |
| WaitForFile           | ✗        | ✗        | ✗        |
| WebServer             | ✓        | N/A       | N/A      |
| WriteFile             | ✓        | ✓        | ✓        |
| XMLNode               | ✗        | ✗        | ✗        |
| XMLNodes              | ✗        | ✗        | ✗        |
| XMLNodesAttributes    | ✗        | ✗        | ✗        |
| XMLParse              | ✗        | ✗        | ✗        |
| XSL                   | ✗        | ✗        | ✗        |
| XSLT                  | ✗        | ✗        | ✗        |
