# Journal of the American Statistical Association (JASA)

This is a Quarto template that assists you in creating a manuscript for Journals for the American Statistical Association. You can learn more about the Journal of the American Statistical Association at <https://www.tandfonline.com/journals/uasa20>.

## Creating a New Article

You can use this as a template to create an article for a JASA journal. To do this, use the following command:

```quarto use template quarto-journals/jasa```

This will install the extension and create an example qmd file and bibiography that you can use as a starting place for your article.

## Installation For Existing Document

You may also use this format with an existing Quarto project or document. From the quarto project or document directory, run the following command to install this format:

```quarto install extension quarto-journals/jasa```

## Usage 

To use the format, you can use the format names `jasa-pdf` and `jasa-html`. For example:

```quarto render article.qmd --to jasa-pdf```

or in your document yaml

```yaml
format:
  pdf: default
  jasa-pdf:
    keep-tex: true    
```

You can view a preview of the rendered template at <https://quarto-journals.github.io/jasa/>.
