# How I Organize My Research Archive

## Introduction

As (acting as of 04/14/2021) CTO of an incredibly complex product/services portfolio, I have a large amount of research material. I am writing this note on how I organize it and make it fully available to the world without any overhead on my part.

Short version:

### Documents

This means PDF, print to PDF of web page, other file types (doc/xls/whatever)

1) Bookmark the link where'er is appropriate in my taxonomy.
2) Download the URI to ~/ResearchMaterial
3) calibre (on Raberry pi) is using ~/ResearchMaterial and that folder is synced via nextcloud to the corporate file server so I can also use Docear/Polar/Zotero on my x86 vm

### NOtes

I use this git repository (notes-public) with a folder of markdown files.

I primarily use VsCode on the ras pi todo note taking (and of course longer document creation)
Occasionally on mobile (iOS), I  use Buffer and the WorkingCopy git client to make quick edits or capture something when I"m out 
and get inspired.

I heavily use Working Copy on my iPad Mini 5th Generation to do code review, issue cleanup etc and I use Calibre to load up a long research paepr and read it over. I also may access the folder directly via samba if I want to annotate.

## Source material

* <https://blogs.princeton.edu/librarian/2013/05/organizing-my-research-life-updated/>

## More detailed version

### Taxonomy

I use a single taxonomy across:

* e-mail folders
* bookmarks
* home directory
* notes folder (this repository)


It is:

```console
❯ ls
Board  CEO  CFO  CIO  CMO  COO  CTO  dotfiles  dotfiles-git  landed  notes-public  personal  PFVEMer
 ~/charles                                                                                                                                                                       15:03:47 
❯ 
```

* Board
* CEO
* CFO
* CIO
* COO
* CMO
* CTO

I then have division names or project/product names under those folders.

More coming soon , still dialing things in.
