metalsmith = require 'metalsmith'
drafts = require 'metalsmith-drafts'
markdown = require 'metalsmith-markdown'
asciidoc = require 'metalsmith-asciidoc'
templates = require 'metalsmith-templates'
permalinks = require 'metalsmith-permalinks'
collections = require 'metalsmith-collections'
pagination = require 'metalsmith-pagination'
cleancss = require 'metalsmith-clean-css'
snippet = require 'metalsmith-snippet'
sitemap = require 'metalsmith-sitemap'
concat = require 'metalsmith-concat'
assets = require 'metalsmith-assets'
feed = require 'metalsmith-feed'
uglify = require 'metalsmith-uglify'
#gulpsmith = require 'gulpsmith'
siteData = require './config/site'

metalsmith __dirname
  .metadata siteData
  .source 'src'
  .use drafts()
  .use collections require './config/collections'
  .use pagination require './config/pagination'
  .use markdown require './config/markdown'
  .use asciidoc()
  .use snippet require './config/snippet'
  .use permalinks()
  .use feed require './config/feed'
  .use templates require './config/templates'
  .use sitemap require './config/sitemap'
  .use assets require './config/assets'
  .use concat require './config/concat'
  .use cleancss require './config/cleancss'
  .use uglify require './config/uglify'
  .destination 'build'
  .build (err,files) ->
    if err
      throw err
    return
