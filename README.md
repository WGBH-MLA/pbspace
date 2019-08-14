# PBSpace

This plugin adds additional properties and object relationships for DigitalObjects so that we can better represent [PBCore](http://pbcore.org/) data in [ArchivesSpace](https://archivesspace.org/). For more information on how we envision representing PBCore in ArchivesSpace, please see [this working document](https://docs.google.com/spreadsheets/d/1hKLD-J5MEhUkYfpt3wDgQnTq0R2HtGAjmWTOJVaG0EA/edit?ts=5bfee578#gid=00). Not all of the work outlined in the document has been completed. To date, items with a priority of 1 have been addressed.

# DigitalObject Properties

One additional property has been added to the ArchivesSpace DigitalObject. The `genre` property is intended to correspond to the pbcoreGenre element in PBCore.

# AdditionalIdentifier & AdditionalTitle

AdditionalIdentifier and AdditionalTitle are new objects added to ArchivesSpace for associating additional IDs and titles with DigitalObjects in the application. There is a one-to-many relationship between a DigitalObject and AdditionalIdentifiers and AdditionalTitles.

# Instantiations

Instantiations are a new object added to ArchivesSpace for tracking PBCore Instantiations. There is a one-to-many relationship between a DigitalObject and Instantiations.

# Installation
To install this plugin, git clone the repo or download the source code and place the entire pbspace directory in the plugins directory of your local ArchivesSpace installation. Make sure to follow the standard plugins enabling steps here: [Enabling plugins](https://github.com/archivesspace/tech-docs/blob/master/customization/plugins.md#enabling-plugins). Next, since there are database migrations for new fields in this plugin, you will need to run the setup_database script as described here: [Run the database migrations](https://github.com/archivesspace/tech-docs/blob/master/administration/upgrading.md#run-the-database-migrations). Finally, restart ArchivesSpace to finish the installation of this plugin.

# Funding

Funding for this project was provided by the [National Endowment for the Humanities](https://www.neh.gov/).
