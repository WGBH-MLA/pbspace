# PBSpace

This plugin adds additional properties and object relationships for DigitalObjects so that we can better represent [PBCore](http://pbcore.org/) data in [ArchivesSpace](https://archivesspace.org/). For more information on how we envision representing PBCore in ArchivesSpace, please see [this working document](https://docs.google.com/spreadsheets/d/1hKLD-J5MEhUkYfpt3wDgQnTq0R2HtGAjmWTOJVaG0EA/edit?ts=5bfee578#gid=00). Not all of the work outlined in the document has been completed. To date, items with a priority of 1 have been addressed.

# DigitalObject Properties

One additional property has been added to the ArchivesSpace DigitalObject. The `genre` property is intended to correspond to the pbcoreGenre element in PBCore.

# Instantiations

Instantiations are a new object added to ArchivesSpace for tracking PBCore Instantiations. There is a one-to-many relationship between a DigitalObject and Instantiations.

# Funding

Funding for this project was provided by the [National Endowment for the Humanities](https://www.neh.gov/).
