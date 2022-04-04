# Maintenance Operations Ontology (MOO)

Ontology in support of maintenance operations developed as part of the Trusted AI in effort with Notre Dame Center for Research Computing, Laboratory for Assured AI Applications Development (LA3D), Indiana University and CRANE.

## Findable, Accessible, Interoperable, Reusable (FAIR) Data Principles

This ontology is developed using a [FAIR methodology](https://www.go-fair.org/fair-principles/) follows ["Best Practices for Implementing FAIR Vocabularies and Ontologies on the Web"](https://arxiv.org/abs/2003.13084v1), ["Ten simple rules for making a vocabulary FAIR"](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1009041), and FAIRsFAIR ["D2.5 FAIR Semantics Recommendations Second Iteration"](https://zenodo.org/record/4314321#.YW2XNtnMIeY). We have adopted the use of Permanent Identifiers for the Web [w3id](https://w3id.org) as recommended by the best practices documents.

## Expressivity

Ontology is modeled using [RDFS-Plus](http://mlwiki.org/index.php/RDFS-Plus) level of automatization with W3C [RDFS Schema](https://www.w3.org/TR/rdf-schema/) and selected W3C [OWL 2 Constructs](https://www.w3.org/TR/owl2-primer/). Additionally, to facilitate alignment and adoption using schema.org level base vocabularies as outlined in the schema.org [developer documentation](https://schema.org/docs/developers.html). This ontology is developed using [Modular Ontology Modeling Methodology](http://www.semantic-web-journal.net/content/modular-ontology-modeling-10) using [Ontology Design Patterns](http://ontologydesignpatterns.org/wiki/Main_Page) connected to form modules that build the larger ontology. Shape Constraints using [W3C Shapes Constraint Language](https://www.w3.org/TR/shacl/) are also provided for graph shape validation as discussed in the [SHACL and OWL](https://spinrdf.org/shacl-and-owl.html) document. Alignments are modeled similarly to the [RealEstateCore](https://github.com/RealEstateCore/rec) ontology that has created [modular alignments](https://github.com/RealEstateCore/rec/tree/master/ontology/alignments) that form the basis for adoption in [Azure Digital Twins](https://docs.microsoft.com/en-us/azure/digital-twins/concepts-ontologies) and cross linking to [Industry Standard Ontologies in a Knowledge Graph](https://docs.microsoft.com/en-us/azure/digital-twins/concepts-ontologies-adopt).

## Modular Ontology Design

This ontology follows the ontology design principles explained in ["Modular Ontology Modeling"](http://www.semantic-web-journal.net/system/files/swj2886.pdf) using [The eXtreme Design Methodology](https://karlhammar.com/downloads/blomqvist2016engineering.pdf) borrowed from [software engineering](https://en.wikipedia.org/wiki/Extreme_programming).

## Testing

Testing of ODP derived modules is done through using the [Test Anything Protocol](http://testanything.org) (TAP) and a shell implementation of TAP called [sharness](https://github.com/chriscool/sharness) that facilitates testing orchestration using unix shell scripts. Test cases are constructed in sample knowledge graphs that are tested against the [Shapes Constraints Language](https://www.w3.org/TR/shacl/) (SHACL) specification of the ontology module to be tested. The [pyshacl](https://github.com/RDFLib/pySHACL) python based validator for SHACL is used in the test harness to assess the correctness and conformance of sample data to the ontology through the shapes.

### Github Actions Integration

The workflow is automatically executed on a "push" action to the github repository using the [github actions](https://github.com/features/actions) automated software workflow. The [workflow syntax](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#jobsjob_idstepsrun) provisions a ubuntu container using the [python starter action](https://github.com/actions/starter-workflows/blob/main/ci/python-app.yml) as a template. The [Python Development Master](https://pdm.fming.dev) python framework provisions the python packages (pyshacl, pylode, rdfx) to test and construct the full ontologies and documentation for release.

To test locally, pdm should be installed via pdm instructions. If using pip to execute the following command to get the testing environment python dependencies:

```bash
$ pip install --user pdm
$ pdm install
```

To run a python command, use pdm run as a prefix to the command. For example:

```bash
$pdm run pyshacl ...
```

## Ontology Reuse

This ontology directly imports and reuses the [W3C OWL-Time](https://www.w3.org/TR/owl-time/) ontology, the [OGC Geosparql](https://github.com/opengeospatial/ogc-geosparql/), and the [W3C Provenance Ontology](https://www.w3.org/TR/prov-o/). Alignments are made to Wikidata identifiers.

## Persistent Identifiers and Namespace

### Internal Namespaces

| Prefix        | URI                               | Description                           |
| ------------- | --------------------------------- | ------------------------------------- |
| @prefix moo   | https://w3id.org/moo/ont/moo      | MOO Core Ontology                     |
| @prefix moosh | https://w3id.org/moo/shapes/shacl | MOO Ontology SHACL Shapes Constraints |

### External Namespaces

| Prefix                     | URI                                                                   | Description                                                                                 |
| -------------------------- | --------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| @prefix prov               | http://www.w3.org/ns/prov#                                            | [W3C Provenance Ontology](https://www.w3.org/TR/prov-o)                                     |
| @prefix sio                | http://semanticscience.org/resource/                                  | [Semantic Science Integrated Ontology](https://github.com/MaastrichtU-IDS/semanticscience)  |
| @prefix sdo                | https://schema.org/                                                   | [Schema.org](https://Schema.org)                                                            |
| @prefix skos               | http://www.w3.org/2004/02/skos/core#                                  | [W3C Simple Knowledge Organization System](https://www.w3.org/TR/skos-reference/)           |
| @prefix time               | http://www.w3.org/2006/time#                                          | [W3C Owl Time](https://www.w3.org/TR/owl-time/)                                             |
| @prefix qudt               | http://qudt.org/schema/qudt/                                          | [Quantities, Units, Dimensions and Time Ontology](https://github.com/qudt/qudt-public-repo) |
| @prefix geosparql          | http://www.opengis.net/ont/geosparql                                  | [OGC Geosparql Spatial Ontology](https://www.ogc.org/standards/geosparql)                   |
| @prefix dcterms            | http://purl.org/dc/terms/                                             | Dublin Core Terms                                                                           |
| @prefix vann               | http://purl.org/vocab/vann/                                           | Vocabulary for annotating vocabulary terms                                                  |
| @prefix cpannotationschema | http://www.ontologydesignpatterns.org/schemas/cpannotationschema.owl# | ODP annotations                                                                             |

## Versions

The latest version of the full ontology can be found at https://w3id.org/moo/full/ and specific versions of the full ontology https://w3id.org/moo/full/x.x/ where x.x is the version identifier. Individual modules can likewise be referenced using https://w3id.org/moo/{module}/ and https://w3id.org/moo/{module}/x.x/.

## Contact

Please use this GitHub repository's [Issue tracker](https://github.com/nd-crane/moo/issues) to request new terms/classes or report errors or specific concerns related to the ontology.

### Direct Contact

**Charles Vardeman**

_Research Assistant Professor_\
[Center for Research Computing](https://crc.nd.edu), [University of Notre Dame](https://nd.edu)\
<cvardema@nd.edu>\
Github: [charlesvardeman](https://github.com/charlesvardeman)\
ORCID: [0000-0003-4091-6059](https://orcid.org/0000-0003-4091-6059)

## Acknowledgements
