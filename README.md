# Journals of the American Statistical Association (JASA)

This is a Quarto template that assists you in creating a manuscript for Journals for the American Statistical Association (ASA).
ASA journals which use this template include:

- Journal of the American Statistical Association
- The American Statistician
- Journal of Agricultural, Biological, and Environmental Statistics
- Journal of Business & Economic Statistics
- Journal of Computational and Graphical Statistics
- Journal of Nonparametric Statistics
- Journal of Statistics and Data Science Education 
- Statistics in Biopharmaceutical Research
- Statistics and Public Policy
- Technometrics

You can learn more about the journals of the American Statistical Association at <https://www.amstat.org/publications/journals>.

## Creating a New Article

You can use this as a template to create an article for an ASA journal. To do this, use the following command:

```quarto use template quarto-journals/jasa```

This will install the extension and create an example qmd file and bibiography that you can use as a starting place for your article.

## Installation For Existing Document

You may also use this format with an existing Quarto project or document. From the quarto project or document directory, run the following command to install this format:

```quarto add quarto-journals/jasa```

## Usage 

To use the format, you can use the format names `jasa-pdf` and `jasa-html`. For example:

```quarto render article.qmd --to jasa-pdf```

or in your document yaml

```yaml
format:
  jasa-pdf:
    keep-tex: true    
```

You can view a preview of the rendered template at <https://quarto-journals.github.io/jasa/>.
