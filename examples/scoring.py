import mwapi
import bz2
from revscoring import Model
from revscoring.extractors import api

model = Model.load(
    bz2.open("models/ptwiki.draft_quality.gradient_boosting.model.bz2", "rb"))

extractor = api.Extractor(mwapi.Session(host="https://pt.wikipedia.org",
    user_agent="draftquality test"))
values = extractor.extract(58071111, model.features)
print(model.score(values))
