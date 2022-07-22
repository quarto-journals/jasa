
-- 
local kHeightAttr = 'add-textheight'

local text_height_div = function(el)
  for k,v in pairs(el.attr.attributes) do
    if k == kHeightAttr then
      if quarto.doc.isFormat("pdf") then
        local heightAdjust = pandoc.utils.stringify(v)
        local endHeight = '-' .. heightAdjust
        if heightAdjust:sub(1,1) == "-" then
          endHeight = heightAdjust:sub(2)
        end

        local rawStart = pandoc.RawBlock("latex", "\\addtolength{\\textheight}{" .. heightAdjust .."}%")
        local rawEnd = pandoc.RawBlock("latex", "\\addtolength{\\textheight}{" .. endHeight .."}%")
        table.insert(el.content, 1, rawStart)
        table.insert(el.content, rawEnd)

        return el
      end
    end
  end
end

local processSupplementary = function(el) 
  if el.attr.classes:includes('supplementary') then

    if quarto.doc.isFormat("pdf") then
      local content = el.content
      quarto.utils.dump(content)
      local titleText = pandoc.write(pandoc.Pandoc(pandoc.Plain(content)), 'latex')
      local rendered = {
        pandoc.RawInline("latex", "\\bigskip\n"),
        pandoc.RawInline("latex", "\\begin{center}\n"),
        pandoc.RawInline("latex", "{" .. titleText .. "}\n"),
        pandoc.RawInline("latex", "\\end{center}"),
      }
      return pandoc.Div(rendered, el.attr)
    end
  end
end

return {
  {
    Div = text_height_div,
    Header = processSupplementary
  }
}