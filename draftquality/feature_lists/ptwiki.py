from revscoring.features import wikitext
from revscoring.features.modifiers import max, sub
from revscoring.languages import portuguese

char_based = [
    wikitext.revision.chars,
    wikitext.revision.whitespace_chars,
    wikitext.revision.markup_chars,
    wikitext.revision.cjk_chars,
    wikitext.revision.entity_chars,
    wikitext.revision.url_chars,
    wikitext.revision.word_chars,
    wikitext.revision.uppercase_word_chars,
    wikitext.revision.punctuation_chars,
    wikitext.revision.break_chars,
    wikitext.revision.longest_repeated_char,
    wikitext.revision.whitespace_chars / max(wikitext.revision.chars, 1),
    wikitext.revision.markup_chars / max(wikitext.revision.chars, 1),
    wikitext.revision.cjk_chars / max(wikitext.revision.chars, 1),
    wikitext.revision.entity_chars / max(wikitext.revision.chars, 1),
    wikitext.revision.url_chars / max(wikitext.revision.chars, 1),
    wikitext.revision.word_chars / max(wikitext.revision.chars, 1),
    wikitext.revision.uppercase_word_chars / max(wikitext.revision.chars, 1),
    wikitext.revision.punctuation_chars / max(wikitext.revision.chars, 1),
    wikitext.revision.break_chars / max(wikitext.revision.chars, 1),
    wikitext.revision.longest_repeated_char / max(wikitext.revision.chars, 1)
]

token_based = [
    wikitext.revision.tokens,
    wikitext.revision.numbers,
    wikitext.revision.whitespaces,
    wikitext.revision.markups,
    wikitext.revision.cjks,
    wikitext.revision.entities,
    wikitext.revision.urls,
    wikitext.revision.words,
    wikitext.revision.uppercase_words,
    wikitext.revision.punctuations,
    wikitext.revision.breaks,
    wikitext.revision.longest_token,
    wikitext.revision.longest_word,
    wikitext.revision.numbers / max(wikitext.revision.tokens, 1),
    wikitext.revision.whitespaces / max(wikitext.revision.tokens, 1),
    wikitext.revision.markups / max(wikitext.revision.tokens, 1),
    wikitext.revision.cjks / max(wikitext.revision.tokens, 1),
    wikitext.revision.entities / max(wikitext.revision.tokens, 1),
    wikitext.revision.urls / max(wikitext.revision.tokens, 1),
    wikitext.revision.words / max(wikitext.revision.tokens, 1),
    wikitext.revision.uppercase_words / max(wikitext.revision.tokens, 1),
    wikitext.revision.punctuations / max(wikitext.revision.tokens, 1),
    wikitext.revision.breaks / max(wikitext.revision.tokens, 1),
    wikitext.revision.longest_token / max(wikitext.revision.tokens, 1),
    wikitext.revision.longest_word / max(wikitext.revision.tokens, 1)
]

parse_based = [
    wikitext.revision.content_chars,
    wikitext.revision.headings,
    wikitext.revision.external_links,
    wikitext.revision.wikilinks,
    wikitext.revision.tags,
    wikitext.revision.ref_tags,
    wikitext.revision.templates,
    wikitext.revision.content_chars / max(wikitext.revision.tokens, 1),
    wikitext.revision.headings / max(wikitext.revision.tokens, 1),
    wikitext.revision.external_links / max(wikitext.revision.tokens, 1),
    wikitext.revision.wikilinks / max(wikitext.revision.tokens, 1),
    wikitext.revision.tags / max(wikitext.revision.tokens, 1),
    wikitext.revision.ref_tags / max(wikitext.revision.tokens, 1),
    wikitext.revision.templates / max(wikitext.revision.tokens, 1)
]

badwords = [
    portuguese.badwords.revision.matches,
    portuguese.badwords.revision.matches / max(wikitext.revision.words, 1)
]

informals = [
    portuguese.informals.revision.matches,
    portuguese.informals.revision.matches / max(wikitext.revision.words, 1)
]

dict_words = [
    portuguese.dictionary.revision.dict_words,
    portuguese.dictionary.revision.non_dict_words,
    portuguese.dictionary.revision.dict_words /
    max(wikitext.revision.words, 1),
    (portuguese.dictionary.revision.non_dict_words /
     max(wikitext.revision.words, 1))
]

# Templates
infobox_templates = wikitext.revision.template_names_matching(
    r"Info", name="ptwiki.revision.infobox_templates")

CN_TEMPLATES = [
    r"Carece de fontes",
    r"Carece de fontes2",
    r"Carece de fontes/bloco",
    r"Carece de fontes/bloco2"
]
cn_templates = wikitext.revision.template_names_matching(
    "|".join(CN_TEMPLATES), name="ptwiki.revision.cn_templates")
MAIN_TEMPLATES = [
    r"Artigo[ _]principal",
    r"Ver[ _]artigo[ _]principali",
    r"Principal",
    r"Ver[ _]também artigo[ _]principal",
    r"Main",
    r"Detalhes",
    r"Mais",
    r"Artigoprincipal",
    r"AP", r"Details", r"Ver[ _]artigo"
]
main_article_templates = wikitext.revision.template_names_matching(
    "|".join(MAIN_TEMPLATES), name="ptwiki.main_article_templates")
CITE_TEMPLATES = [
    r"Cite",
    r"Citar",
    r"Citar web",
    r"Citar livro",
    r"Harvard[_ ]citation[_ ]no[_ ]brackets", r"harvnb",
    r"Harvard citation", r"harv",
    r"Harvard citation text", r"harvtxt",
    r"Harvcoltxt",
    r"Harvcol",
    r"Harvcolnb",
    r"Harvard citations", r"harvs",
    r"Harvp"
]
cite_templates = wikitext.revision.template_names_matching(
    "|".join(CITE_TEMPLATES), name="ptwiki.revision.cite_templates")
proportion_of_templated_references = \
    cite_templates / max(wikitext.revision.ref_tags, 1)
non_templated_references = max(wikitext.revision.ref_tags - cite_templates, 0)
non_cite_templates = sub(
    wikitext.revision.templates, cite_templates,
    name="ptwiki.revision.non_cite_templates"
)

# Links
category_links = wikitext.revision.wikilink_titles_matching(
    r"i(Category|Categoria)\:", name="ptwiki.revision.category_links")
image_links = wikitext.revision.wikilink_titles_matching(
    r"(File|Image|Ficheiro|Arquivo|Imagem)\:",
    name="ptwiki.revision.image_links")

local_wiki = [
    image_links,
    image_links / max(wikitext.revision.content_chars, 1),
    category_links,
    category_links / max(wikitext.revision.content_chars, 1),
    cite_templates,
    cite_templates / max(wikitext.revision.content_chars, 1),
    proportion_of_templated_references,
    non_templated_references,
    non_templated_references / max(wikitext.revision.content_chars, 1),
    non_cite_templates,
    non_cite_templates / max(wikitext.revision.content_chars, 1),
    infobox_templates,
    cn_templates,
    cn_templates / max(wikitext.revision.content_chars, 1),
    main_article_templates,
    main_article_templates / max(wikitext.revision.content_chars, 1),
    portuguese.stemmed.revision.stem_chars /
    max(wikitext.revision.content_chars, 1)
]


draft_quality = (char_based + token_based + parse_based +
                 badwords + informals + dict_words + local_wiki)
