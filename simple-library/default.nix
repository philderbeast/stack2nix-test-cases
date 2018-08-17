# Generated using stack2nix 0.2.
#
# Only works with sufficiently recent nixpkgs, e.g. "NIX_PATH=nixpkgs=https://github.com/NixOS/nixpkgs/archive/21a8239452adae3a4717772f4e490575586b2755.tar.gz".

{ pkgs ? (import <nixpkgs> {})
, compiler ? pkgs.haskell.packages.ghc843
}:

with pkgs.haskell.lib;

let
  stackPackages = { pkgs, stdenv, callPackage }:
    self: {
      array = null;
      base = null;
      binary = null;
      bytestring = null;
      containers = null;
      deepseq = null;
      directory = null;
      filepath = null;
      ghc-boot = null;
      ghc-boot-th = null;
      ghc-prim = null;
      ghci = null;
      hpc = null;
      integer-gmp = null;
      pretty = null;
      process = null;
      rts = null;
      template-haskell = null;
      terminfo = null;
      time = null;
      transformers = null;
      unix = null;
      "ALUT" = callPackage
        ({ mkDerivation, base, freealut, OpenAL, StateVar, stdenv
         , transformers
         }:
         mkDerivation {
           pname = "ALUT";
           version = "2.4.0.2";
           sha256 = "b8364da380f5f1d85d13e427851a153be2809e1838d16393e37566f34b384b87";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [ base OpenAL StateVar transformers ];
           librarySystemDepends = [ freealut ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/haskell-openal/ALUT";
           description = "A binding for the OpenAL Utility Toolkit";
           license = stdenv.lib.licenses.bsd3;
         }) {inherit (pkgs) freealut;};
      "ANum" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "ANum";
           version = "0.2.0.2";
           sha256 = "f6ae0d1b663100a2aa3dfdab12f4af0851408659eb5c2f78b8b443b0d29dbb1a";
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/DanBurton/ANum#readme";
           description = "Num instance for Applicatives provided via the ANum newtype";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "Agda" = callPackage
        ({ mkDerivation, alex, array, async, base, binary, blaze-html
         , boxes, bytestring, Cabal, containers, cpphs, data-hash, deepseq
         , directory, EdisonCore, edit-distance, emacs, equivalence
         , filemanip, filepath, geniplate-mirror, gitrev, happy, hashable
         , hashtables, haskeline, ieee754, mtl, murmur-hash, pretty, process
         , regex-tdfa, stdenv, stm, strict, template-haskell, text, time
         , transformers, unordered-containers, uri-encode, zlib
         }:
         mkDerivation {
           pname = "Agda";
           version = "2.5.4.1";
           sha256 = "7759aa76936e6a35325c2e186a7546553921775155a426c8edc9a234f58ab72f";
           isLibrary = true;
           isExecutable = true;
           enableSeparateDataOutput = true;
           setupHaskellDepends = [ base Cabal filemanip filepath process ];
           libraryHaskellDepends = [
             array async base binary blaze-html boxes bytestring containers
             data-hash deepseq directory EdisonCore edit-distance equivalence
             filepath geniplate-mirror gitrev hashable hashtables haskeline
             ieee754 mtl murmur-hash pretty process regex-tdfa stm strict
             template-haskell text time transformers unordered-containers
             uri-encode zlib
           ];
           libraryToolDepends = [ alex cpphs happy ];
           executableHaskellDepends = [ base directory filepath process ];
           executableToolDepends = [ emacs ];
           doHaddock = false;
           doCheck = false;
           postInstall = ''
             files=("$data/share/ghc-"*"/"*"-ghc-"*"/Agda-"*"/lib/prim/Agda/"{Primitive.agda,Builtin"/"*.agda})
             for f in "''${files[@]}" ; do
               $out/bin/agda $f
             done
             for f in "''${files[@]}" ; do
               $out/bin/agda -c --no-main $f
             done
             $out/bin/agda-mode compile
           '';
           homepage = "http://wiki.portal.chalmers.se/agda/";
           description = "A dependently typed functional programming language and proof assistant";
           license = "unknown";
         }) {};
      "Allure" = callPackage
        ({ mkDerivation, async, base, containers, enummapset, filepath
         , LambdaHack, optparse-applicative, random, stdenv
         , template-haskell, text, transformers, zlib
         }:
         mkDerivation {
           pname = "Allure";
           version = "0.8.3.0";
           sha256 = "6b83013281da6ccc5f0bf4c483a53acdbff7679c7234a1dfa57261c45a8cf8fb";
           isLibrary = false;
           isExecutable = true;
           enableSeparateDataOutput = true;
           executableHaskellDepends = [
             async base containers enummapset filepath LambdaHack
             optparse-applicative random template-haskell text transformers zlib
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://allureofthestars.com";
           description = "Near-future Sci-Fi roguelike and tactical squad game";
           license = "unknown";
         }) {};
      "BiobaseNewick" = callPackage
        ({ mkDerivation, aeson, attoparsec, base, binary, cereal
         , cereal-text, cmdargs, containers, fgl, ForestStructures
         , QuickCheck, stdenv, text, text-binary, vector
         }:
         mkDerivation {
           pname = "BiobaseNewick";
           version = "0.0.0.2";
           sha256 = "6432f684a75fd8a2cea59a5359a59f48020ead19119efaed7018ecae726d13bd";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             aeson attoparsec base binary cereal cereal-text containers fgl
             ForestStructures QuickCheck text text-binary vector
           ];
           executableHaskellDepends = [
             base cmdargs ForestStructures text vector
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/choener/BiobaseNewick";
           description = "Newick file format parser";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "Boolean" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "Boolean";
           version = "0.2.4";
           sha256 = "67216013b02b8ac5b534a1ef25f409f930eea1a85eae801933a01ad43145eef8";
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           description = "Generalized booleans and numbers";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "BoundedChan" = callPackage
        ({ mkDerivation, array, base, stdenv }:
         mkDerivation {
           pname = "BoundedChan";
           version = "1.0.3.0";
           sha256 = "531ceaed7f62844c2a63a7cbfdcab332ea5eaa218e9922ca3305580438adc46d";
           libraryHaskellDepends = [ array base ];
           doHaddock = false;
           doCheck = false;
           description = "Implementation of bounded channels";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "Cabal" = callPackage
        ({ mkDerivation, array, base, binary, bytestring, containers
         , deepseq, directory, filepath, mtl, parsec, pretty, process
         , stdenv, text, time, transformers, unix
         }:
         mkDerivation {
           pname = "Cabal";
           version = "2.2.0.1";
           sha256 = "02b5301304df73cea3c7d544b5026b228141dc3ac1d5b08c9a206f99aa330a7b";
           setupHaskellDepends = [ mtl parsec ];
           libraryHaskellDepends = [
             array base binary bytestring containers deepseq directory filepath
             mtl parsec pretty process text time transformers unix
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www.haskell.org/cabal/";
           description = "A framework for packaging Haskell software";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "ChannelT" = callPackage
        ({ mkDerivation, base, free, mmorph, mtl, stdenv, transformers-base
         }:
         mkDerivation {
           pname = "ChannelT";
           version = "0.0.0.7";
           sha256 = "3e215d425e3cfccf2e4d84b1402fb39a2081cb33b6556059db616e722a7c77a0";
           libraryHaskellDepends = [ base free mmorph mtl transformers-base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/pthariensflame/ChannelT";
           description = "Generalized stream processors";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "ChasingBottoms" = callPackage
        ({ mkDerivation, base, containers, mtl, QuickCheck, random, stdenv
         , syb
         }:
         mkDerivation {
           pname = "ChasingBottoms";
           version = "1.3.1.4";
           sha256 = "639867018f33a645305ff60f1bf9ecca2efea4ac630d8c8f9fd72d064db79e19";
           libraryHaskellDepends = [
             base containers mtl QuickCheck random syb
           ];
           doHaddock = false;
           doCheck = false;
           description = "For testing partial and infinite values";
           license = stdenv.lib.licenses.mit;
         }) {};
      "Clipboard" = callPackage
        ({ mkDerivation, base, directory, stdenv, unix, utf8-string, X11 }:
         mkDerivation {
           pname = "Clipboard";
           version = "2.3.2.0";
           sha256 = "3f82c8183a599025c5199ba50d0661512683e9cf29e6054858f1abe2ab8b25b7";
           libraryHaskellDepends = [ base directory unix utf8-string X11 ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://haskell.org/haskellwiki/Clipboard";
           description = "System clipboard interface";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "ClustalParser" = callPackage
        ({ mkDerivation, base, cmdargs, either-unwrap, parsec, stdenv, text
         , vector
         }:
         mkDerivation {
           pname = "ClustalParser";
           version = "1.2.3";
           sha256 = "fed67bdcb9d89d871b02f556e5a294d0ea6fd05576f92621a8797abff4325a72";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [ base parsec text vector ];
           executableHaskellDepends = [ base cmdargs either-unwrap ];
           doHaddock = false;
           doCheck = false;
           description = "Libary for parsing Clustal tools output";
           license = stdenv.lib.licenses.gpl3;
         }) {};
      "DAV" = callPackage
        ({ mkDerivation, base, bytestring, case-insensitive, containers
         , data-default, exceptions, haskeline, http-client, http-client-tls
         , http-types, lens, mtl, network, network-uri, optparse-applicative
         , stdenv, transformers, transformers-base, transformers-compat
         , utf8-string, xml-conduit, xml-hamlet
         }:
         mkDerivation {
           pname = "DAV";
           version = "1.3.2";
           sha256 = "613314357579b29e1d3fa8451b51e8b9a1307a2b33b65a3f2b2ef2bece025169";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             base bytestring case-insensitive containers data-default exceptions
             http-client http-client-tls http-types lens mtl transformers
             transformers-base transformers-compat utf8-string xml-conduit
             xml-hamlet
           ];
           executableHaskellDepends = [
             base bytestring case-insensitive containers data-default exceptions
             haskeline http-client http-client-tls http-types lens mtl network
             network-uri optparse-applicative transformers transformers-base
             transformers-compat utf8-string xml-conduit xml-hamlet
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://floss.scru.org/hDAV";
           description = "RFC 4918 WebDAV support";
           license = stdenv.lib.licenses.gpl3;
         }) {};
      "DRBG" = callPackage
        ({ mkDerivation, base, bytestring, cereal, cipher-aes128
         , crypto-api, cryptohash-cryptoapi, entropy, mtl, parallel
         , prettyclass, stdenv, tagged
         }:
         mkDerivation {
           pname = "DRBG";
           version = "0.5.5";
           sha256 = "21df3202486cc83c7cc3f867cb139eac9a3f69bd91b5f6b016ae026e03c33bfd";
           enableSeparateDataOutput = true;
           libraryHaskellDepends = [
             base bytestring cereal cipher-aes128 crypto-api
             cryptohash-cryptoapi entropy mtl parallel prettyclass tagged
           ];
           doHaddock = false;
           doCheck = false;
           description = "Deterministic random bit generator (aka RNG, PRNG) based HMACs, Hashes, and Ciphers";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "Decimal" = callPackage
        ({ mkDerivation, base, deepseq, stdenv }:
         mkDerivation {
           pname = "Decimal";
           version = "0.5.1";
           sha256 = "575ca5c65a8ea5a5bf2cd7b794a0d16622082cb501bf4b0327c5895c0b80f34c";
           libraryHaskellDepends = [ base deepseq ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/PaulJohnson/Haskell-Decimal";
           description = "Decimal numbers with variable precision";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "Diff" = callPackage
        ({ mkDerivation, array, base, pretty, stdenv }:
         mkDerivation {
           pname = "Diff";
           version = "0.3.4";
           sha256 = "77b7daec5a79ade779706748f11b4d9b8f805e57a68e7406c3b5a1dee16e0c2f";
           libraryHaskellDepends = [ array base pretty ];
           doHaddock = false;
           doCheck = false;
           description = "O(ND) diff algorithm in haskell";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "Earley" = callPackage
        ({ mkDerivation, base, ListLike, stdenv }:
         mkDerivation {
           pname = "Earley";
           version = "0.12.1.0";
           sha256 = "731493be9cb960c3159458dc24b1a217d6f26e1f46a840bef880accd04d5bd1d";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [ base ListLike ];
           doHaddock = false;
           doCheck = false;
           description = "Parsing all context-free grammars using Earley's algorithm";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "Ebnf2ps" = callPackage
        ({ mkDerivation, array, base, containers, directory, happy
         , old-time, stdenv, unix
         }:
         mkDerivation {
           pname = "Ebnf2ps";
           version = "1.0.15";
           sha256 = "0ecce7d721d6c8993fa6ba6cfb16f1101d85e00bbaf0b6941d36a00badea2b4b";
           isLibrary = false;
           isExecutable = true;
           executableHaskellDepends = [
             array base containers directory old-time unix
           ];
           executableToolDepends = [ happy ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/FranklinChen/Ebnf2ps";
           description = "Peter's Syntax Diagram Drawing Tool";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "EdisonAPI" = callPackage
        ({ mkDerivation, base, mtl, stdenv }:
         mkDerivation {
           pname = "EdisonAPI";
           version = "1.3.1";
           sha256 = "95a3b8d01599520a50456219b5a2e9f7832bcddaaeb8e94ce777bd87a4a6b56e";
           libraryHaskellDepends = [ base mtl ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://rwd.rdockins.name/edison/home/";
           description = "A library of efficient, purely-functional data structures (API)";
           license = stdenv.lib.licenses.mit;
         }) {};
      "EdisonCore" = callPackage
        ({ mkDerivation, array, base, containers, EdisonAPI, mtl
         , QuickCheck, stdenv
         }:
         mkDerivation {
           pname = "EdisonCore";
           version = "1.3.2.1";
           sha256 = "73c6014d07107a9ed21df76a59f70c9d68d64ac84cced35f7b628f1d792cf239";
           libraryHaskellDepends = [
             array base containers EdisonAPI mtl QuickCheck
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://rwd.rdockins.name/edison/home/";
           description = "A library of efficient, purely-functional data structures (Core Implementations)";
           license = stdenv.lib.licenses.mit;
         }) {};
      "FenwickTree" = callPackage
        ({ mkDerivation, base, QuickCheck, stdenv, template-haskell }:
         mkDerivation {
           pname = "FenwickTree";
           version = "0.1.2.1";
           sha256 = "9c172d62b24365e663a0355e8eaa34362a1a769c18a64391939a9b50e384f03c";
           enableSeparateDataOutput = true;
           libraryHaskellDepends = [ base QuickCheck template-haskell ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/mgajda/FenwickTree";
           description = "Data structure for fast query and update of cumulative sums";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "Fin" = callPackage
        ({ mkDerivation, base, natural-induction, peano, stdenv }:
         mkDerivation {
           pname = "Fin";
           version = "0.2.3.0";
           sha256 = "2fd02d1fc6426fb9b50db291d56b19dfc6da85cd3777f0aa64514c15a2b95ab2";
           libraryHaskellDepends = [ base natural-induction peano ];
           doHaddock = false;
           doCheck = false;
           description = "Finite totally-ordered sets";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "FindBin" = callPackage
        ({ mkDerivation, base, directory, filepath, stdenv }:
         mkDerivation {
           pname = "FindBin";
           version = "0.0.5";
           sha256 = "279c7967e0803ca3b9a0a1956ce7ba9b9a2294eb9f971bea8a557b5f80ddfda4";
           libraryHaskellDepends = [ base directory filepath ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/audreyt/findbin";
           description = "Locate directory of original program";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "FontyFruity" = callPackage
        ({ mkDerivation, base, binary, bytestring, containers, deepseq
         , directory, filepath, stdenv, text, vector, xml
         }:
         mkDerivation {
           pname = "FontyFruity";
           version = "0.5.3.3";
           sha256 = "b0d06e7c5eb1aa7ffd11a85598df05d034bab3a83130fdf37121f89136e0025c";
           libraryHaskellDepends = [
             base binary bytestring containers deepseq directory filepath text
             vector xml
           ];
           doHaddock = false;
           doCheck = false;
           description = "A true type file format loader";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "ForestStructures" = callPackage
        ({ mkDerivation, base, containers, fgl, QuickCheck, stdenv
         , unordered-containers, vector, vector-th-unbox
         }:
         mkDerivation {
           pname = "ForestStructures";
           version = "0.0.0.2";
           sha256 = "fe74067fee601844de5c839a115f2bd75d4a1be9f0ee8ec42c0150bcf886693f";
           libraryHaskellDepends = [
             base containers fgl QuickCheck unordered-containers vector
             vector-th-unbox
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/choener/ForestStructures";
           description = "Tree- and forest structures";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "GLFW-b" = callPackage
        ({ mkDerivation, base, bindings-GLFW, deepseq, stdenv }:
         mkDerivation {
           pname = "GLFW-b";
           version = "3.2.1.0";
           sha256 = "31c022e0ad63f259ff9fa582a235924786e929a95b52efae10a3d29fef7cb6a6";
           libraryHaskellDepends = [ base bindings-GLFW deepseq ];
           doHaddock = false;
           doCheck = false;
           description = "Bindings to GLFW OpenGL library";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "GLURaw" = callPackage
        ({ mkDerivation, base, OpenGLRaw, stdenv, transformers }:
         mkDerivation {
           pname = "GLURaw";
           version = "2.0.0.4";
           sha256 = "b863fd5cb26b1a37afb66ef8a81c0335bc073d33b0a67ec5190dfc62cb885dc4";
           libraryHaskellDepends = [ base OpenGLRaw transformers ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www.haskell.org/haskellwiki/Opengl";
           description = "A raw binding for the OpenGL graphics system";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "GLUT" = callPackage
        ({ mkDerivation, array, base, containers, OpenGL, StateVar, stdenv
         , transformers
         }:
         mkDerivation {
           pname = "GLUT";
           version = "2.7.0.14";
           sha256 = "5cf8f7700a6b6ac33e39b2d7bd300679a245ff7c1498eb423901134f9d302106";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             array base containers OpenGL StateVar transformers
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www.haskell.org/haskellwiki/Opengl";
           description = "A binding for the OpenGL Utility Toolkit";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "GenericPretty" = callPackage
        ({ mkDerivation, base, ghc-prim, pretty, stdenv }:
         mkDerivation {
           pname = "GenericPretty";
           version = "1.2.2";
           sha256 = "eeea7ae7081f866de6a83ab8c4c335806b8cbb679d85e416e6224384ffcdae3c";
           libraryHaskellDepends = [ base ghc-prim pretty ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/RazvanRanca/GenericPretty";
           description = "A generic, derivable, haskell pretty printer";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "Glob" = callPackage
        ({ mkDerivation, base, containers, directory, dlist, filepath
         , stdenv, transformers, transformers-compat
         }:
         mkDerivation {
           pname = "Glob";
           version = "0.9.2";
           sha256 = "8fc7134e9a930dd53fd168f200bde8ca07905365788f70adc6a1a4c413667ce5";
           libraryHaskellDepends = [
             base containers directory dlist filepath transformers
             transformers-compat
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://iki.fi/matti.niemenmaa/glob/";
           description = "Globbing library";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HCodecs" = callPackage
        ({ mkDerivation, array, base, bytestring, QuickCheck, random
         , semigroups, stdenv
         }:
         mkDerivation {
           pname = "HCodecs";
           version = "0.5.1";
           sha256 = "a724616b79ac12c2d661dc3f54cfa0e7d530d1ba3eafa1e6c3e7116e035a3143";
           libraryHaskellDepends = [
             array base bytestring QuickCheck random semigroups
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www-db.informatik.uni-tuebingen.de/team/giorgidze";
           description = "A library to read, write and manipulate MIDI, WAVE, and SoundFont2 files";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HDBC" = callPackage
        ({ mkDerivation, base, bytestring, containers, convertible, mtl
         , old-time, stdenv, text, time, utf8-string
         }:
         mkDerivation {
           pname = "HDBC";
           version = "2.4.0.2";
           sha256 = "670757fd674b6caf2f456034bdcb54812af2cdf2a32465d7f4b7f0baa377db5a";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             base bytestring containers convertible mtl old-time text time
             utf8-string
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/hdbc/hdbc";
           description = "Haskell Database Connectivity";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HDBC-mysql" = callPackage
        ({ mkDerivation, base, bytestring, Cabal, HDBC, mysqlclient
         , openssl, stdenv, time, utf8-string, zlib
         }:
         mkDerivation {
           pname = "HDBC-mysql";
           version = "0.7.1.0";
           sha256 = "81c985d4a243c965930fb412b3175ca799ba66985f8b6844014fd600df1da7cf";
           setupHaskellDepends = [ base Cabal ];
           libraryHaskellDepends = [ base bytestring HDBC time utf8-string ];
           librarySystemDepends = [ mysqlclient openssl zlib ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/ryantm/hdbc-mysql";
           description = "MySQL driver for HDBC";
           license = "LGPL";
         }) {inherit (pkgs) mysqlclient; inherit (pkgs) openssl; 
inherit (pkgs) zlib;};
      "HDBC-session" = callPackage
        ({ mkDerivation, base, HDBC, stdenv }:
         mkDerivation {
           pname = "HDBC-session";
           version = "0.1.2.0";
           sha256 = "aa057f18bbc9d2f9876152246682f546c9cf140192515c7c23b5be2fccc296e3";
           libraryHaskellDepends = [ base HDBC ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://khibino.github.io/haskell-relational-record/";
           description = "Bracketed connection for HDBC";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HPDF" = callPackage
        ({ mkDerivation, array, base, base64-bytestring, binary, bytestring
         , containers, errors, mtl, random, stdenv, vector, zlib
         }:
         mkDerivation {
           pname = "HPDF";
           version = "1.4.10";
           sha256 = "de2bfddd93eeef2129a2378e8dce486d086bec3c48ee2a1bf1a5fb01581607d4";
           libraryHaskellDepends = [
             array base base64-bytestring binary bytestring containers errors
             mtl random vector zlib
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www.alpheccar.org";
           description = "Generation of PDF documents";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HSet" = callPackage
        ({ mkDerivation, base, containers, hashable, hashtables, stdenv }:
         mkDerivation {
           pname = "HSet";
           version = "0.0.1";
           sha256 = "eba93be5a76581585ae33af6babe9c2718fae307d41989cd36a605d9b0e8d16a";
           libraryHaskellDepends = [ base containers hashable hashtables ];
           doHaddock = false;
           doCheck = false;
           description = "Faux heterogeneous sets";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HSlippyMap" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "HSlippyMap";
           version = "3.0.1";
           sha256 = "27eb37f3b1e70780173e732a949776fc0b0ecc5b1ba515c2e239d6545a2beb0d";
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/apeyroux/HSlippyMap";
           description = "OpenStreetMap Slippy Map";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HStringTemplate" = callPackage
        ({ mkDerivation, array, base, blaze-builder, bytestring, containers
         , deepseq, directory, filepath, mtl, old-locale, parsec, pretty
         , semigroups, stdenv, syb, template-haskell, text, time, void
         }:
         mkDerivation {
           pname = "HStringTemplate";
           version = "0.8.7";
           sha256 = "4f4ea4aa2e45e7c45821b87b0105c201fbadebc2f2d00c211e728403a0af6b0e";
           libraryHaskellDepends = [
             array base blaze-builder bytestring containers deepseq directory
             filepath mtl old-locale parsec pretty semigroups syb
             template-haskell text time void
           ];
           doHaddock = false;
           doCheck = false;
           description = "StringTemplate implementation in Haskell";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HSvm" = callPackage
        ({ mkDerivation, base, containers, stdenv }:
         mkDerivation {
           pname = "HSvm";
           version = "0.1.0.3.22";
           sha256 = "8dac8a583c762675f2d64138303618f017d6be95d59e60774ea7cbfc040dab04";
           libraryHaskellDepends = [ base containers ];
           doHaddock = false;
           doCheck = false;
           description = "Haskell Bindings for libsvm";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HTF" = callPackage
        ({ mkDerivation, aeson, array, base, base64-bytestring, bytestring
         , containers, cpphs, Diff, directory, haskell-src, HUnit
         , lifted-base, monad-control, mtl, old-time, pretty, process
         , QuickCheck, random, regex-compat, stdenv, text, time, unix
         , vector, xmlgen
         }:
         mkDerivation {
           pname = "HTF";
           version = "0.13.2.4";
           sha256 = "36c5cafd35683c37379a93098dea61e6194aa1b9cfd0cdad4e0f1643f4cf2bf6";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             aeson array base base64-bytestring bytestring containers cpphs Diff
             directory haskell-src HUnit lifted-base monad-control mtl old-time
             pretty process QuickCheck random regex-compat text time unix vector
             xmlgen
           ];
           executableHaskellDepends = [
             array base cpphs directory HUnit mtl old-time random text
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/skogsbaer/HTF/";
           description = "The Haskell Test Framework";
           license = stdenv.lib.licenses.lgpl21;
         }) {};
      "HTTP" = callPackage
        ({ mkDerivation, array, base, bytestring, mtl, network, network-uri
         , parsec, stdenv, time
         }:
         mkDerivation {
           pname = "HTTP";
           version = "4000.3.12";
           sha256 = "a3ff6a9c93771079121083f1691188fe45f84380118e0f76bc4578153c361990";
           libraryHaskellDepends = [
             array base bytestring mtl network network-uri parsec time
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/haskell/HTTP";
           description = "A library for client-side HTTP";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HUnit" = callPackage
        ({ mkDerivation, base, call-stack, deepseq, stdenv }:
         mkDerivation {
           pname = "HUnit";
           version = "1.6.0.0";
           sha256 = "7448e6b966e98e84b7627deba23f71b508e9a61e7bc571d74304a25d30e6d0de";
           libraryHaskellDepends = [ base call-stack deepseq ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/hspec/HUnit#readme";
           description = "A unit testing framework for Haskell";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HUnit-approx" = callPackage
        ({ mkDerivation, base, call-stack, HUnit, stdenv }:
         mkDerivation {
           pname = "HUnit-approx";
           version = "1.1.1.1";
           sha256 = "4a4327d328bb8b944c73ec211dd29e953e477f99fd3f9e28fe5200f02fa62baf";
           libraryHaskellDepends = [ base call-stack HUnit ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/goldfirere/HUnit-approx";
           description = "Approximate equality for floating point numbers with HUnit";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HaTeX" = callPackage
        ({ mkDerivation, base, bytestring, containers, hashable, matrix
         , parsec, QuickCheck, stdenv, text, transformers, wl-pprint-extras
         }:
         mkDerivation {
           pname = "HaTeX";
           version = "3.19.0.0";
           sha256 = "1fd977a582f44a62dafe32ad72acde8c0c01b0ae0ce5f7d6bbc4d91b68e24749";
           libraryHaskellDepends = [
             base bytestring containers hashable matrix parsec QuickCheck text
             transformers wl-pprint-extras
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/Daniel-Diaz/HaTeX/blob/master/README.md";
           description = "The Haskell LaTeX library";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HandsomeSoup" = callPackage
        ({ mkDerivation, base, containers, HTTP, hxt, hxt-http, mtl
         , network, network-uri, parsec, stdenv, transformers
         }:
         mkDerivation {
           pname = "HandsomeSoup";
           version = "0.4.2";
           sha256 = "0ae2dad3fbde1efee9e45b84b2aeb5b526cc7b3ea2cbc5715494f7bde3ceeefb";
           isLibrary = true;
           isExecutable = true;
           enableSeparateDataOutput = true;
           libraryHaskellDepends = [
             base containers HTTP hxt hxt-http mtl network network-uri parsec
             transformers
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/egonSchiele/HandsomeSoup";
           description = "Work with HTML more easily in HXT";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HaskellNet" = callPackage
        ({ mkDerivation, array, base, base64-string, bytestring, cryptohash
         , mime-mail, mtl, network, old-time, pretty, stdenv, text
         }:
         mkDerivation {
           pname = "HaskellNet";
           version = "0.5.1";
           sha256 = "3245d31ad76f9f9013a2f6e2285d73ed37376eeb073c100b9a6d19e87f0ca838";
           libraryHaskellDepends = [
             array base base64-string bytestring cryptohash mime-mail mtl
             network old-time pretty text
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/jtdaugherty/HaskellNet";
           description = "Client support for POP3, SMTP, and IMAP";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HaskellNet-SSL" = callPackage
        ({ mkDerivation, base, bytestring, connection, data-default
         , HaskellNet, network, stdenv, tls
         }:
         mkDerivation {
           pname = "HaskellNet-SSL";
           version = "0.3.4.0";
           sha256 = "83ae92547fd5d52b5b74402101ec254423abeac0c0725e14a112d6ffc843040f";
           enableSeparateDataOutput = true;
           libraryHaskellDepends = [
             base bytestring connection data-default HaskellNet network tls
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/dpwright/HaskellNet-SSL";
           description = "Helpers to connect to SSL/TLS mail servers with HaskellNet";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "Hoed" = callPackage
        ({ mkDerivation, array, base, bytestring, cereal, cereal-text
         , cereal-vector, clock, containers, deepseq, directory, hashable
         , libgraph, open-browser, primitive, process, QuickCheck
         , regex-tdfa, regex-tdfa-text, semigroups, stdenv, strict
         , template-haskell, terminal-size, text, transformers, uniplate
         , unordered-containers, vector, vector-th-unbox
         }:
         mkDerivation {
           pname = "Hoed";
           version = "0.5.1";
           sha256 = "a8f6dc9717e15642f00cd84a8d1030ac6a7c7870f7015e380bd728a843c3f4e7";
           libraryHaskellDepends = [
             array base bytestring cereal cereal-text cereal-vector clock
             containers deepseq directory hashable libgraph open-browser
             primitive process QuickCheck regex-tdfa regex-tdfa-text semigroups
             strict template-haskell terminal-size text transformers uniplate
             unordered-containers vector vector-th-unbox
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/MaartenFaddegon/Hoed";
           description = "Lightweight algorithmic debugging";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "HsOpenSSL" = callPackage
        ({ mkDerivation, base, bytestring, Cabal, network, openssl, stdenv
         , time
         }:
         mkDerivation {
           pname = "HsOpenSSL";
           version = "0.11.4.14";
           sha256 = "443d0271b24dbc6cb1736994f6e8c290ce502909738f4e03879b27d30bb47489";
           setupHaskellDepends = [ base Cabal ];
           libraryHaskellDepends = [ base bytestring network time ];
           librarySystemDepends = [ openssl ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/vshabanov/HsOpenSSL";
           description = "Partial OpenSSL binding for Haskell";
           license = stdenv.lib.licenses.publicDomain;
         }) {inherit (pkgs) openssl;};
      "HsOpenSSL-x509-system" = callPackage
        ({ mkDerivation, base, bytestring, HsOpenSSL, process, stdenv }:
         mkDerivation {
           pname = "HsOpenSSL-x509-system";
           version = "0.1.0.3";
           sha256 = "5bdcb7ae2faba07a374109fea0a1431ae09d080f8574e60ab7a351b46f931f92";
           libraryHaskellDepends = [ base bytestring HsOpenSSL process ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/redneb/HsOpenSSL-x509-system";
           description = "Use the system's native CA certificate store with HsOpenSSL";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "IPv6Addr" = callPackage
        ({ mkDerivation, aeson, attoparsec, base, iproute, network
         , network-info, random, stdenv, text
         }:
         mkDerivation {
           pname = "IPv6Addr";
           version = "1.1.0";
           sha256 = "494c10e6bacf79b35a0601b056bb89b82902c10ca3b9b3de41d8971ddf64ed38";
           libraryHaskellDepends = [
             aeson attoparsec base iproute network network-info random text
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/MichelBoucey/IPv6Addr";
           description = "Library to deal with IPv6 address text representations";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "Imlib" = callPackage
        ({ mkDerivation, array, base, imlib2, stdenv, X11 }:
         mkDerivation {
           pname = "Imlib";
           version = "0.1.2";
           sha256 = "3ed318a7777a3b0752327b7b128edb3a1d562202b480a6d6b793b79ed90ebd1c";
           libraryHaskellDepends = [ array base X11 ];
           librarySystemDepends = [ imlib2 ];
           doHaddock = false;
           doCheck = false;
           license = stdenv.lib.licenses.bsd3;
         }) {inherit (pkgs) imlib2;};
      "IntervalMap" = callPackage
        ({ mkDerivation, base, containers, deepseq, stdenv }:
         mkDerivation {
           pname = "IntervalMap";
           version = "0.6.0.0";
           sha256 = "8f7d0d81c23a2d2dc7e7333b82824070a53144d40e08741456c8afe078b2111a";
           libraryHaskellDepends = [ base containers deepseq ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www.chr-breitkopf.de/comp/IntervalMap";
           description = "Containers for intervals, with efficient search";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "JuicyPixels" = callPackage
        ({ mkDerivation, base, binary, bytestring, containers, deepseq, mtl
         , primitive, stdenv, transformers, vector, zlib
         }:
         mkDerivation {
           pname = "JuicyPixels";
           version = "3.2.9.5";
           sha256 = "849c6cf4a613f906f7e553a1baefe9c0dc61c13b41a5f5b9605cf80e328cc355";
           libraryHaskellDepends = [
             base binary bytestring containers deepseq mtl primitive
             transformers vector zlib
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/Twinside/Juicy.Pixels";
           description = "Picture loading/serialization (in png, jpeg, bitmap, gif, tga, tiff and radiance)";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "JuicyPixels-blp" = callPackage
        ({ mkDerivation, attoparsec, base, binary, bytestring, directory
         , filepath, hashable, JuicyPixels, optparse-simple, stdenv
         , text-show, unordered-containers, vector
         }:
         mkDerivation {
           pname = "JuicyPixels-blp";
           version = "0.1.0.1";
           sha256 = "2c8e0773e41fb841e90a36fb8c839670d2afebc6b89271f782fc5df250cbcc99";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             attoparsec base binary bytestring hashable JuicyPixels text-show
             vector
           ];
           executableHaskellDepends = [
             base bytestring directory filepath JuicyPixels optparse-simple
             text-show unordered-containers
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/NCrashed/JuicyPixels-blp#readme";
           description = "BLP format decoder/encoder over JuicyPixels library";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "JuicyPixels-extra" = callPackage
        ({ mkDerivation, base, JuicyPixels, stdenv }:
         mkDerivation {
           pname = "JuicyPixels-extra";
           version = "0.3.0";
           sha256 = "c5a03a9747bcd984924d6f7c9b4771188e297df82160e7d667ea8f4f671b0e22";
           revision = "3";
           editedCabalFile = "1xr4vjhzjw3ynibb6693dhcz2jbvbx4yg2bir8w2s98n37gwsxd7";
           enableSeparateDataOutput = true;
           libraryHaskellDepends = [ base JuicyPixels ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/mrkkrp/JuicyPixels-extra";
           description = "Efficiently scale, crop, flip images with JuicyPixels";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "JuicyPixels-scale-dct" = callPackage
        ({ mkDerivation, base, base-compat, carray, fft, JuicyPixels
         , stdenv
         }:
         mkDerivation {
           pname = "JuicyPixels-scale-dct";
           version = "0.1.2";
           sha256 = "f7381b88446224897e6677692bbdc39cb5b755216212f0ad8050046865cd3013";
           revision = "1";
           editedCabalFile = "1snx05qpllybd9yvy03p0lpnmimj0m24x1bxa4svxcsiv56yv9w8";
           libraryHaskellDepends = [
             base base-compat carray fft JuicyPixels
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/phadej/JuicyPixels-scale-dct#readme";
           description = "Scale JuicyPixels images with DCT";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "LambdaHack" = callPackage
        ({ mkDerivation, assert-failure, async, base, base-compat, binary
         , bytestring, containers, deepseq, directory, enummapset, filepath
         , ghc-prim, hashable, hsini, keys, miniutter, optparse-applicative
         , pretty-show, random, sdl2, sdl2-ttf, stdenv, stm
         , template-haskell, text, time, transformers, unordered-containers
         , vector, vector-binary-instances, zlib
         }:
         mkDerivation {
           pname = "LambdaHack";
           version = "0.8.3.0";
           sha256 = "5a9b23a893ba809d8f7ff1ef810d4d542fcd7419876aef4208cf237a3662076c";
           isLibrary = true;
           isExecutable = true;
           enableSeparateDataOutput = true;
           libraryHaskellDepends = [
             assert-failure async base base-compat binary bytestring containers
             deepseq directory enummapset filepath ghc-prim hashable hsini keys
             miniutter optparse-applicative pretty-show random sdl2 sdl2-ttf stm
             text time transformers unordered-containers vector
             vector-binary-instances zlib
           ];
           executableHaskellDepends = [
             assert-failure async base base-compat binary bytestring containers
             deepseq directory enummapset filepath ghc-prim hashable hsini keys
             miniutter optparse-applicative pretty-show random stm
             template-haskell text time transformers unordered-containers vector
             vector-binary-instances zlib
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://lambdahack.github.io";
           description = "A game engine library for tactical squad ASCII roguelike dungeon crawlers";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "LibZip" = callPackage
        ({ mkDerivation, base, bindings-libzip, bytestring, filepath, mtl
         , stdenv, time, utf8-string
         }:
         mkDerivation {
           pname = "LibZip";
           version = "1.0.1";
           sha256 = "a636e0202d2a3f60d894a814bd9834cf8c62313b67ccc48c295f02a4bebe425f";
           libraryHaskellDepends = [
             base bindings-libzip bytestring filepath mtl time utf8-string
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://bitbucket.org/astanin/hs-libzip/";
           description = "Bindings to libzip, a library for manipulating zip archives";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "List" = callPackage
        ({ mkDerivation, base, stdenv, transformers }:
         mkDerivation {
           pname = "List";
           version = "0.6.2";
           sha256 = "c4b92be1202fc59112018f76d5b17cd3a659ebc36384a46e000ab2fbaf99b878";
           revision = "1";
           editedCabalFile = "11ws93cdzz7k4nvcld2d74155mdgcvyi6f6an7gpf9z4k523c11n";
           libraryHaskellDepends = [ base transformers ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/yairchu/generator";
           description = "List monad transformer and class";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "ListLike" = callPackage
        ({ mkDerivation, array, base, bytestring, containers, deepseq
         , dlist, fmlist, stdenv, text, utf8-string, vector
         }:
         mkDerivation {
           pname = "ListLike";
           version = "4.6";
           sha256 = "c1cdec79a5f585a5839eea26a2afe6a37aab5ed2f402a16e7d59fe9a4e925a9a";
           revision = "2";
           editedCabalFile = "1mca2r4gjznqdh4kck5cjkn53isgkhvkf3ri09qsn7nsssvgki0g";
           libraryHaskellDepends = [
             array base bytestring containers deepseq dlist fmlist text
             utf8-string vector
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/JohnLato/listlike";
           description = "Generic support for list-like structures";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "MemoTrie" = callPackage
        ({ mkDerivation, base, newtype-generics, stdenv }:
         mkDerivation {
           pname = "MemoTrie";
           version = "0.6.9";
           sha256 = "1d6045b8fdf7b89ed6b495e535613f5091cdfc9cdfe05a862207e76ce205f794";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [ base newtype-generics ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/conal/MemoTrie";
           description = "Trie-based memo functions";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "MissingH" = callPackage
        ({ mkDerivation, array, base, containers, directory, filepath
         , hslogger, HUnit, mtl, network, old-locale, old-time, parsec
         , process, random, regex-compat, stdenv, time, unix
         }:
         mkDerivation {
           pname = "MissingH";
           version = "1.4.0.1";
           sha256 = "283f2afd46625d98b4e29f77edadfa5e6009a227812ee2ece10091ad6a7e9b71";
           revision = "1";
           editedCabalFile = "04syc14nz11fay6fm6nlixyflrfhpg4jiyxx6mnxrl6asd3cl989";
           libraryHaskellDepends = [
             array base containers directory filepath hslogger HUnit mtl network
             old-locale old-time parsec process random regex-compat time unix
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://software.complete.org/missingh";
           description = "Large utility library";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "MonadPrompt" = callPackage
        ({ mkDerivation, base, mtl, stdenv }:
         mkDerivation {
           pname = "MonadPrompt";
           version = "1.0.0.5";
           sha256 = "b012cbbe83650f741c7b7f6eafcc89dec299b0ac74a758b6f3a8cdfc5d3bbeda";
           libraryHaskellDepends = [ base mtl ];
           doHaddock = false;
           doCheck = false;
           description = "MonadPrompt, implementation & examples";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "MonadRandom" = callPackage
        ({ mkDerivation, base, mtl, primitive, random, stdenv, transformers
         , transformers-compat
         }:
         mkDerivation {
           pname = "MonadRandom";
           version = "0.5.1.1";
           sha256 = "abda4a297acf197e664695b839b4fb70f53e240f5420489dc21bcf6103958470";
           libraryHaskellDepends = [
             base mtl primitive random transformers transformers-compat
           ];
           doHaddock = false;
           doCheck = false;
           description = "Random-number generation monad";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "MusicBrainz" = callPackage
        ({ mkDerivation, aeson, base, bytestring, conduit, conduit-extra
         , HTTP, http-conduit, http-types, monad-control, resourcet, stdenv
         , text, time, time-locale-compat, transformers, unliftio-core
         , vector, xml-conduit, xml-types
         }:
         mkDerivation {
           pname = "MusicBrainz";
           version = "0.4";
           sha256 = "b9cbd130921da38a693abe3f3dd5e58c883b382d0b70c112e625b64158605629";
           libraryHaskellDepends = [
             aeson base bytestring conduit conduit-extra HTTP http-conduit
             http-types monad-control resourcet text time time-locale-compat
             transformers unliftio-core vector xml-conduit xml-types
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://floss.scru.org/hMusicBrainz";
           description = "interface to MusicBrainz XML2 and JSON web services";
           license = stdenv.lib.licenses.gpl3;
         }) {};
      "Network-NineP" = callPackage
        ({ mkDerivation, base, binary, bytestring, containers, convertible
         , exceptions, hslogger, monad-loops, monad-peel, mstate, mtl
         , network, NineP, regex-posix, stateref, stdenv, transformers
         }:
         mkDerivation {
           pname = "Network-NineP";
           version = "0.4.3";
           sha256 = "8169e46ddfd690b96f25bc9a577568a363a270c2bddbb9fb3e1e7f1959644ec3";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             base binary bytestring containers convertible exceptions hslogger
             monad-loops monad-peel mstate mtl network NineP regex-posix
             stateref transformers
           ];
           doHaddock = false;
           doCheck = false;
           description = "High-level abstraction over 9P protocol";
           license = "unknown";
         }) {};
      "NineP" = callPackage
        ({ mkDerivation, base, binary, stdenv }:
         mkDerivation {
           pname = "NineP";
           version = "0.0.2.1";
           sha256 = "4bb1516b9fb340118960043e0c72aa62316be8ff3f78cc8c1354e2fac96dd8cc";
           libraryHaskellDepends = [ base binary ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://9ph.googlecode.com";
           description = "9P2000 in pure Haskell";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "NoHoed" = callPackage
        ({ mkDerivation, base, stdenv, template-haskell }:
         mkDerivation {
           pname = "NoHoed";
           version = "0.1.1";
           sha256 = "9b663a234c034e0049126ae7f06d1756dc496012177bf18548c6d8caeec43b3d";
           libraryHaskellDepends = [ base template-haskell ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/pepeiborra/NoHoed";
           description = "Placeholder package to preserve debug ability via conditional builds";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "NumInstances" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "NumInstances";
           version = "1.4";
           sha256 = "cbdb2a49346f59ceb5ab38592d7bc52e5205580d431d0ac6d852fd9880e59679";
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/conal/NumInstances";
           description = "Instances of numeric classes for functions and tuples";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "ObjectName" = callPackage
        ({ mkDerivation, base, stdenv, transformers }:
         mkDerivation {
           pname = "ObjectName";
           version = "1.1.0.1";
           sha256 = "72dbef237580fd4e8567de2de752835bbadd3629f486d1586486d49a49aad210";
           libraryHaskellDepends = [ base transformers ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/svenpanne/ObjectName";
           description = "Explicitly handled object names";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "OneTuple" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "OneTuple";
           version = "0.2.2";
           sha256 = "d82e702485bcbdefbda0d12b6a250d318a269572ee58d63b60eee531e56624dc";
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           description = "Singleton Tuple";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "Only" = callPackage
        ({ mkDerivation, base, deepseq, stdenv }:
         mkDerivation {
           pname = "Only";
           version = "0.1";
           sha256 = "ab7aa193e8c257d3bda6b0b3c1cbcf74cdaa85ab08cb20c2dd62ba248c1ab265";
           revision = "1";
           editedCabalFile = "1ahk7p34kmh041mz7lyc10nhcxgv2i4z8nvzxvqm2x34gslmsbzr";
           libraryHaskellDepends = [ base deepseq ];
           doHaddock = false;
           doCheck = false;
           description = "The 1-tuple type or single-value \"collection\"";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "OpenAL" = callPackage
        ({ mkDerivation, base, ObjectName, OpenGL, StateVar, stdenv
         , transformers
         }:
         mkDerivation {
           pname = "OpenAL";
           version = "1.7.0.4";
           sha256 = "3989f6c4fe437843551004dd011c4308bf63d787ae4fbb8ce71d44b1b0b1f118";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             base ObjectName OpenGL StateVar transformers
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/haskell-openal/ALUT";
           description = "A binding to the OpenAL cross-platform 3D audio API";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "OpenGL" = callPackage
        ({ mkDerivation, base, bytestring, containers, GLURaw, ObjectName
         , OpenGLRaw, StateVar, stdenv, text, transformers
         }:
         mkDerivation {
           pname = "OpenGL";
           version = "3.0.2.2";
           sha256 = "4cba40fe8eecee67c8251556b4c05d9e98256c11d49c20e914f8232bfae67da7";
           libraryHaskellDepends = [
             base bytestring containers GLURaw ObjectName OpenGLRaw StateVar
             text transformers
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www.haskell.org/haskellwiki/Opengl";
           description = "A binding for the OpenGL graphics system";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "OpenGLRaw" = callPackage
        ({ mkDerivation, base, bytestring, containers, fixed, half, stdenv
         , text, transformers
         }:
         mkDerivation {
           pname = "OpenGLRaw";
           version = "3.3.0.2";
           sha256 = "f8b2c9baa88ab793795d7f6e524b41d92ea1d8cfef0a4dbcebc0792cc626d6ca";
           libraryHaskellDepends = [
             base bytestring containers fixed half text transformers
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www.haskell.org/haskellwiki/Opengl";
           description = "A raw binding for the OpenGL graphics system";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "ParsecTools" = callPackage
        ({ mkDerivation, base, parsec, stdenv }:
         mkDerivation {
           pname = "ParsecTools";
           version = "0.0.2.0";
           sha256 = "ef4843353127aa3e6f6ab0aece9f4245225d375802921e151a1751d797857a87";
           libraryHaskellDepends = [ base parsec ];
           doHaddock = false;
           doCheck = false;
           description = "Parsec combinators for more complex objects";
           license = stdenv.lib.licenses.gpl3;
         }) {};
      "QuasiText" = callPackage
        ({ mkDerivation, attoparsec, base, haskell-src-meta, stdenv
         , template-haskell, text, th-lift-instances
         }:
         mkDerivation {
           pname = "QuasiText";
           version = "0.1.2.6";
           sha256 = "e801d269e25263645ee66fc090040fe9b9c8a8e5bf10485801dd7a5a30e0f119";
           libraryHaskellDepends = [
             attoparsec base haskell-src-meta template-haskell text
             th-lift-instances
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/mikeplus64/QuasiText";
           description = "A QuasiQuoter for Text";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "QuickCheck" = callPackage
        ({ mkDerivation, base, containers, deepseq, random, stdenv
         , template-haskell, tf-random, transformers
         }:
         mkDerivation {
           pname = "QuickCheck";
           version = "2.11.3";
           sha256 = "488c5652139da0bac8b3e7d76f11320ded298549e62db530938bfee9ca981876";
           libraryHaskellDepends = [
             base containers deepseq random template-haskell tf-random
             transformers
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/nick8325/quickcheck";
           description = "Automatic testing of Haskell programs";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "RSA" = callPackage
        ({ mkDerivation, base, binary, bytestring, crypto-api
         , crypto-pubkey-types, SHA, stdenv
         }:
         mkDerivation {
           pname = "RSA";
           version = "2.3.0";
           sha256 = "eee76dc7f9dd2d2cdeb014af728ff56f2f5d2908212bd3bb8c5e89f5c6485333";
           libraryHaskellDepends = [
             base binary bytestring crypto-api crypto-pubkey-types SHA
           ];
           doHaddock = false;
           doCheck = false;
           description = "Implementation of RSA, using the padding schemes of PKCS#1 v2.1.";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "Rasterific" = callPackage
        ({ mkDerivation, base, bytestring, containers, dlist, FontyFruity
         , free, JuicyPixels, mtl, primitive, stdenv, transformers, vector
         , vector-algorithms
         }:
         mkDerivation {
           pname = "Rasterific";
           version = "0.7.3";
           sha256 = "fd0a8770acaf2c594b64aafd15e8288ec5af370d901ac03a933b642deb802279";
           libraryHaskellDepends = [
             base bytestring containers dlist FontyFruity free JuicyPixels mtl
             primitive transformers vector vector-algorithms
           ];
           doHaddock = false;
           doCheck = false;
           description = "A pure haskell drawing engine";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "RefSerialize" = callPackage
        ({ mkDerivation, base, binary, bytestring, containers, hashtables
         , stdenv, stringsearch
         }:
         mkDerivation {
           pname = "RefSerialize";
           version = "0.4.0";
           sha256 = "05b25eb1ab943d96119aa2acca678fc8f194c3411af521e3835f4de5c752bbb2";
           libraryHaskellDepends = [
             base binary bytestring containers hashtables stringsearch
           ];
           doHaddock = false;
           doCheck = false;
           description = "Write to and read from ByteStrings maintaining internal memory references";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "SCalendar" = callPackage
        ({ mkDerivation, base, containers, stdenv, text, time }:
         mkDerivation {
           pname = "SCalendar";
           version = "1.1.0";
           sha256 = "4971bf6df45953434088ba50d0e17dcc49a0e4c2dd37ad06385c1f87d87b348d";
           libraryHaskellDepends = [ base containers text time ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://www.researchgate.net/publication/311582722_Method_of_Managing_Resources_in_a_Telecommunication_Network_or_a_Computing_System";
           description = "This is a library for handling calendars and resource availability based on the \"top-nodes algorithm\" and set operations";
           license = stdenv.lib.licenses.mit;
         }) {};
      "SHA" = callPackage
        ({ mkDerivation, array, base, binary, bytestring, stdenv }:
         mkDerivation {
           pname = "SHA";
           version = "1.6.4.4";
           sha256 = "6bd950df6b11a3998bb1452d875d2da043ee43385459afc5f16d471d25178b44";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [ array base binary bytestring ];
           doHaddock = false;
           doCheck = false;
           description = "Implementations of the SHA suite of message digest functions";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "STMonadTrans" = callPackage
        ({ mkDerivation, array, base, mtl, stdenv }:
         mkDerivation {
           pname = "STMonadTrans";
           version = "0.4.3";
           sha256 = "574fd56cf74036c20d00a09d815659dbbb0ae51c8103d00c93cd9558ad3322db";
           revision = "1";
           editedCabalFile = "09kqrv9a4yhsdpix49h9qjw0j2fhxrgkjnfrnyxg1nspmqrvl50m";
           libraryHaskellDepends = [ array base mtl ];
           doHaddock = false;
           doCheck = false;
           description = "A monad transformer version of the ST monad";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "SVGFonts" = callPackage
        ({ mkDerivation, attoparsec, base, blaze-markup, blaze-svg
         , bytestring, cereal, cereal-vector, containers, data-default-class
         , diagrams-core, diagrams-lib, directory, parsec, split, stdenv
         , text, vector, xml
         }:
         mkDerivation {
           pname = "SVGFonts";
           version = "1.7";
           sha256 = "da3ccd65e0963473df035f4543b56dfc84b45edca540990050e5de444fa431cd";
           enableSeparateDataOutput = true;
           libraryHaskellDepends = [
             attoparsec base blaze-markup blaze-svg bytestring cereal
             cereal-vector containers data-default-class diagrams-core
             diagrams-lib directory parsec split text vector xml
           ];
           doHaddock = false;
           doCheck = false;
           description = "Fonts from the SVG-Font format";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "SafeSemaphore" = callPackage
        ({ mkDerivation, base, containers, stdenv, stm }:
         mkDerivation {
           pname = "SafeSemaphore";
           version = "0.10.1";
           sha256 = "21e5b737a378cae9e1faf85cab015316d4c84d4b37e6d9d202111cef8c4cef66";
           revision = "1";
           editedCabalFile = "1k61gqgfh6n3sj8ni8sfvpcm39nqc2msjfxk2pgmhfabvv48w5hv";
           libraryHaskellDepends = [ base containers stm ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/ChrisKuklewicz/SafeSemaphore";
           description = "Much safer replacement for QSemN, QSem, and SampleVar";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "SegmentTree" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "SegmentTree";
           version = "0.3";
           sha256 = "6188c1b1276d7fa0391098a563df73dd522d20b57dc5321fe3418a9e3ca84fc1";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           description = "Data structure for querying the set (or count) of intervals covering given point";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "ShellCheck" = callPackage
        ({ mkDerivation, aeson, base, bytestring, Cabal, containers
         , directory, mtl, parsec, process, QuickCheck, regex-tdfa, stdenv
         }:
         mkDerivation {
           pname = "ShellCheck";
           version = "0.5.0";
           sha256 = "2b9430736f48de17a60c035546a6a969c14392521bec30119e1c869017d3307c";
           isLibrary = true;
           isExecutable = true;
           setupHaskellDepends = [ base Cabal process ];
           libraryHaskellDepends = [
             aeson base bytestring containers directory mtl parsec process
             QuickCheck regex-tdfa
           ];
           executableHaskellDepends = [
             aeson base bytestring containers directory mtl parsec QuickCheck
             regex-tdfa
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://www.shellcheck.net/";
           description = "Shell script analysis tool";
           license = stdenv.lib.licenses.gpl3;
         }) {};
      "Spintax" = callPackage
        ({ mkDerivation, attoparsec, base, extra, mtl, mwc-random, stdenv
         , text
         }:
         mkDerivation {
           pname = "Spintax";
           version = "0.3.3";
           sha256 = "21df2193bf1216d55a0d43691182125993eeadc6f097eaf5eb995c23f2016b13";
           libraryHaskellDepends = [
             attoparsec base extra mtl mwc-random text
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/MichelBoucey/spintax";
           description = "Random text generation based on spintax";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "StateVar" = callPackage
        ({ mkDerivation, base, stdenv, stm, transformers }:
         mkDerivation {
           pname = "StateVar";
           version = "1.1.1.0";
           sha256 = "1a89cd2632c2fc384b4c71fdc12894cc1c3902badbf4771497437e4044274e80";
           libraryHaskellDepends = [ base stm transformers ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/haskell-opengl/StateVar";
           description = "State variables";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "Strafunski-StrategyLib" = callPackage
        ({ mkDerivation, base, directory, mtl, stdenv, syb, transformers }:
         mkDerivation {
           pname = "Strafunski-StrategyLib";
           version = "5.0.1.0";
           sha256 = "a018c7420289a381d2b491a753f685b9d691be07cea99855cc5c8e05d5a9a295";
           libraryHaskellDepends = [ base directory mtl syb transformers ];
           doHaddock = false;
           doCheck = false;
           description = "Library for strategic programming";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "TCache" = callPackage
        ({ mkDerivation, base, bytestring, containers, directory
         , hashtables, mtl, old-time, RefSerialize, stdenv, stm, text
         }:
         mkDerivation {
           pname = "TCache";
           version = "0.12.1";
           sha256 = "f134b45fcdd127fa1a4214f01d44dc34e994fed137cec63f4c4ea632363ab7bd";
           libraryHaskellDepends = [
             base bytestring containers directory hashtables mtl old-time
             RefSerialize stm text
           ];
           doHaddock = false;
           doCheck = false;
           description = "A Transactional cache with user-defined persistence";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "ViennaRNAParser" = callPackage
        ({ mkDerivation, base, parsec, ParsecTools, process, stdenv
         , transformers
         }:
         mkDerivation {
           pname = "ViennaRNAParser";
           version = "1.3.3";
           sha256 = "7ee941d106b8b0c57e1ca5104d19b94215721e4a7b8aeb53fa353d246efbaefe";
           libraryHaskellDepends = [
             base parsec ParsecTools process transformers
           ];
           doHaddock = false;
           doCheck = false;
           description = "Libary for parsing ViennaRNA package output";
           license = stdenv.lib.licenses.gpl3;
         }) {};
      "Win32-notify" = callPackage
        ({ mkDerivation, base, containers, directory, stdenv, Win32 }:
         mkDerivation {
           pname = "Win32-notify";
           version = "0.3.0.3";
           sha256 = "0c21dbe06cb1ce3b3e5f1aace0b7ee359b36e7cb057f8fe2c28c943150044116";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [ base containers directory Win32 ];
           doHaddock = false;
           doCheck = false;
           description = "A binding to part of the Win32 library for file notification";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "X11" = callPackage
        ({ mkDerivation, base, data-default, libX11, libXext, libXinerama
         , libXrandr, libXrender, libXScrnSaver, stdenv
         }:
         mkDerivation {
           pname = "X11";
           version = "1.9";
           sha256 = "10138e863d8c6f860aad1755a6f1a36949cc02d83e5afacf6677fb3999f10db9";
           libraryHaskellDepends = [ base data-default ];
           librarySystemDepends = [
             libX11 libXext libXinerama libXrandr libXrender libXScrnSaver
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/xmonad/X11";
           description = "A binding to the X11 graphics library";
           license = stdenv.lib.licenses.bsd3;
         }) {inherit (pkgs.xorg) libXScrnSaver; inherit (pkgs.xorg) libXext; 
inherit (pkgs.xorg) libXinerama; inherit (pkgs.xorg) libXrender;};
      "X11-xft" = callPackage
        ({ mkDerivation, base, libXft, stdenv, utf8-string, X11 }:
         mkDerivation {
           pname = "X11-xft";
           version = "0.3.1";
           sha256 = "4eba3fee62570e06447654030a62fb55f19587884bc2cef77a9c3b2c3458f8d1";
           libraryHaskellDepends = [ base utf8-string X11 ];
           libraryPkgconfigDepends = [ libXft ];
           doHaddock = false;
           doCheck = false;
           description = "Bindings to the Xft, X Free Type interface library, and some Xrender parts";
           license = "LGPL";
         }) {};
      "Xauth" = callPackage
        ({ mkDerivation, base, libXau, stdenv }:
         mkDerivation {
           pname = "Xauth";
           version = "0.1";
           sha256 = "ba332dea9ec152b3f676d22461eee81a657e16987c3dfb8249e9dbe0cda56ed7";
           libraryHaskellDepends = [ base ];
           libraryPkgconfigDepends = [ libXau ];
           doHaddock = false;
           doCheck = false;
           description = "A binding to the X11 authentication library";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "abstract-deque" = callPackage
        ({ mkDerivation, array, base, containers, random, stdenv, time }:
         mkDerivation {
           pname = "abstract-deque";
           version = "0.3";
           sha256 = "09aa10f38193a8275a7791b92a4f3a7192a304874637e2a35c897dde25d75ca2";
           libraryHaskellDepends = [ array base containers random time ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
           description = "Abstract, parameterized interface to mutable Deques";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "abstract-deque-tests" = callPackage
        ({ mkDerivation, abstract-deque, array, base, containers, HUnit
         , random, stdenv, test-framework, test-framework-hunit, time
         }:
         mkDerivation {
           pname = "abstract-deque-tests";
           version = "0.3";
           sha256 = "5f17fb4cc26559f81c777f494622907e8927181175eaa172fb6adbf14b2feba5";
           libraryHaskellDepends = [
             abstract-deque array base containers HUnit random test-framework
             test-framework-hunit time
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
           description = "A test-suite for any queue or double-ended queue satisfying an interface";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "abstract-par" = callPackage
        ({ mkDerivation, base, deepseq, stdenv }:
         mkDerivation {
           pname = "abstract-par";
           version = "0.3.3";
           sha256 = "248a8739bd902462cb16755b690b55660e196e58cc7e6ef8157a72c2a3d5d860";
           libraryHaskellDepends = [ base deepseq ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/simonmar/monad-par";
           description = "Type classes generalizing the functionality of the 'monad-par' library";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "accuerr" = callPackage
        ({ mkDerivation, base, bifunctors, lens, semigroups, stdenv }:
         mkDerivation {
           pname = "accuerr";
           version = "0.2.0.2";
           sha256 = "4f6a8230d2ad3bc274dea234208ce4f5282e2d9413a5da1f5505fc55a2fa9a36";
           libraryHaskellDepends = [ base bifunctors lens semigroups ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www.github.com/massysett/accuerr";
           description = "Data type like Either but with accumulating error type";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "ace" = callPackage
        ({ mkDerivation, attoparsec, base, blaze-html, blaze-markup
         , data-default, parsec, stdenv, text
         }:
         mkDerivation {
           pname = "ace";
           version = "0.6";
           sha256 = "d3472b659d26cf7ea9afa207ec24ac0314598de997722e636e9bfa24b3900738";
           libraryHaskellDepends = [
             attoparsec base blaze-html blaze-markup data-default parsec text
           ];
           doHaddock = false;
           doCheck = false;
           description = "Attempto Controlled English parser and printer";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "action-permutations" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "action-permutations";
           version = "0.0.0.1";
           sha256 = "a419ee59f996e5305afd96336a561a9fcf26844362eaa32ab6b747a8f9fd1466";
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           description = "Execute a set of actions (e.g. parsers) in each possible order";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "active" = callPackage
        ({ mkDerivation, base, lens, linear, semigroupoids, semigroups
         , stdenv, vector
         }:
         mkDerivation {
           pname = "active";
           version = "0.2.0.13";
           sha256 = "5d9a141d58bcefbf699ed233a22309ded671c25ed64bcee11a663d00731280fb";
           revision = "6";
           editedCabalFile = "0zq9j2hgapb9blvmd9y8kmczizw4a18kksnfqd1py1jzx7hr46n3";
           libraryHaskellDepends = [
             base lens linear semigroupoids semigroups vector
           ];
           doHaddock = false;
           doCheck = false;
           description = "Abstractions for animation";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "ad" = callPackage
        ({ mkDerivation, array, base, Cabal, cabal-doctest, comonad
         , containers, data-reify, erf, free, nats, reflection, semigroups
         , stdenv, transformers
         }:
         mkDerivation {
           pname = "ad";
           version = "4.3.5";
           sha256 = "9c5e754b1f0ff83490bcc30f5dfa8504de5a34ab8f7be03ac232882940dc8d60";
           revision = "5";
           editedCabalFile = "0yzyfqhsafzaqzj8wmjrj5ghm6jwbxya3wxc9sjl59j9q20jc4nq";
           setupHaskellDepends = [ base Cabal cabal-doctest ];
           libraryHaskellDepends = [
             array base comonad containers data-reify erf free nats reflection
             semigroups transformers
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/ekmett/ad";
           description = "Automatic Differentiation";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "adjunctions" = callPackage
        ({ mkDerivation, array, base, comonad, containers, contravariant
         , distributive, free, mtl, profunctors, semigroupoids, semigroups
         , stdenv, tagged, transformers, transformers-compat, void
         }:
         mkDerivation {
           pname = "adjunctions";
           version = "4.4";
           sha256 = "507c2ef55337ae61c805f8cbc1213dfd7d2b85187342675d662254b8d8a16ae9";
           revision = "1";
           editedCabalFile = "0582nnn3fab63nd7ng8smk2c8j7pciiyzfj1na34wqid2hs675as";
           libraryHaskellDepends = [
             array base comonad containers contravariant distributive free mtl
             profunctors semigroupoids semigroups tagged transformers
             transformers-compat void
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/ekmett/adjunctions/";
           description = "Adjunctions and representable functors";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "adler32" = callPackage
        ({ mkDerivation, base, bytestring, stdenv, zlib }:
         mkDerivation {
           pname = "adler32";
           version = "0.1.2.0";
           sha256 = "26b43c9f389f45ed792698ea4880d24ba56ab61c6f7cae51e582a05e0b5866a4";
           libraryHaskellDepends = [ base bytestring ];
           librarySystemDepends = [ zlib ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/redneb/hs-adler32";
           description = "An implementation of Adler-32, supporting rolling checksum operation";
           license = stdenv.lib.licenses.bsd3;
         }) {inherit (pkgs) zlib;};
      "aern2-mp" = callPackage
        ({ mkDerivation, base, convertible, hmpfr, hspec, integer-gmp
         , integer-logarithms, lens, mixed-types-num, QuickCheck, regex-tdfa
         , stdenv, template-haskell
         }:
         mkDerivation {
           pname = "aern2-mp";
           version = "0.1.2.0";
           sha256 = "9de6632ad943c044115e713f6c87078f33c37c6bde36ff472a5142a96cf53c8c";
           revision = "1";
           editedCabalFile = "09b92kf60m4v0xn2nm9h8wkg8wr7dc1na5c9mg2lk3kplf60sfvk";
           libraryHaskellDepends = [
             base convertible hmpfr hspec integer-gmp integer-logarithms lens
             mixed-types-num QuickCheck regex-tdfa template-haskell
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/michalkonecny/aern2";
           description = "Multi-precision floats via MPFR";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "aern2-real" = callPackage
        ({ mkDerivation, aern2-mp, aeson, base, bytestring, containers
         , convertible, hspec, lens, mixed-types-num, QuickCheck, random
         , stdenv, stm, transformers
         }:
         mkDerivation {
           pname = "aern2-real";
           version = "0.1.1.0";
           sha256 = "25e0428536b401d5a06fd3b169025747663359595b3cfcdb56a042be81d002eb";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             aern2-mp aeson base bytestring containers convertible hspec lens
             mixed-types-num QuickCheck stm transformers
           ];
           executableHaskellDepends = [
             aern2-mp base mixed-types-num QuickCheck random
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/michalkonecny/aern2";
           description = "Exact real numbers via Cauchy sequences and MPFR";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "aeson" = callPackage
        ({ mkDerivation, attoparsec, base, base-compat, bytestring
         , containers, deepseq, dlist, ghc-prim, hashable, scientific
         , stdenv, tagged, template-haskell, text, th-abstraction, time
         , time-locale-compat, unordered-containers, uuid-types, vector
         }:
         mkDerivation {
           pname = "aeson";
           version = "1.3.1.1";
           sha256 = "843f302f8186c1ee6e0d9c0630588e4c7fc0f41763333a2d0d4b6f07087a31c4";
           libraryHaskellDepends = [
             attoparsec base base-compat bytestring containers deepseq dlist
             ghc-prim hashable scientific tagged template-haskell text
             th-abstraction time time-locale-compat unordered-containers
             uuid-types vector
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/bos/aeson";
           description = "Fast JSON parsing and encoding";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "aeson-attoparsec" = callPackage
        ({ mkDerivation, aeson, attoparsec, base, stdenv }:
         mkDerivation {
           pname = "aeson-attoparsec";
           version = "0.0.0";
           sha256 = "a5868390477938b3086e820f4a432f9d6a3972454f561fc386520634eec72104";
           libraryHaskellDepends = [ aeson attoparsec base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/athanclark/aeson-attoparsec#readme";
           description = "Embed an Attoparsec text parser into an Aeson parser";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "aeson-better-errors" = callPackage
        ({ mkDerivation, aeson, base, bytestring, dlist, mtl, scientific
         , stdenv, text, transformers, transformers-compat
         , unordered-containers, vector, void
         }:
         mkDerivation {
           pname = "aeson-better-errors";
           version = "0.9.1.0";
           sha256 = "68f001bf055ec7b755d91019f2a0ef136307d157a231acddad6b4cc561f67327";
           libraryHaskellDepends = [
             aeson base bytestring dlist mtl scientific text transformers
             transformers-compat unordered-containers vector void
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/hdgarrood/aeson-better-errors";
           description = "Better error messages when decoding JSON values";
           license = stdenv.lib.licenses.mit;
         }) {};
      "aeson-casing" = callPackage
        ({ mkDerivation, aeson, base, stdenv }:
         mkDerivation {
           pname = "aeson-casing";
           version = "0.1.0.5";
           sha256 = "cfec563dc6822f035858a7190153d8818c200be565806b43b70f198bf5410577";
           libraryHaskellDepends = [ aeson base ];
           doHaddock = false;
           doCheck = false;
           description = "Tools to change the formatting of field names in Aeson instances";
           license = stdenv.lib.licenses.mit;
         }) {};
      "aeson-compat" = callPackage
        ({ mkDerivation, aeson, attoparsec, attoparsec-iso8601, base
         , base-compat, bytestring, containers, exceptions, hashable
         , scientific, stdenv, tagged, text, time, time-locale-compat
         , unordered-containers, vector
         }:
         mkDerivation {
           pname = "aeson-compat";
           version = "0.3.8";
           sha256 = "71e4434abe630c48644ebfc38b4fa04d16600187a8af8921f23f88f9ee089b48";
           revision = "1";
           editedCabalFile = "0ayf5hkhl63lmlxpl7w5zvnz0lvpxb2rwmf0wbslff0y2s449mbf";
           libraryHaskellDepends = [
             aeson attoparsec attoparsec-iso8601 base base-compat bytestring
             containers exceptions hashable scientific tagged text time
             time-locale-compat unordered-containers vector
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/phadej/aeson-compat#readme";
           description = "Compatibility layer for aeson";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "aeson-diff" = callPackage
        ({ mkDerivation, aeson, base, bytestring, edit-distance-vector
         , hashable, mtl, optparse-applicative, scientific, stdenv, text
         , unordered-containers, vector
         }:
         mkDerivation {
           pname = "aeson-diff";
           version = "1.1.0.5";
           sha256 = "61d9dd60b6c19dd5aa350b85083ebed3eab8d8611893db1279e55e43d7c7fbcf";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             aeson base bytestring edit-distance-vector hashable mtl scientific
             text unordered-containers vector
           ];
           executableHaskellDepends = [
             aeson base bytestring optparse-applicative text
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/thsutton/aeson-diff";
           description = "Extract and apply patches to JSON documents";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "aeson-extra" = callPackage
        ({ mkDerivation, aeson, aeson-compat, attoparsec
         , attoparsec-iso8601, base, base-compat-batteries, bytestring
         , containers, deepseq, exceptions, hashable, parsec
         , recursion-schemes, scientific, stdenv, template-haskell, text
         , these, time, unordered-containers, vector
         }:
         mkDerivation {
           pname = "aeson-extra";
           version = "0.4.1.1";
           sha256 = "d48a65d976cbf496c8e5e9c927118ffcc878d6a83adf2fc9cebd418186d6fdf8";
           revision = "1";
           editedCabalFile = "14blp4jmcd81ipxany6q7x706xj8fhy019a73c391n767r1nwpq1";
           libraryHaskellDepends = [
             aeson aeson-compat attoparsec attoparsec-iso8601 base
             base-compat-batteries bytestring containers deepseq exceptions
             hashable parsec recursion-schemes scientific template-haskell text
             these time unordered-containers vector
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/phadej/aeson-extra#readme";
           description = "Extra goodies for aeson";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "aeson-generic-compat" = callPackage
        ({ mkDerivation, aeson, base, stdenv }:
         mkDerivation {
           pname = "aeson-generic-compat";
           version = "0.0.1.2";
           sha256 = "6308ce74043a47289ee183918a362508677e9dd93fbed2b1033dc5132dca0422";
           libraryHaskellDepends = [ aeson base ];
           doHaddock = false;
           doCheck = false;
           description = "Compatible generic class names of Aeson";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "aeson-iproute" = callPackage
        ({ mkDerivation, aeson, base, iproute, stdenv, text
         , unordered-containers
         }:
         mkDerivation {
           pname = "aeson-iproute";
           version = "0.2";
           sha256 = "ee4d53338bfdc4a6ce0039dea24e797a0ff1e22c312b31be2e73ddc0bddf268f";
           libraryHaskellDepends = [
             aeson base iproute text unordered-containers
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/greydot/aeson-iproute";
           description = "Aeson instances for iproute types";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "aeson-picker" = callPackage
        ({ mkDerivation, aeson, base, lens, lens-aeson, stdenv, text }:
         mkDerivation {
           pname = "aeson-picker";
           version = "0.1.0.4";
           sha256 = "b20e23905c395d7b61fce6c5f6343758e3753a2dbee61800d3e15e753ac7c452";
           libraryHaskellDepends = [ aeson base lens lens-aeson text ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/ozzzzz/aeson-picker#readme";
           description = "Tiny library to get fields from JSON format";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "aeson-pretty" = callPackage
        ({ mkDerivation, aeson, attoparsec, base, base-compat, bytestring
         , cmdargs, scientific, stdenv, text, unordered-containers, vector
         }:
         mkDerivation {
           pname = "aeson-pretty";
           version = "0.8.7";
           sha256 = "c1c1ecc5e3abd004a6c4c256ee6f61da2a43d7f1452ffa391dee250df43b27d5";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             aeson base base-compat bytestring scientific text
             unordered-containers vector
           ];
           executableHaskellDepends = [
             aeson attoparsec base bytestring cmdargs
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/informatikr/aeson-pretty";
           description = "JSON pretty-printing library and command-line tool";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "aeson-qq" = callPackage
        ({ mkDerivation, aeson, attoparsec, base, base-compat
         , haskell-src-meta, parsec, scientific, stdenv, template-haskell
         , text, vector
         }:
         mkDerivation {
           pname = "aeson-qq";
           version = "0.8.2";
           sha256 = "6db252c94601efcb1ce395de0084ccf931a3525339ccdca011a740e7b11cc152";
           libraryHaskellDepends = [
             aeson attoparsec base base-compat haskell-src-meta parsec
             scientific template-haskell text vector
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/sol/aeson-qq#readme";
           description = "JSON quasiquoter for Haskell";
           license = stdenv.lib.licenses.mit;
         }) {};
      "aeson-typescript" = callPackage
        ({ mkDerivation, aeson, base, containers, interpolate, mtl, stdenv
         , template-haskell, text, th-abstraction, unordered-containers
         }:
         mkDerivation {
           pname = "aeson-typescript";
           version = "0.1.1.0";
           sha256 = "77a3b10384383f0188feef57015a896e89bac9882df4c83bed765f70b77aa46b";
           libraryHaskellDepends = [
             aeson base containers interpolate mtl template-haskell text
             th-abstraction unordered-containers
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/codedownio/aeson-typescript#readme";
           description = "Generate TypeScript definition files from your ADTs";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "aeson-utils" = callPackage
        ({ mkDerivation, aeson, attoparsec, base, bytestring, scientific
         , stdenv, text
         }:
         mkDerivation {
           pname = "aeson-utils";
           version = "0.3.0.2";
           sha256 = "71814b1be8849f945395eb81217a2ad464f2943134c50c09afd8a3126add4b1f";
           revision = "7";
           editedCabalFile = "0lnlmsn5imbapdhbza1175wm04ynn1w75llkhlk1akpanx1dnd15";
           libraryHaskellDepends = [
             aeson attoparsec base bytestring scientific text
           ];
           doHaddock = false;
           doCheck = false;
           description = "Utilities for working with Aeson";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "aeson-yak" = callPackage
        ({ mkDerivation, aeson, base, stdenv }:
         mkDerivation {
           pname = "aeson-yak";
           version = "0.1.1.3";
           sha256 = "af4355bc315a152592e9c06f5cc41bdb5ce7b236d85fe572a292c6bac02faa74";
           libraryHaskellDepends = [ aeson base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/tejon/aeson-yak";
           description = "Handle JSON that may or may not be a list, or exist";
           license = stdenv.lib.licenses.mit;
         }) {};
      "al" = callPackage
        ({ mkDerivation, base, c2hs, mtl, stdenv }:
         mkDerivation {
           pname = "al";
           version = "0.1.4.2";
           sha256 = "8bf0f3b3a05ea7b7b8e43da282e1952e5c532ed23247d3384d394cd5046cecd2";
           libraryHaskellDepends = [ base mtl ];
           libraryToolDepends = [ c2hs ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/phaazon/al";
           description = "OpenAL 1.1 raw API.";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "alarmclock" = callPackage
        ({ mkDerivation, async, base, clock, stdenv, stm, time
         , unbounded-delays
         }:
         mkDerivation {
           pname = "alarmclock";
           version = "0.5.0.2";
           sha256 = "2574a30897a9a63f09ba97a51f1aead1baeade3cd8b4b063a74d5bb8fa73d64c";
           libraryHaskellDepends = [
             async base clock stm time unbounded-delays
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://bitbucket.org/davecturner/alarmclock";
           description = "Wake up and perform an action at a certain time";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "alerts" = callPackage
        ({ mkDerivation, base, blaze-html, stdenv, text }:
         mkDerivation {
           pname = "alerts";
           version = "0.1.0.0";
           sha256 = "52418ed3abfff15e802506e5fb45f56d38eee020cb01af3f0acfe163c470ca68";
           libraryHaskellDepends = [ base blaze-html text ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/alx741/alerts#readme";
           description = "Alert messages for web applications";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "alex" = callPackage
        ({ mkDerivation, array, base, containers, directory, happy, stdenv
         }:
         mkDerivation {
           pname = "alex";
           version = "3.2.4";
           sha256 = "d58e4d708b14ff332a8a8edad4fa8989cb6a9f518a7c6834e96281ac5f8ff232";
           isLibrary = false;
           isExecutable = true;
           enableSeparateDataOutput = true;
           executableHaskellDepends = [ array base containers directory ];
           executableToolDepends = [ happy ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www.haskell.org/alex/";
           description = "Alex is a tool for generating lexical analysers in Haskell";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "alg" = callPackage
        ({ mkDerivation, base, stdenv, util }:
         mkDerivation {
           pname = "alg";
           version = "0.2.5.0";
           sha256 = "dd9344c61dffff753f22af7bdd71d1cfd33245d6b32d5f2c2898a2e208cc9c04";
           libraryHaskellDepends = [ base util ];
           doHaddock = false;
           doCheck = false;
           description = "Algebraic structures";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "algebra" = callPackage
        ({ mkDerivation, adjunctions, array, base, containers, distributive
         , mtl, nats, semigroupoids, semigroups, stdenv, tagged
         , transformers, void
         }:
         mkDerivation {
           pname = "algebra";
           version = "4.3.1";
           sha256 = "25982f929b6f9930ad4df7b2c4084da473178a6e1f33ccc556ec96ee6f541224";
           libraryHaskellDepends = [
             adjunctions array base containers distributive mtl nats
             semigroupoids semigroups tagged transformers void
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/ekmett/algebra/";
           description = "Constructive abstract algebra";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "almost-fix" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "almost-fix";
           version = "0.0.2";
           sha256 = "20597d015fe9b6bb6bfcb0eaee3eb58b28e38a1f4f43049ad0aeebcc6409a70f";
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           description = "Recurse while a predicate is satisfied";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "alsa-core" = callPackage
        ({ mkDerivation, alsaLib, base, extensible-exceptions, stdenv }:
         mkDerivation {
           pname = "alsa-core";
           version = "0.5.0.1";
           sha256 = "eb50495ef05ecc7c06a0147da7f0d3efde832a44d23caaf5172dc114882270ab";
           libraryHaskellDepends = [ base extensible-exceptions ];
           libraryPkgconfigDepends = [ alsaLib ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www.haskell.org/haskellwiki/ALSA";
           description = "Binding to the ALSA Library API (Exceptions)";
           license = stdenv.lib.licenses.bsd3;
           platforms = [ "i686-linux" "x86_64-linux" ];
         }) {inherit (pkgs) alsaLib;};
      "alsa-pcm" = callPackage
        ({ mkDerivation, alsa-core, alsaLib, array, base
         , extensible-exceptions, sample-frame, semigroups, stdenv
         , storable-record
         }:
         mkDerivation {
           pname = "alsa-pcm";
           version = "0.6.1";
           sha256 = "453d768f7b90aaa0b5fd5462bcd7f8f40a97aa9d0ca7dfc7e61fe69e74934e5d";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             alsa-core array base extensible-exceptions sample-frame semigroups
             storable-record
           ];
           libraryPkgconfigDepends = [ alsaLib ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www.haskell.org/haskellwiki/ALSA";
           description = "Binding to the ALSA Library API (PCM audio)";
           license = stdenv.lib.licenses.bsd3;
         }) {inherit (pkgs) alsaLib;};
      "alsa-seq" = callPackage
        ({ mkDerivation, alsa-core, alsaLib, array, base, bytestring
         , data-accessor, enumset, extensible-exceptions, poll, stdenv
         , transformers, utility-ht
         }:
         mkDerivation {
           pname = "alsa-seq";
           version = "0.6.0.7";
           sha256 = "06cda1e24993aaf0c3592b51a613cf1e187eea603dd77ad3a129a8a7b1e0b778";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             alsa-core array base bytestring data-accessor enumset
             extensible-exceptions poll transformers utility-ht
           ];
           libraryPkgconfigDepends = [ alsaLib ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www.haskell.org/haskellwiki/ALSA";
           description = "Binding to the ALSA Library API (MIDI sequencer)";
           license = stdenv.lib.licenses.bsd3;
         }) {inherit (pkgs) alsaLib;};
      "alternative-vector" = callPackage
        ({ mkDerivation, base, stdenv, vector }:
         mkDerivation {
           pname = "alternative-vector";
           version = "0.0.0";
           sha256 = "42474bc708dbc81e13a7850887cefc2596db47cb07423610094cd994f754c7b1";
           libraryHaskellDepends = [ base vector ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/athanclark/alternative-vector#readme";
           description = "Use vectors instead of lists for many and some";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "alternators" = callPackage
        ({ mkDerivation, base, lens, mmorph, mtl, newtype-generics, stdenv
         , stm, transformers
         }:
         mkDerivation {
           pname = "alternators";
           version = "1.0.0.0";
           sha256 = "44395b8b42193fdd78f94fd9f62560bfa69aef345a0fb2602df0d8d3613fd339";
           libraryHaskellDepends = [
             base lens mmorph mtl newtype-generics stm transformers
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/louispan/alternators#readme";
           description = "Handy functions when using transformers";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "amazonka" = callPackage
        ({ mkDerivation, amazonka-core, base, bytestring, conduit
         , conduit-extra, directory, exceptions, http-client, http-conduit
         , http-types, ini, mmorph, monad-control, mtl, resourcet, retry
         , stdenv, text, time, transformers, transformers-base
         , transformers-compat, void
         }:
         mkDerivation {
           pname = "amazonka";
           version = "1.6.0";
           sha256 = "3721892c87946c12bbd87ddba38d9e244aa962db190d8897c16a264c4f3fc41c";
           libraryHaskellDepends = [
             amazonka-core base bytestring conduit conduit-extra directory
             exceptions http-client http-conduit http-types ini mmorph
             monad-control mtl resourcet retry text time transformers
             transformers-base transformers-compat void
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Comprehensive Amazon Web Services SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-apigateway" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-apigateway";
           version = "1.6.0";
           sha256 = "56e63ecfbd8358d0d2766e08f8f2b08362bb435c1059a5791964089dbab75ae8";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon API Gateway SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-application-autoscaling" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-application-autoscaling";
           version = "1.6.0";
           sha256 = "5536a7d1c24cd5907b85bd743df5989d91cb3325602944062c9c640178a61df7";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Application Auto Scaling SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-appstream" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-appstream";
           version = "1.6.0";
           sha256 = "eb90692b932d62c4e7006d661b8022c4dd9f7d4dcc07e5499eceae14b33747df";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon AppStream SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-autoscaling" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-autoscaling";
           version = "1.6.0";
           sha256 = "1b52132b23ef899937d20cef595d9f8757f85861d142616bcb5ee0ba8ed5f8d3";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Auto Scaling SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-budgets" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-budgets";
           version = "1.6.0";
           sha256 = "ccc692856a7f7ddfba573cde6506108a30a59f641748ecc787aece894d7ce4b7";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Budgets SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-certificatemanager" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-certificatemanager";
           version = "1.6.0";
           sha256 = "1fdf93c685a1b348a851b793b170a0a2282b06dc65a91c016d4756ea5726aa6a";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Certificate Manager SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-cloudformation" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-cloudformation";
           version = "1.6.0";
           sha256 = "15e2c82574906a13d390f68f5a57a83f4bbfc37fb9ce590c9f73e00dcafa8335";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon CloudFormation SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-cloudfront" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-cloudfront";
           version = "1.6.0";
           sha256 = "956a60988ff3b9bef042bf523b63c882cd7b2c386483cc3f1d1d8534aad334a2";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon CloudFront SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-cloudhsm" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-cloudhsm";
           version = "1.6.0";
           sha256 = "e4227038a39486e8c390198997571ca1b14ebf5e15fec1146169da7378a41b5f";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon CloudHSM SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-cloudsearch" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-cloudsearch";
           version = "1.6.0";
           sha256 = "dd17345576acd8f44fd3af82f07b00fdce0781abbd51ab2df827fa48528c6394";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon CloudSearch SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-cloudsearch-domains" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-cloudsearch-domains";
           version = "1.6.0";
           sha256 = "24f0d36f9aeed5041fd893b8a0d60e5df6f31c8a126cead4652115c6b28f7ca7";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon CloudSearch Domain SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-cloudtrail" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-cloudtrail";
           version = "1.6.0";
           sha256 = "d9d99df96ac2e46321e0da7d1797f12472ee32011f126d2881a2f19aa7491c24";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon CloudTrail SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-cloudwatch" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-cloudwatch";
           version = "1.6.0";
           sha256 = "25c812b364b22d96d082e3598cd75d988cb8e3decdb8e3291a0deb9714dbee51";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon CloudWatch SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-cloudwatch-events" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-cloudwatch-events";
           version = "1.6.0";
           sha256 = "13fb5e436fc4c534d6e01c47ef23f589c01042f8a9d7efb622e89bd8f5d2ec4d";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon CloudWatch Events SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-cloudwatch-logs" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-cloudwatch-logs";
           version = "1.6.0";
           sha256 = "80e4e74af0fb29f5ecc04f4d956ba0e9950f7936c858c1ff84461b62ca87ee7d";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon CloudWatch Logs SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-codebuild" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-codebuild";
           version = "1.6.0";
           sha256 = "fdbf43578e0aa54c616b2daf8b442b32a8765b62da0c3b7f6b1df95f4e55a0ab";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon CodeBuild SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-codecommit" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-codecommit";
           version = "1.6.0";
           sha256 = "8a2f2630bfabd3c71fdb811a9bbafefb058ce085ad18c1756a82f59bdd682415";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon CodeCommit SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-codedeploy" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-codedeploy";
           version = "1.6.0";
           sha256 = "3315b99ab8851acb5ae1251344474e0ec03796e9fd59f1d18278abc7add3c2df";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon CodeDeploy SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-codepipeline" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-codepipeline";
           version = "1.6.0";
           sha256 = "c46eea221931601ced439454d3a3fe0030acccbb776bf153182010ca8f2ec043";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon CodePipeline SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-cognito-identity" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-cognito-identity";
           version = "1.6.0";
           sha256 = "3aac30e210d3fc0f45166b6211c4c61eb7cc4480fb550f106cd6206c8dc9b6d5";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Cognito Identity SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-cognito-idp" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-cognito-idp";
           version = "1.6.0";
           sha256 = "a98989c8ca10bb938fb4f27803920462fc8f88d7104cebb5106b9e3728e81fff";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Cognito Identity Provider SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-cognito-sync" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-cognito-sync";
           version = "1.6.0";
           sha256 = "5fde10d8e1f31e676433dfd32d061739d805a076ee58abd9c05d8faba36cf435";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Cognito Sync SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-config" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-config";
           version = "1.6.0";
           sha256 = "5cb03ebc049efbccfb48ab926e08f0e9824880bb349129601f724679fe42c9cd";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Config SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-core" = callPackage
        ({ mkDerivation, aeson, attoparsec, base, bifunctors, bytestring
         , case-insensitive, conduit, conduit-extra, cryptonite, deepseq
         , exceptions, hashable, http-client, http-conduit, http-types, lens
         , memory, mtl, resourcet, scientific, semigroups, stdenv, tagged
         , text, time, transformers, transformers-compat
         , unordered-containers, xml-conduit, xml-types
         }:
         mkDerivation {
           pname = "amazonka-core";
           version = "1.6.0";
           sha256 = "afe1c5b74aadc0222419bd792688fd179e4f5693aeb75b74232f770fff093dc9";
           libraryHaskellDepends = [
             aeson attoparsec base bifunctors bytestring case-insensitive
             conduit conduit-extra cryptonite deepseq exceptions hashable
             http-client http-conduit http-types lens memory mtl resourcet
             scientific semigroups tagged text time transformers
             transformers-compat unordered-containers xml-conduit xml-types
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Core data types and functionality for Amazonka libraries";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-datapipeline" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-datapipeline";
           version = "1.6.0";
           sha256 = "1b212dd70864ef1ccc45e3a7deca936e0e1803c97aacefc34fad966fd85f3ae5";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Data Pipeline SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-devicefarm" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-devicefarm";
           version = "1.6.0";
           sha256 = "d81b74b8b0c254a487ce464b1d6f0679d774bd42daf32312867e4dd37e35c569";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Device Farm SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-directconnect" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-directconnect";
           version = "1.6.0";
           sha256 = "8d85b9ce865eac817610a3a1db2e28100ff0069b85f41c4359a6aa5978533832";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Direct Connect SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-discovery" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-discovery";
           version = "1.6.0";
           sha256 = "7bc67ad76b1413c2aebe48324d56b2e6f4279db6e7d4951e93bdaa5329199213";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Application Discovery Service SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-dms" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-dms";
           version = "1.6.0";
           sha256 = "a75f19dc2a7642840a97a135f24cd9120d3f5a81ad924aad6a46c514fba180f3";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Database Migration Service SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-ds" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-ds";
           version = "1.6.0";
           sha256 = "06fa338938aee62f81f93755cdc7039515dc0c6b32bb7c0bac33d7c92066d389";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Directory Service SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-dynamodb" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-dynamodb";
           version = "1.6.0";
           sha256 = "33f54ee4f898972f1539a00e65a851bb940c8d26058d63ddfcd07fbca57f9a3f";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon DynamoDB SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-dynamodb-streams" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-dynamodb-streams";
           version = "1.6.0";
           sha256 = "b3f832ddf70e95232cb79d71633276aa65c72e51c6c553118b4bc9db3a48e57f";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon DynamoDB Streams SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-ec2" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-ec2";
           version = "1.6.0";
           sha256 = "2221c2c4e188aac9f0c9e4bb2e0bce65eb21102e6199c3783c20f3797da955cc";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Elastic Compute Cloud SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-ecr" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-ecr";
           version = "1.6.0";
           sha256 = "42088ad4b4d4c01b87267a372fec706f57db4db19b27c06a3c6826ef62ef8450";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon EC2 Container Registry SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-ecs" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-ecs";
           version = "1.6.0";
           sha256 = "309535abe8359475b3430488c84c398ed8d25a05321101c725e4a04d5f4cde3f";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon EC2 Container Service SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-efs" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-efs";
           version = "1.6.0";
           sha256 = "268456294406d63eb49422027226af8ef15ce08dc2095be9a6657bf9bf41afbb";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Elastic File System SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-elasticache" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-elasticache";
           version = "1.6.0";
           sha256 = "e4a74a2ce2d89534fd738c429dc9a0ee7564ee3539bd93488eba211176763969";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon ElastiCache SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-elasticbeanstalk" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-elasticbeanstalk";
           version = "1.6.0";
           sha256 = "c1dc065763475b705aabf61086546bcd312e6802dbb328775b9777e682b2386a";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Elastic Beanstalk SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-elasticsearch" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-elasticsearch";
           version = "1.6.0";
           sha256 = "3429fcae1c6fec5ebbc8acf1597532615b39def394d2296d641614c0225f3083";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Elasticsearch Service SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-elastictranscoder" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-elastictranscoder";
           version = "1.6.0";
           sha256 = "ab12a7c97e09cd1a60e81525e793f5f7b84799f8f9968a2b62bae8b9c9f3c10a";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Elastic Transcoder SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-elb" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-elb";
           version = "1.6.0";
           sha256 = "59c974009a2c26f7d267ae9736c71893a82ae69c19f344b87b4e3afd19f97e4d";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Elastic Load Balancing SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-elbv2" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-elbv2";
           version = "1.6.0";
           sha256 = "2a53d35e29b613ac7261a3202023cb8221607fd8df5f034c572d6aa751c622c9";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Elastic Load Balancing SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-emr" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-emr";
           version = "1.6.0";
           sha256 = "e9a07458ee61feadeff2e98fc83c1542320d5b97744225304dc1cc568ad9774f";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Elastic MapReduce SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-gamelift" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-gamelift";
           version = "1.6.0";
           sha256 = "ebcdbd4a43c8d02dc0a0d7302f4b27c8e106a783e910c5cdaa68a7a7ee775ffc";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon GameLift SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-glacier" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-glacier";
           version = "1.6.0";
           sha256 = "5307434d1fbddfba54b56ceb5eea2e5dfa3ece05b9353e61a998788af3e0f913";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Glacier SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-health" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-health";
           version = "1.6.0";
           sha256 = "c216b18e93e998ff04b00a5fc3ab6df8d36ef95d4b9988587eceb837615ba67b";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Health APIs and Notifications SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-iam" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-iam";
           version = "1.6.0";
           sha256 = "a335813a795c3d28400b95b94f1b14ada3e621e83d07cb9fd9c7e7edb285905d";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Identity and Access Management SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-importexport" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-importexport";
           version = "1.6.0";
           sha256 = "0951f2bcd74e24c687ab39a044cfc9334b68fdb3c885d54693c918a1c97dcd04";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Import/Export SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-inspector" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-inspector";
           version = "1.6.0";
           sha256 = "bcef005e38e63b742c1d7c63de84f582a447042a19ea611b1b617751f3cce13e";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Inspector SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-iot" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-iot";
           version = "1.6.0";
           sha256 = "180b2169c97bd021e5f013cc72b64fe701270a7a5000950e20fa6373d38a26d0";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon IoT SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-iot-dataplane" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-iot-dataplane";
           version = "1.6.0";
           sha256 = "aee63bc0e6eca4cc4f76f7c8aa5e20f97e3f98268160006099014c66f4a88742";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon IoT Data Plane SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-kinesis" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-kinesis";
           version = "1.6.0";
           sha256 = "549e41d29e46ff6aa485676436cb7cf15d2d37c2d0c62e6358b9b12b92e22f38";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Kinesis SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-kinesis-analytics" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-kinesis-analytics";
           version = "1.6.0";
           sha256 = "7efb5438596ef4541ebca35e4b87adf3c989bf88032be2d2e617bb14a7f685ee";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Kinesis Analytics SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-kinesis-firehose" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-kinesis-firehose";
           version = "1.6.0";
           sha256 = "120545cdc888c031290b2f8a6745b911ebc6e2e5c077005067683118d197549c";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Kinesis Firehose SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-kms" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-kms";
           version = "1.6.0";
           sha256 = "7aa5333583b494d0a5585f78ead67833a7e72942b264673ee8b91d7be89e8e99";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Key Management Service SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-lambda" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-lambda";
           version = "1.6.0";
           sha256 = "649626896a7572979c5628e9406eb9be090106b7468473455e77aa59cec99b06";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Lambda SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-lightsail" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-lightsail";
           version = "1.6.0";
           sha256 = "741b4c6aff2f0e08fe9868aa858708a8ab36f95859bc0a9eecfdd9bd2060aceb";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Lightsail SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-marketplace-analytics" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-marketplace-analytics";
           version = "1.6.0";
           sha256 = "4d6c0db0e9c17b5131c6b03cd27bc53fbddb144c3910d46639edfdccbecd5d6a";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Marketplace Commerce Analytics SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-marketplace-metering" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-marketplace-metering";
           version = "1.6.0";
           sha256 = "672de14acac579673c8c3cf032c3806554355cc84ae1b61882a589af2afb5f77";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Marketplace Metering SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-ml" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-ml";
           version = "1.6.0";
           sha256 = "9dc12d7b71a72ea720efe9de60668ab904adddfdfbe9c422f5ebda940a556dfe";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Machine Learning SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-opsworks" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-opsworks";
           version = "1.6.0";
           sha256 = "9a4372339b8ec556331b0198b5faf74bd8116f0816176aa8626d31f3b372d918";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon OpsWorks SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-opsworks-cm" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-opsworks-cm";
           version = "1.6.0";
           sha256 = "4f9e9b755f70fffd15cea08d0dfef5dc23ee4f822471f8e89f4d9b2f77a748f4";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon OpsWorks for Chef Automate SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-pinpoint" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-pinpoint";
           version = "1.6.0";
           sha256 = "b0f8cdaabd9f357d5a687999ce83c7670f43023507ab9b25e94bc717f916b005";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Pinpoint SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-polly" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-polly";
           version = "1.6.0";
           sha256 = "773edcfa2628cb9e616b9f1f5fab461cd6f0e5822dafa43fef4403c54e958ad0";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Polly SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-rds" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-rds";
           version = "1.6.0";
           sha256 = "c793613c53773b3ba8c5db1fa342e68c25fcada39f8557c6ed39feb05f1bc24d";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Relational Database Service SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-redshift" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-redshift";
           version = "1.6.0";
           sha256 = "426ab96936e8d42ed85b31f076d99304148a6eb0896edbe90c6b1e570a90b329";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Redshift SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-rekognition" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-rekognition";
           version = "1.6.0";
           sha256 = "462e427021e5362747b155ba4f77e4c1d99d794087dca273697fae93aff532a8";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Rekognition SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-route53" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv, text }:
         mkDerivation {
           pname = "amazonka-route53";
           version = "1.6.0";
           sha256 = "68ef773bd9c44b28cb6166d86e3e499d9d32581915548ba08670f5cb1caa6317";
           libraryHaskellDepends = [ amazonka-core base text ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Route 53 SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-route53-domains" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-route53-domains";
           version = "1.6.0";
           sha256 = "f75bfe2f5f57c7367412479f3406cabcafa11a1436dd19f9a00ead6932e1a5ea";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Route 53 Domains SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-s3" = callPackage
        ({ mkDerivation, amazonka-core, base, lens, stdenv, text }:
         mkDerivation {
           pname = "amazonka-s3";
           version = "1.6.0";
           sha256 = "eca18ebbd0df13a78768d9665827c7624282f76d512b3cf8f0f22a3afd463f47";
           libraryHaskellDepends = [ amazonka-core base lens text ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Simple Storage Service SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-sdb" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-sdb";
           version = "1.6.0";
           sha256 = "b9c28b21326fdb78a0acee0968188ffb6fb156c7fe0faf688a2ec83d3f5fbdfd";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon SimpleDB SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-servicecatalog" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-servicecatalog";
           version = "1.6.0";
           sha256 = "11f8df3b1b2b43ec636eb5a428c43c8534eae9d9554071298688005bcb46f264";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Service Catalog SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-ses" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-ses";
           version = "1.6.0";
           sha256 = "778d32e738faae3fd1a7e12a67dddce063c0480740b95e1a58b5c23dc052bd02";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Simple Email Service SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-shield" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-shield";
           version = "1.6.0";
           sha256 = "b983a85b2b5a617bc3cbc911bc8d00a3fbf199ddd5dee67bdb3882b23747ebf4";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Shield SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-sms" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-sms";
           version = "1.6.0";
           sha256 = "fc4d359d2988d7604780a5eca5b3371d3d3034180e96d2cbc6148559f0cda47f";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Server Migration Service SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-snowball" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-snowball";
           version = "1.6.0";
           sha256 = "534b30fe9205ba1edf8b1c5c4f4f91dccbe124f95a599f5efdf0cc4cd502ee25";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Import/Export Snowball SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-sns" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-sns";
           version = "1.6.0";
           sha256 = "1d16b548031359ed593b14d172e7880847934e76bbedf535d014674414e37573";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Simple Notification Service SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-sqs" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-sqs";
           version = "1.6.0";
           sha256 = "743838707d28707095700afdf2d875ff34c5fe1d90b214f5a7e48be04c900433";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Simple Queue Service SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-ssm" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-ssm";
           version = "1.6.0";
           sha256 = "11218249760a2d06cfd5ad2b41bf67233b6178f86e2ab979c199088a5a1c701a";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Simple Systems Manager (SSM) SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-stepfunctions" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-stepfunctions";
           version = "1.6.0";
           sha256 = "99ac8e545d28d7d765e180a26572d216f88d1e6ab9a2cd0f0a874992fa89acbf";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Step Functions SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-storagegateway" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-storagegateway";
           version = "1.6.0";
           sha256 = "6f06376650f03107ebd13a622b77b1983da91c6030927e2d10afb4040b48b43d";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Storage Gateway SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-sts" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-sts";
           version = "1.6.0";
           sha256 = "36056b67d6f97a5b137f7ae35f39fb5417c61991333347129ed3e77f79a99a12";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Security Token Service SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-support" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-support";
           version = "1.6.0";
           sha256 = "7f434aef975f2817d4b9d7aa1c6055d788988e817fdb5c8fae20a787f26853e9";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Support SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-swf" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-swf";
           version = "1.6.0";
           sha256 = "1f0e437ba9c1511f46c64df16ae4551667fee39ade3c32f251f9e34b2255aa90";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon Simple Workflow Service SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-test" = callPackage
        ({ mkDerivation, aeson, amazonka-core, base, bifunctors, bytestring
         , case-insensitive, conduit, conduit-extra, groom, http-client
         , http-types, process, resourcet, stdenv, tasty, tasty-hunit
         , template-haskell, temporary, text, time, unordered-containers
         , yaml
         }:
         mkDerivation {
           pname = "amazonka-test";
           version = "1.6.0";
           sha256 = "46a8b77900370524a487f2ca0490473e23d0155664db2461c5504678d275dd28";
           libraryHaskellDepends = [
             aeson amazonka-core base bifunctors bytestring case-insensitive
             conduit conduit-extra groom http-client http-types process
             resourcet tasty tasty-hunit template-haskell temporary text time
             unordered-containers yaml
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Common functionality for Amazonka library test-suites";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-waf" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-waf";
           version = "1.6.0";
           sha256 = "880b9ec52be2d8fb0f5711d1e5357b0ce566e98b775e3bb7921e8f4295bbb980";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon WAF SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-workspaces" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-workspaces";
           version = "1.6.0";
           sha256 = "56cf348d8c519a4db23693e81cccf822975ec5b37e74dda54f9f020415c91c84";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon WorkSpaces SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amazonka-xray" = callPackage
        ({ mkDerivation, amazonka-core, base, stdenv }:
         mkDerivation {
           pname = "amazonka-xray";
           version = "1.6.0";
           sha256 = "8f510075361aa600cd7759763f4de55aed07b8a7cce65eb445dfcf9f475590f0";
           libraryHaskellDepends = [ amazonka-core base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/brendanhay/amazonka";
           description = "Amazon X-Ray SDK";
           license = stdenv.lib.licenses.mpl20;
         }) {};
      "amqp" = callPackage
        ({ mkDerivation, base, binary, bytestring, clock, connection
         , containers, data-binary-ieee754, monad-control, network
         , network-uri, split, stdenv, stm, text, vector, xml
         }:
         mkDerivation {
           pname = "amqp";
           version = "0.18.1";
           sha256 = "4678e2eb976df97e27cacbc4b1feafeb5a1800a9779b0a36666f04804f43e248";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             base binary bytestring clock connection containers
             data-binary-ieee754 monad-control network network-uri split stm
             text vector
           ];
           executableHaskellDepends = [ base containers xml ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/hreinhardt/amqp";
           description = "Client library for AMQP servers (currently only RabbitMQ)";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "annotated-wl-pprint" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "annotated-wl-pprint";
           version = "0.7.0";
           sha256 = "0c262d7fe13a9a50216438ec882c13e25f31236b886a5692e3c35b85cd773d18";
           revision = "1";
           editedCabalFile = "138k24qxvl90l7dwdw1b3w36mpw93n0xi0nljblqg88pxg7jcvjx";
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/david-christiansen/annotated-wl-pprint";
           description = "The Wadler/Leijen Pretty Printer, with annotation support";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "ansi-terminal" = callPackage
        ({ mkDerivation, base, colour, stdenv }:
         mkDerivation {
           pname = "ansi-terminal";
           version = "0.8.0.4";
           sha256 = "eb3cb8b0d0ce1c67ae3146c0b73a83e640c6f049d36bd6e859b6b951117e4810";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [ base colour ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/feuerbach/ansi-terminal";
           description = "Simple ANSI terminal support, with Windows compatibility";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "ansi-wl-pprint" = callPackage
        ({ mkDerivation, ansi-terminal, base, stdenv }:
         mkDerivation {
           pname = "ansi-wl-pprint";
           version = "0.6.8.2";
           sha256 = "a630721bd57678c3bfeb6c703f8249e434cbf85f40daceec4660fb8c6725cb3e";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [ ansi-terminal base ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/ekmett/ansi-wl-pprint";
           description = "The Wadler/Leijen Pretty Printer for colored ANSI terminal output";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "api-field-json-th" = callPackage
        ({ mkDerivation, aeson, base, lens, split, stdenv, template-haskell
         , text
         }:
         mkDerivation {
           pname = "api-field-json-th";
           version = "0.1.0.2";
           sha256 = "b8d49c3869bc8104539c43d5544ed2271d1e68a963440d781ee71d2252b0f724";
           libraryHaskellDepends = [
             aeson base lens split template-haskell text
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/nakaji-dayo/api-field-json-th";
           description = "option of aeson's deriveJSON";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "app-settings" = callPackage
        ({ mkDerivation, base, containers, directory, mtl, parsec, stdenv
         , text
         }:
         mkDerivation {
           pname = "app-settings";
           version = "0.2.0.11";
           sha256 = "6a14c69aca4e55cf27933475f5ae0ffead3a83f69f4233896eb13c41dccd50b1";
           libraryHaskellDepends = [
             base containers directory mtl parsec text
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/emmanueltouzery/app-settings";
           description = "A library to manage application settings (INI file-like)";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "appar" = callPackage
        ({ mkDerivation, base, bytestring, stdenv }:
         mkDerivation {
           pname = "appar";
           version = "0.1.4";
           sha256 = "58ea66abe4dd502d2fc01eecdb0828d5e214704a3c1b33b1f8b33974644c4b26";
           libraryHaskellDepends = [ base bytestring ];
           doHaddock = false;
           doCheck = false;
           description = "A simple applicative parser";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "apply-refact" = callPackage
        ({ mkDerivation, base, containers, directory, filemanip, filepath
         , ghc, ghc-exactprint, mtl, optparse-applicative, process, refact
         , stdenv, syb, temporary, transformers, unix-compat
         }:
         mkDerivation {
           pname = "apply-refact";
           version = "0.5.0.0";
           sha256 = "1f5fb9b53f5750c5c73e36f93a708189e15f7300cd2fb95da77ba87a215b74af";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             base containers directory filemanip ghc ghc-exactprint mtl process
             refact syb temporary transformers unix-compat
           ];
           executableHaskellDepends = [
             base containers directory filemanip filepath ghc ghc-exactprint mtl
             optparse-applicative process refact syb temporary transformers
             unix-compat
           ];
           doHaddock = false;
           doCheck = false;
           description = "Perform refactorings specified by the refact library";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "apportionment" = callPackage
        ({ mkDerivation, base, containers, stdenv, utility-ht }:
         mkDerivation {
           pname = "apportionment";
           version = "0.0.0.2";
           sha256 = "352d9564ffdb01d3312a1087f8badc544b3478185cbc27d4ca29fc1f18c9f82b";
           libraryHaskellDepends = [ base containers utility-ht ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://hub.darcs.net/thielema/apportionment";
           description = "Round a set of numbers while maintaining its sum";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "approximate" = callPackage
        ({ mkDerivation, base, binary, bytes, Cabal, cabal-doctest, cereal
         , comonad, deepseq, ghc-prim, hashable, lens, log-domain, pointed
         , safecopy, semigroupoids, semigroups, stdenv, vector
         }:
         mkDerivation {
           pname = "approximate";
           version = "0.3.1";
           sha256 = "d837f716d9e73d68a53a17321f0433dd9ffe71df24d550aed6a34ec1c2ad2ea2";
           setupHaskellDepends = [ base Cabal cabal-doctest ];
           libraryHaskellDepends = [
             base binary bytes cereal comonad deepseq ghc-prim hashable lens
             log-domain pointed safecopy semigroupoids semigroups vector
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/analytics/approximate/";
           description = "Approximate discrete values and numbers";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "arithmoi" = callPackage
        ({ mkDerivation, array, base, containers, exact-pi, ghc-prim
         , integer-gmp, integer-logarithms, mtl, random, stdenv, vector
         }:
         mkDerivation {
           pname = "arithmoi";
           version = "0.7.0.0";
           sha256 = "8b33049122c6194d61467b3685294c2c0029a3e877f481598f4b21b7285e030c";
           revision = "2";
           editedCabalFile = "1db2pcwip682f4zs1qnqzqqdswhqzbsxydy89m6zqm5ddlgrw5sq";
           configureFlags = [ "-f-llvm" ];
           libraryHaskellDepends = [
             array base containers exact-pi ghc-prim integer-gmp
             integer-logarithms mtl random vector
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/cartazio/arithmoi";
           description = "Efficient basic number-theoretic functions";
           license = stdenv.lib.licenses.mit;
         }) {};
      "array-memoize" = callPackage
        ({ mkDerivation, array, base, stdenv }:
         mkDerivation {
           pname = "array-memoize";
           version = "0.6.0";
           sha256 = "76c88cb3ed04875821a5601f6a1c40f4e15ef8cb36e8a3d4004df956d1db05dc";
           libraryHaskellDepends = [ array base ];
           doHaddock = false;
           doCheck = false;
           description = "Memoization combinators using arrays for finite sub-domains of functions";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "arrow-extras" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "arrow-extras";
           version = "0.1.0.1";
           sha256 = "c13c3aba839d1ec78a49991fa4038a68c5eb9ef6da61eceb6e68bc3ce0586a6c";
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/louispan/arrow-extras#readme";
           description = "Extra functions for Control.Arrow";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "arrow-list" = callPackage
        ({ mkDerivation, base, containers, mtl, stdenv }:
         mkDerivation {
           pname = "arrow-list";
           version = "0.7";
           sha256 = "33f836f23648aa2cea11533f7a9941127c397eecdca105b2084dded9e039d5d8";
           libraryHaskellDepends = [ base containers mtl ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/silkapp/arrow-list";
           description = "List arrows for Haskell";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "ascii-progress" = callPackage
        ({ mkDerivation, async, base, concurrent-output, data-default
         , stdenv, time
         }:
         mkDerivation {
           pname = "ascii-progress";
           version = "0.3.3.0";
           sha256 = "7e3fa6b80c09a83c9ba8a0644ef304ca92d65b76383b8dd023ff9f89ebec913e";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             async base concurrent-output data-default time
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/yamadapc/haskell-ascii-progress";
           description = "A simple progress bar for the console";
           license = stdenv.lib.licenses.mit;
         }) {};
      "asn1-encoding" = callPackage
        ({ mkDerivation, asn1-types, base, bytestring, hourglass, stdenv }:
         mkDerivation {
           pname = "asn1-encoding";
           version = "0.9.5";
           sha256 = "1e863bfd363f6c3760cc80f2c0d422e17845a9f79fe006030db202ecab5aaf29";
           libraryHaskellDepends = [ asn1-types base bytestring hourglass ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/vincenthz/hs-asn1";
           description = "ASN1 data reader and writer in RAW, BER and DER forms";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "asn1-parse" = callPackage
        ({ mkDerivation, asn1-encoding, asn1-types, base, bytestring
         , stdenv
         }:
         mkDerivation {
           pname = "asn1-parse";
           version = "0.9.4";
           sha256 = "c6a328f570c69db73f8d2416f9251e8a03753f90d5d19e76cbe69509a3ceb708";
           libraryHaskellDepends = [
             asn1-encoding asn1-types base bytestring
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/vincenthz/hs-asn1";
           description = "Simple monadic parser for ASN1 stream types";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "asn1-types" = callPackage
        ({ mkDerivation, base, bytestring, hourglass, memory, stdenv }:
         mkDerivation {
           pname = "asn1-types";
           version = "0.3.2";
           sha256 = "0c571fff4a10559c6a630d4851ba3cdf1d558185ce3dcfca1136f9883d647217";
           libraryHaskellDepends = [ base bytestring hourglass memory ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/vincenthz/hs-asn1-types";
           description = "ASN.1 types";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "assert-failure" = callPackage
        ({ mkDerivation, base, pretty-show, stdenv, text }:
         mkDerivation {
           pname = "assert-failure";
           version = "0.1.2.2";
           sha256 = "f69416fd527b4f6933586edfc9ee741a2163c3741471e9b8e46a244495bd4a9d";
           enableSeparateDataOutput = true;
           libraryHaskellDepends = [ base pretty-show text ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/Mikolaj/assert-failure";
           description = "Syntactic sugar improving 'assert' and 'error'";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "astro" = callPackage
        ({ mkDerivation, base, matrix, stdenv, time }:
         mkDerivation {
           pname = "astro";
           version = "0.4.2.1";
           sha256 = "da5dde1bcf42e4f48f5f23dbf3a890a2904ecaf86df3d75e365e071b924afe29";
           libraryHaskellDepends = [ base matrix time ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/aligusnet/astro";
           description = "Amateur astronomical computations";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "async" = callPackage
        ({ mkDerivation, base, hashable, stdenv, stm }:
         mkDerivation {
           pname = "async";
           version = "2.2.1";
           sha256 = "8f0b86022a1319d3c1c68655790da4b7f98017982e27ec3f3dbfe01029d39027";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [ base hashable stm ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/simonmar/async";
           description = "Run IO operations asynchronously and wait for their results";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "async-extra" = callPackage
        ({ mkDerivation, async, base, deepseq, split, stdenv }:
         mkDerivation {
           pname = "async-extra";
           version = "0.2.0.0";
           sha256 = "0d06d5a5cb835597ff1668ae58a1f0d048830164876838533dec4a78eb11cc43";
           libraryHaskellDepends = [ async base deepseq split ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/agrafix/async-extra#readme";
           description = "Useful concurrent combinators";
           license = stdenv.lib.licenses.mit;
         }) {};
      "async-refresh" = callPackage
        ({ mkDerivation, base, formatting, lifted-async, microlens
         , microlens-th, monad-logger, safe-exceptions, stdenv, stm, text
         , unliftio, unliftio-core
         }:
         mkDerivation {
           pname = "async-refresh";
           version = "0.3.0.0";
           sha256 = "da68061b2548a9b5b3e6f4af60120554ebfae9638dfa0b10cf7a244710a334c9";
           libraryHaskellDepends = [
             base formatting lifted-async microlens microlens-th monad-logger
             safe-exceptions stm text unliftio unliftio-core
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/mtesseract/async-refresh";
           description = "Package implementing core logic for refreshing of expiring data";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "async-refresh-tokens" = callPackage
        ({ mkDerivation, async-refresh, base, bytestring, formatting
         , microlens, microlens-th, monad-logger, safe-exceptions, stdenv
         , text, unliftio, unliftio-core
         }:
         mkDerivation {
           pname = "async-refresh-tokens";
           version = "0.4.0.0";
           sha256 = "67a7419449428fc5f80e9cfc392df115f03721811d6cd73a6c7cbd83f48dc7df";
           libraryHaskellDepends = [
             async-refresh base bytestring formatting microlens microlens-th
             monad-logger safe-exceptions text unliftio unliftio-core
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/mtesseract/async-refresh-tokens#readme";
           description = "Package implementing core logic for refreshing of expiring access tokens";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "async-timer" = callPackage
        ({ mkDerivation, async, base, safe-exceptions, stdenv, unliftio
         , unliftio-core
         }:
         mkDerivation {
           pname = "async-timer";
           version = "0.2.0.0";
           sha256 = "0632bfc4c141aa47c461747b3edb59f76ef5523a66ac03be0f32868a5e04cee0";
           libraryHaskellDepends = [
             async base safe-exceptions unliftio unliftio-core
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/mtesseract/async-timer#readme";
           description = "Provides API for timer based execution of IO actions";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "atom-basic" = callPackage
        ({ mkDerivation, base, base64-bytestring, bytestring, network
         , network-uri, stdenv, text, time
         }:
         mkDerivation {
           pname = "atom-basic";
           version = "0.2.5";
           sha256 = "24be9667b8bad3ad63b2e9b42fdea5aa0fd96f7e90f52fb1203adfa71d2f75ee";
           libraryHaskellDepends = [
             base base64-bytestring bytestring network network-uri text time
           ];
           doHaddock = false;
           doCheck = false;
           description = "Basic Atom feed construction";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "atom-conduit" = callPackage
        ({ mkDerivation, base, blaze-builder, conduit, conduit-combinators
         , lens-simple, mono-traversable, parsers, safe-exceptions, stdenv
         , text, time, timerep, uri-bytestring, xml-conduit, xml-types
         }:
         mkDerivation {
           pname = "atom-conduit";
           version = "0.5.0.1";
           sha256 = "8c88c5c77567753b56163bfa596f50a9cfdde28796e66bb194ca6d9057e831cd";
           libraryHaskellDepends = [
             base blaze-builder conduit conduit-combinators lens-simple
             mono-traversable parsers safe-exceptions text time timerep
             uri-bytestring xml-conduit xml-types
           ];
           doHaddock = false;
           doCheck = false;
           description = "Streaming parser/renderer for the Atom 1.0 standard (RFC 4287).";
           license = stdenv.lib.licenses.publicDomain;
         }) {};
      "atomic-primops" = callPackage
        ({ mkDerivation, base, ghc-prim, primitive, stdenv }:
         mkDerivation {
           pname = "atomic-primops";
           version = "0.8.2";
           sha256 = "67f8872e0c1e634d819a967365eb4ad514e9b2cde967fbc710da7cdc4d17d933";
           revision = "1";
           editedCabalFile = "0gdcd84x2s4jiry0was74rzv9l53an1q6ad8jiaj37fr4fim0wcc";
           libraryHaskellDepends = [ base ghc-prim primitive ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
           description = "A safe approach to CAS and other atomic ops in Haskell";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "atomic-write" = callPackage
        ({ mkDerivation, base, bytestring, directory, filepath, stdenv
         , temporary, text, unix-compat
         }:
         mkDerivation {
           pname = "atomic-write";
           version = "0.2.0.5";
           sha256 = "dbc7b4c31c734ad12d8f6c05b5d1384ee57f50ad8ff1a703d560b39e2f0458c5";
           libraryHaskellDepends = [
             base bytestring directory filepath temporary text unix-compat
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/stackbuilders/atomic-write";
           description = "Atomically write to a file";
           license = stdenv.lib.licenses.mit;
         }) {};
      "attoparsec" = callPackage
        ({ mkDerivation, array, base, bytestring, containers, deepseq
         , scientific, stdenv, text, transformers
         }:
         mkDerivation {
           pname = "attoparsec";
           version = "0.13.2.2";
           sha256 = "dd93471eb969172cc4408222a3842d867adda3dd7fb39ad8a4df1b121a67d848";
           libraryHaskellDepends = [
             array base bytestring containers deepseq scientific text
             transformers
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/bos/attoparsec";
           description = "Fast combinator parsing for bytestrings and text";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "attoparsec-base64" = callPackage
        ({ mkDerivation, attoparsec, base, bytestring, stdenv, text, word8
         }:
         mkDerivation {
           pname = "attoparsec-base64";
           version = "0.0.0";
           sha256 = "0833530c8b4a46217272d14638f91325e156b22046fa291b528228afe66173e7";
           libraryHaskellDepends = [ attoparsec base bytestring text word8 ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/athanclark/attoparsec-base64#readme";
           description = "Fetch only base64 characters, erroring in the attoparsec monad on failure";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "attoparsec-binary" = callPackage
        ({ mkDerivation, attoparsec, base, bytestring, stdenv }:
         mkDerivation {
           pname = "attoparsec-binary";
           version = "0.2";
           sha256 = "05e6445b20b396c99275de3e37bf8bb18559a5666ad5136907857bf574e77a0b";
           libraryHaskellDepends = [ attoparsec base bytestring ];
           doHaddock = false;
           doCheck = false;
           description = "Binary processing extensions to Attoparsec";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "attoparsec-expr" = callPackage
        ({ mkDerivation, attoparsec, base, stdenv }:
         mkDerivation {
           pname = "attoparsec-expr";
           version = "0.1.1.2";
           sha256 = "8d4cd436112ce9007d2831776d4c5102a5322c48993229d2d41e259c07bb457c";
           libraryHaskellDepends = [ attoparsec base ];
           doHaddock = false;
           doCheck = false;
           description = "Port of parsec's expression parser to attoparsec";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "attoparsec-ip" = callPackage
        ({ mkDerivation, attoparsec, base, ip, stdenv }:
         mkDerivation {
           pname = "attoparsec-ip";
           version = "0.0.1";
           sha256 = "8da5ca8ae483bbb8dacfae3a888fa9438f55f84f8605e7c769091ee5b6555629";
           libraryHaskellDepends = [ attoparsec base ip ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/athanclark/attoparsec-ip#readme";
           description = "Parse IP data types with attoparsec";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "attoparsec-iso8601" = callPackage
        ({ mkDerivation, attoparsec, base, base-compat, stdenv, text, time
         }:
         mkDerivation {
           pname = "attoparsec-iso8601";
           version = "1.0.0.0";
           sha256 = "aa6c6d87587383e386cb85e7ffcc4a6317aa8dafb8ba9a104ecac365ce2a858a";
           revision = "1";
           editedCabalFile = "06f7pgmmc8456p3hc1y23kz1y127gfczy7s00wz1rls9g2sm2vi4";
           libraryHaskellDepends = [ attoparsec base base-compat text time ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/bos/aeson";
           description = "Parsing of ISO 8601 dates, originally from aeson";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "attoparsec-path" = callPackage
        ({ mkDerivation, attoparsec, base, path, stdenv, text }:
         mkDerivation {
           pname = "attoparsec-path";
           version = "0.0.0.1";
           sha256 = "d07126622210fdb18722f585c61bda0a17389aecc83e786f9f6e621ec120b60c";
           libraryHaskellDepends = [ attoparsec base path text ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/athanclark/attoparsec-path#readme";
           description = "Convenience bindings between path and attoparsec";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "attoparsec-uri" = callPackage
        ({ mkDerivation, attoparsec, attoparsec-ip, base, bytedump, ip
         , stdenv, strict, text, vector
         }:
         mkDerivation {
           pname = "attoparsec-uri";
           version = "0.0.4";
           sha256 = "4e032ccaa65f96edac79556431ade75ad400371d0a5c19aeed6a7adbd3d2f1f3";
           libraryHaskellDepends = [
             attoparsec attoparsec-ip base bytedump ip strict text vector
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/athanclark/attoparsec-uri#readme";
           description = "URI parser / printer using attoparsec";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "audacity" = callPackage
        ({ mkDerivation, base, bytestring, deepseq, directory
         , explicit-exception, filepath, non-empty, semigroups, stdenv
         , storable-record, storablevector, tagchup, transformers
         , utility-ht, xml-basic
         }:
         mkDerivation {
           pname = "audacity";
           version = "0.0.2";
           sha256 = "d9d2dfb1c4e6ad39b535561feb720a7889dc1151ad6625fd5522d4212dbc26a4";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [
             base bytestring deepseq directory explicit-exception filepath
             non-empty semigroups storable-record storablevector tagchup
             transformers utility-ht xml-basic
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://hub.darcs.net/thielema/audacity";
           description = "Interchange with the Audacity sound signal editor";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "authenticate" = callPackage
        ({ mkDerivation, aeson, attoparsec, base, blaze-builder, bytestring
         , case-insensitive, conduit, containers, http-conduit, http-types
         , network-uri, resourcet, stdenv, tagstream-conduit, text
         , transformers, unordered-containers, xml-conduit
         }:
         mkDerivation {
           pname = "authenticate";
           version = "1.3.4";
           sha256 = "3fd566dbfdf75d81ad1bebd19facb9f01509ead6e27d9aed802404ecde932fb8";
           libraryHaskellDepends = [
             aeson attoparsec base blaze-builder bytestring case-insensitive
             conduit containers http-conduit http-types network-uri resourcet
             tagstream-conduit text transformers unordered-containers
             xml-conduit
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/yesodweb/authenticate";
           description = "Authentication methods for Haskell web applications";
           license = stdenv.lib.licenses.mit;
         }) {};
      "authenticate-oauth" = callPackage
        ({ mkDerivation, base, base64-bytestring, blaze-builder, bytestring
         , crypto-pubkey-types, data-default, http-client, http-types
         , random, RSA, SHA, stdenv, time, transformers, transformers-compat
         }:
         mkDerivation {
           pname = "authenticate-oauth";
           version = "1.6";
           sha256 = "d26d9f10fd57e06fa2af066df65e578ff3ec7541efc3e6648b29a743b13f8375";
           revision = "1";
           editedCabalFile = "1fxwn8bn6qs8dhxq0q04psq7zp1qvw1b6g3vmsclgyj9p7kr77ms";
           libraryHaskellDepends = [
             base base64-bytestring blaze-builder bytestring crypto-pubkey-types
             data-default http-client http-types random RSA SHA time
             transformers transformers-compat
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/yesodweb/authenticate";
           description = "Library to authenticate with OAuth for Haskell web applications";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "auto" = callPackage
        ({ mkDerivation, base, base-orphans, bytestring, cereal, containers
         , deepseq, MonadRandom, profunctors, random, semigroups, stdenv
         , transformers
         }:
         mkDerivation {
           pname = "auto";
           version = "0.4.3.1";
           sha256 = "c6e26d1cbb17e3645e55bc8e9432b124520fbcba5ff32445acd4260c25cd3b41";
           libraryHaskellDepends = [
             base base-orphans bytestring cereal containers deepseq MonadRandom
             profunctors random semigroups transformers
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/mstksg/auto";
           description = "Denotative, locally stateful programming DSL & platform";
           license = stdenv.lib.licenses.mit;
         }) {};
      "auto-update" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "auto-update";
           version = "0.1.4";
           sha256 = "5e96c151024e8bcaf4eaa932e16995872b2017f46124b967e155744d9580b425";
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/yesodweb/wai";
           description = "Efficiently run periodic, on-demand actions";
           license = stdenv.lib.licenses.mit;
         }) {};
      "autoexporter" = callPackage
        ({ mkDerivation, base, Cabal, directory, filepath, stdenv }:
         mkDerivation {
           pname = "autoexporter";
           version = "1.1.10";
           sha256 = "1938c27312af0adef6e2fc60a2870fd92dfe366800a420337bb6d46f0f44c265";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [ base Cabal directory filepath ];
           executableHaskellDepends = [ base Cabal directory filepath ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/tfausak/autoexporter#readme";
           description = "Automatically re-export modules";
           license = stdenv.lib.licenses.mit;
         }) {};
      "avro" = callPackage
        ({ mkDerivation, aeson, array, base, base16-bytestring, binary
         , bytestring, containers, data-binary-ieee754, entropy, fail
         , hashable, mtl, pure-zlib, scientific, semigroups, stdenv, tagged
         , template-haskell, text, unordered-containers, vector
         }:
         mkDerivation {
           pname = "avro";
           version = "0.3.4.2";
           sha256 = "fbac2392649062760419f69af66ac6cc18c3b0a70505c9f116c5a2218d43de3c";
           libraryHaskellDepends = [
             aeson array base base16-bytestring binary bytestring containers
             data-binary-ieee754 entropy fail hashable mtl pure-zlib scientific
             semigroups tagged template-haskell text unordered-containers vector
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/GaloisInc/avro#readme";
           description = "Avro serialization support for Haskell";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "avwx" = callPackage
        ({ mkDerivation, attoparsec, base, HTTP, lens, optparse-applicative
         , parsers, pretty-show, stdenv, text
         }:
         mkDerivation {
           pname = "avwx";
           version = "0.3.0.2";
           sha256 = "b4299cc4e05a4c94f53d06f05b30baac1e15c59663b59afd1dd32417a280fb0a";
           isLibrary = true;
           isExecutable = true;
           libraryHaskellDepends = [ attoparsec base HTTP lens parsers text ];
           executableHaskellDepends = [
             base optparse-applicative pretty-show text
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://www.hcesperer.org/posts/2016-09-20-avwx.html";
           description = "Parse aviation weather reports";
           license = stdenv.lib.licenses.mit;
         }) {};
      "backprop" = callPackage
        ({ mkDerivation, base, containers, deepseq, microlens, primitive
         , reflection, simple-reflect, stdenv, transformers, vector, vinyl
         }:
         mkDerivation {
           pname = "backprop";
           version = "0.2.5.0";
           sha256 = "aa2dbe41de6aa015cd3c0d9edb21ab24254d19b9205fbc440fc2a6cbccae6bf5";
           libraryHaskellDepends = [
             base containers deepseq microlens primitive reflection
             simple-reflect transformers vector vinyl
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://backprop.jle.im";
           description = "Heterogeneous automatic differentation";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "bank-holidays-england" = callPackage
        ({ mkDerivation, base, containers, stdenv, time }:
         mkDerivation {
           pname = "bank-holidays-england";
           version = "0.1.0.7";
           sha256 = "7a4af621db84fba450edcab43d275b5c3f5f8bf3ed5b5211d75e5275986ad4a4";
           libraryHaskellDepends = [ base containers time ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://bitbucket.org/davecturner/bank-holidays-england";
           description = "Calculation of bank holidays in England and Wales";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "barrier" = callPackage
        ({ mkDerivation, base, blaze-svg, bytestring, stdenv
         , template-haskell, text, unordered-containers
         }:
         mkDerivation {
           pname = "barrier";
           version = "0.1.1";
           sha256 = "6395da01eea1984c7bcc85c624b1b5dfbe0b6b764adeed7b04c9fa4d8de91ed9";
           revision = "1";
           editedCabalFile = "167akvi72l47gcqbq5609m24469pq0xmv0kjbmivnrxs796gh890";
           isLibrary = true;
           isExecutable = true;
           enableSeparateDataOutput = true;
           libraryHaskellDepends = [
             base blaze-svg bytestring template-haskell text
             unordered-containers
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/philopon/barrier";
           description = "Shields.io style badge generator";
           license = stdenv.lib.licenses.mit;
         }) {};
      "base-compat" = callPackage
        ({ mkDerivation, base, stdenv, unix }:
         mkDerivation {
           pname = "base-compat";
           version = "0.10.4";
           sha256 = "0d693707a70bcb553acd133129a9fbca0ea257eeebe714700de3e8fe404a574f";
           libraryHaskellDepends = [ base unix ];
           doHaddock = false;
           doCheck = false;
           description = "A compatibility layer for base";
           license = stdenv.lib.licenses.mit;
         }) {};
      "base-compat-batteries" = callPackage
        ({ mkDerivation, base, base-compat, stdenv }:
         mkDerivation {
           pname = "base-compat-batteries";
           version = "0.10.1";
           sha256 = "15578bafe45db81f7c7ad33253b2b047dab9b6df4ca7ca57f541d64084f113c9";
           libraryHaskellDepends = [ base base-compat ];
           doHaddock = false;
           doCheck = false;
           description = "base-compat with extra batteries";
           license = stdenv.lib.licenses.mit;
         }) {};
      "base-orphans" = callPackage
        ({ mkDerivation, base, ghc-prim, stdenv }:
         mkDerivation {
           pname = "base-orphans";
           version = "0.7";
           sha256 = "0aaddc39e3d0bba13acfcf0009ef57bf91d2ee74b295041d63e14c6caf4dee14";
           libraryHaskellDepends = [ base ghc-prim ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/haskell-compat/base-orphans#readme";
           description = "Backwards-compatible orphan instances for base";
           license = stdenv.lib.licenses.mit;
         }) {};
      "base-prelude" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "base-prelude";
           version = "1.3";
           sha256 = "e3cc66e99d6c83aac548c4d8e6a166e5bd9cf557947cde49161026d0341267fe";
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/nikita-volkov/base-prelude";
           description = "The most complete prelude formed solely from the \"base\" package";
           license = stdenv.lib.licenses.mit;
         }) {};
      "base-unicode-symbols" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "base-unicode-symbols";
           version = "0.2.2.4";
           sha256 = "a2f841430fec32edba778b74bde83bf0170ada7c5e2e59d7187c8f06d92dcca9";
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://haskell.org/haskellwiki/Unicode-symbols";
           description = "Unicode alternatives for common functions and operators";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "base16-bytestring" = callPackage
        ({ mkDerivation, base, bytestring, ghc-prim, stdenv }:
         mkDerivation {
           pname = "base16-bytestring";
           version = "0.1.1.6";
           sha256 = "5afe65a152c5418f5f4e3579a5e0d5ca19c279dc9bf31c1a371ccbe84705c449";
           libraryHaskellDepends = [ base bytestring ghc-prim ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://github.com/bos/base16-bytestring";
           description = "Fast base16 (hex) encoding and decoding for ByteStrings";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "base32string" = callPackage
        ({ mkDerivation, aeson, base, binary, bytestring, stdenv, text }:
         mkDerivation {
           pname = "base32string";
           version = "0.9.1";
           sha256 = "9e931613aeba5f630f9292fc99131388f406e4b34d8f050515ed93aaf632ea32";
           enableSeparateDataOutput = true;
           libraryHaskellDepends = [ aeson base binary bytestring text ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www.leonmergen.com/opensource.html";
           description = "Fast and safe representation of a Base-32 string";
           license = stdenv.lib.licenses.mit;
         }) {};
      "base58string" = callPackage
        ({ mkDerivation, aeson, base, binary, bytestring, stdenv, text }:
         mkDerivation {
           pname = "base58string";
           version = "0.10.0";
           sha256 = "3b72607dd76e30a5054acea656c3805f7191e27d67884a7db5fbc73c17e9c088";
           enableSeparateDataOutput = true;
           libraryHaskellDepends = [ aeson base binary bytestring text ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://www.leonmergen.com/opensource.html";
           description = "Fast and safe representation of a Base-58 string";
           license = stdenv.lib.licenses.mit;
         }) {};
      "base64-bytestring" = callPackage
        ({ mkDerivation, base, bytestring, stdenv }:
         mkDerivation {
           pname = "base64-bytestring";
           version = "1.0.0.1";
           sha256 = "ab25abf4b00a2f52b270bc3ed43f1d59f16c8eec9d7dffb14df1e9265b233b50";
           libraryHaskellDepends = [ base bytestring ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/bos/base64-bytestring";
           description = "Fast base64 encoding and decoding for ByteStrings";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "base64-bytestring-type" = callPackage
        ({ mkDerivation, aeson, base, base-compat, base64-bytestring
         , binary, bytestring, cereal, deepseq, hashable, QuickCheck, stdenv
         , text
         }:
         mkDerivation {
           pname = "base64-bytestring-type";
           version = "1";
           sha256 = "74019bd11f8012ae5ccc88c206bc5a8024f7605130099aabbac012073160e440";
           revision = "3";
           editedCabalFile = "18p6iz3b73qyf76azhfpcpgsc1fb2qhv889l0cj1niqlyp7kw69s";
           libraryHaskellDepends = [
             aeson base base-compat base64-bytestring binary bytestring cereal
             deepseq hashable QuickCheck text
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/futurice/haskell-base64-bytestring-type#readme";
           description = "A newtype around ByteString, for base64 encoding";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "base64-string" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "base64-string";
           version = "0.2";
           sha256 = "3ec896ca7261ad4ddeffbaa3bdf4d5cb61775250c303fca9929aa9a56acc705e";
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://urchin.earth.li/~ian/cabal/base64-string/";
           description = "Base64 implementation for String's";
           license = "unknown";
         }) {};
      "basement" = callPackage
        ({ mkDerivation, base, ghc-prim, stdenv }:
         mkDerivation {
           pname = "basement";
           version = "0.0.8";
           sha256 = "c7f41b97f2b0a71804c3c7d760047dc9adc9734e789084ca1198c4764ce192a4";
           revision = "1";
           editedCabalFile = "005w4d6bkx6xq1whgwna4rqmxc36vgjbvb8q35sh1z2s76l89ajy";
           libraryHaskellDepends = [ base ghc-prim ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/haskell-foundation/foundation#readme";
           description = "Foundation scrap box of array & string";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "basic-prelude" = callPackage
        ({ mkDerivation, base, bytestring, containers, filepath, hashable
         , stdenv, text, transformers, unordered-containers, vector
         }:
         mkDerivation {
           pname = "basic-prelude";
           version = "0.7.0";
           sha256 = "10755f892548faa956b81b40d1d03ec6e94609fd8ec8e92be09b4453b7ad9379";
           libraryHaskellDepends = [
             base bytestring containers filepath hashable text transformers
             unordered-containers vector
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/snoyberg/basic-prelude#readme";
           description = "An enhanced core prelude; a common foundation for alternate preludes";
           license = stdenv.lib.licenses.mit;
         }) {};
      "bbdb" = callPackage
        ({ mkDerivation, base, parsec, stdenv }:
         mkDerivation {
           pname = "bbdb";
           version = "0.8";
           sha256 = "dce7798cb8e46e1c0f7048579496cabeebddaba9b6233820fd0496723fbc2a5c";
           libraryHaskellDepends = [ base parsec ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/henrylaxen/bbdb";
           description = "Ability to read, write, and modify BBDB files";
           license = stdenv.lib.licenses.gpl3;
         }) {};
      "bcrypt" = callPackage
        ({ mkDerivation, base, bytestring, data-default, entropy, memory
         , stdenv
         }:
         mkDerivation {
           pname = "bcrypt";
           version = "0.0.11";
           sha256 = "e4331788eda7b65064d88930b4b7a50f5011bdec0ad46059d8c4ee6a5e72fcef";
           libraryHaskellDepends = [
             base bytestring data-default entropy memory
           ];
           doHaddock = false;
           doCheck = false;
           description = "Haskell bindings to the bcrypt password hash";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "beam-core" = callPackage
        ({ mkDerivation, aeson, base, bytestring, containers, dlist, free
         , ghc-prim, hashable, microlens, mtl, network-uri, stdenv, tagged
         , text, time, vector-sized
         }:
         mkDerivation {
           pname = "beam-core";
           version = "0.7.2.2";
           sha256 = "1231aedb995f40758924ad39d3476a51b3a186e5e849f3d4b284860838500f98";
           revision = "1";
           editedCabalFile = "1fvds5arsm0h81fw4rf5fsg5sa9jfqn350amhhc247f0hhjy3csf";
           libraryHaskellDepends = [
             aeson base bytestring containers dlist free ghc-prim hashable
             microlens mtl network-uri tagged text time vector-sized
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "http://travis.athougies.net/projects/beam.html";
           description = "Type-safe, feature-complete SQL query and manipulation interface for Haskell";
           license = stdenv.lib.licenses.mit;
         }) {};
      "beam-migrate" = callPackage
        ({ mkDerivation, aeson, base, beam-core, bytestring, containers
         , deepseq, dependent-map, dependent-sum, free, ghc-prim, hashable
         , haskell-src-exts, mtl, parallel, pqueue, pretty, scientific
         , stdenv, text, time, unordered-containers, uuid-types, vector
         }:
         mkDerivation {
           pname = "beam-migrate";
           version = "0.3.2.1";
           sha256 = "2d195926ead3ed550e5efddd32f87f4cc93a5bad6ac8c2906478387ed0f39373";
           revision = "1";
           editedCabalFile = "1ghg6n0dj63i0am7wh0cg95hwyf29gnkm0llrw3wb5pj8f7937gv";
           libraryHaskellDepends = [
             aeson base beam-core bytestring containers deepseq dependent-map
             dependent-sum free ghc-prim hashable haskell-src-exts mtl parallel
             pqueue pretty scientific text time unordered-containers uuid-types
             vector
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://travis.athougies.net/projects/beam.html";
           description = "SQL DDL support and migrations support library for Beam";
           license = stdenv.lib.licenses.mit;
         }) {};
      "bench" = callPackage
        ({ mkDerivation, base, criterion, optparse-applicative, process
         , silently, stdenv, text, turtle
         }:
         mkDerivation {
           pname = "bench";
           version = "1.0.11";
           sha256 = "a84e6faa55e62b7cb9f7d28a1d1828298f1c37b24c2a16da86954a35534a3b97";
           isLibrary = false;
           isExecutable = true;
           executableHaskellDepends = [
             base criterion optparse-applicative process silently text turtle
           ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/Gabriel439/bench";
           description = "Command-line benchmark tool";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "bencode" = callPackage
        ({ mkDerivation, base, binary, bytestring, containers, parsec
         , stdenv
         }:
         mkDerivation {
           pname = "bencode";
           version = "0.6.0.0";
           sha256 = "3b8efdfecee9bc486d9bcdbb633b7128ca235360f102478a7e0f8c895281f68a";
           libraryHaskellDepends = [
             base binary bytestring containers parsec
           ];
           doHaddock = false;
           doCheck = false;
           description = "Parser and printer for bencoded data";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "between" = callPackage
        ({ mkDerivation, base, stdenv }:
         mkDerivation {
           pname = "between";
           version = "0.11.0.0";
           sha256 = "8337351326c5a613d9b7520b6a8203234c04454e23550a81739beaa6f671465d";
           libraryHaskellDepends = [ base ];
           doHaddock = false;
           doCheck = false;
           homepage = "https://github.com/trskop/between";
           description = "Function combinator \"between\" and derived combinators";
           license = stdenv.lib.licenses.bsd3;
         }) {};
      "bhoogle" = callPackage
        ({ mkDerivation, base, brick, bytestring, containers, directory
         , filepath, hoogle, lens, process, protolude, stdenv, text, time
         , typed-process, vector, vty
         }:
         mkDerivation {
           pname = "bhoogle";
           version = "0.1.3.4";
           sha256 = "1623c61b4f98603df5f3bbcf977b9014b4be1a2feb5d88cafc5d1d6310736219";
           isLibrary = false;
           isExecutable = true;
           executableHaskellDepends = [
             base brick bytestring containers directory filepath hoogle lens
             process protolude text time typed-process vector vty
           ];
