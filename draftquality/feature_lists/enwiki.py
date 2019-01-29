from revscoring.features import wikitext
from revscoring.features.modifiers import max, sub
from revscoring.languages import english
from revscoring import Feature
from revscoring.datasources import Datasource
from nltk.corpus import sentiwordnet as swn


def get_polarity_score(non_stop_tokens):
    """
    Gets the positive and negative polarity of the document using SentiWordnet
    takes the most common sense of the word for efficiency
    """
    pos, neg = 0.0, 0.0
    for t in non_stop_tokens:
        synsets = list(swn.senti_synsets(t))
        if synsets:
            pos += synsets[0].pos_score()
            neg += synsets[0].neg_score()
    return [pos, neg]


sentiment_score = Datasource("english.sentiment.revision.polarity_score",
                             get_polarity_score,
                             depends_on=[english.stopwords.revision.datasources.non_stopwords])  # noqa: E501


def get_positive_score(senti_score):
    return senti_score[0]


def get_negative_score(senti_score):
    return senti_score[1]


positive_polarity = Feature(
    "english.sentiment.revision.positive_polarity",
    get_positive_score,
    depends_on=[sentiment_score],
    returns=float
)

negative_polarity = Feature(
    "english.sentiment.revision.negative_polarity",
    get_negative_score,
    depends_on=[sentiment_score],
    returns=float
)

diff_polarity = sub(positive_polarity,
                    negative_polarity,
                    name="english.sentiment.revision.diff_polarity")

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
    english.badwords.revision.matches,
    english.badwords.revision.matches / max(wikitext.revision.words, 1)
]

informals = [
    english.informals.revision.matches,
    english.informals.revision.matches / max(wikitext.revision.words, 1)
]

words_to_watch = [
    english.words_to_watch.revision.matches,
    english.words_to_watch.revision.matches / max(wikitext.revision.words, 1)
]

dict_words = [
    english.dictionary.revision.dict_words,
    english.dictionary.revision.non_dict_words,
    english.dictionary.revision.dict_words / max(wikitext.revision.words, 1),
    (english.dictionary.revision.non_dict_words /
     max(wikitext.revision.words, 1))
]

# Templates
infobox_templates = wikitext.revision.template_names_matching(
    r"infobox", name="enwiki.revision.infobox_templates")

CN_TEMPLATES = [
    r"Citation[_ ]needed",
    r"Cn",
    r"Fact"
]
cn_templates = wikitext.revision.template_names_matching(
    "|".join(CN_TEMPLATES), name="enwiki.revision.cn_templates")
who_templates = wikitext.revision.template_names_matching(
    "Who", name="enwiki.revision.cn_templates")
main_article_templates = wikitext.revision.template_names_matching(
    "Main", name="enwiki.main_article_templates")
cite_templates = wikitext.revision.template_names_matching(
    r"^cit(e|ation)", name="enwiki.revision.cite_templates")
proportion_of_templated_references = \
    cite_templates / max(wikitext.revision.ref_tags, 1)
non_templated_references = max(wikitext.revision.ref_tags - cite_templates, 0)
non_cite_templates = sub(
    wikitext.revision.templates, cite_templates,
    name="enwiki.revision.non_cite_templates"
)

# Links
category_links = wikitext.revision.wikilink_titles_matching(
    r"Category\:", name="enwiki.revision.category_links")
image_links = wikitext.revision.wikilink_titles_matching(
    r"File|Image\:", name="enwiki.revision.image_links")

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
    who_templates,
    who_templates / max(wikitext.revision.content_chars, 1),
    main_article_templates,
    main_article_templates / max(wikitext.revision.content_chars, 1),
    english.stemmed.revision.stem_chars /
    max(wikitext.revision.content_chars, 1)
]

sentiment_based = [
    positive_polarity,
    negative_polarity,
    diff_polarity
]

draft_quality = (char_based + token_based + parse_based +
                 badwords + informals + words_to_watch + dict_words +
                 local_wiki + sentiment_based)
