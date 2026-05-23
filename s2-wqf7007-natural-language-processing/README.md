# WQF 7007 Natural Language Processing
## Topics
1. Introduction to NLP
    - NLP vs NLU
    - NLP Pipeline
    - Taxonomy of NLP
    - Morphology, syntax, semantics, pragmatics, phonetics & phonology
    - Stages:
        1. Lexical / Morphological Analysis
        2. Syntactic Analysis
        3. Semantic Analysis
        4. Pragmatic Analysis
    - Parsing Tree

2. Text Preprocessing
    - Tokenisation
    - Lower Casing
    - Noise Removal
    - Stopwords Removal
    - Stemming and Lemmatisation
    - Text Normalisation

3. Part of Speech (POS)
    - 8 POS (Noun, Verb, Adverb, Adjective, Preposiiton, Interjection, Pronoun, Conjunction)
    - Purpose: Text classification, information extraction, parsing etc.
    - Opened class vs Closed class POS tags
    - Universal Dependencies (UD)
        - a framework for consistent annotation of grammar (parts of speech, morphological features, and syntactic dependencies) across different human languages. 
    - 45-tag Penn Treebank tagset
    - Three main tagged corpora (English):
        - Brown corpus, WSJ corpus, Switchboard corpus
    - Tagging is a disambiguation task (words have multiple meanings/POS tag)
    - Types (Unique) vs Tokens (Repeated)
    - Measure the performance of POS taggers is accuracy
    - Sequence Modelling
        - Generative approach (Hidden Markov Model)
        - Discriminative approach (Conditional Random Fields)
    - POS tagging using NLTK

4. Syntactic Analysis (Syntactic Parsing vs Statistical Parsing)
    - Context-Free Grammar (CFG)
        - Gives us the rules for how sentences can be constructed.
        - We still need a way to apply these rules to actual sentences, this is where parsing begins.
        - Parsing uses a CFG to build a parse tree (also called a syntax tree), showing the structure of a sentence.
    - Parsing
        - Syntactic structure of a sentence
        - Build parsing tree to show how sentence is derrived from grammar rules
        - Aka Syntax analysis
    - Top-down parsing
        - By expanding symbols and matching words, keeping track of all possible paths. If it fails, it backtracks to try another path
        - Depth-First Search (DFS), Breadth-First Search (BFS)
    - Statistical (Probabilistic) Parsing
        - Syntactic parsing faces ambiguity, due to:
            1. Attachment ambiguity (when a modifier or phrase can attach to more than one node)
            2. Coordination Ambiguity (when a conjunction (like and) can coordinate different phrase groupings)
        - Assigning likelihoods to different parse trees
            - a probabilistic parser ranks them and selects the most likely one based on training data 
        - PCFG is the simplest and most widely used probabilistic extension of CFG.

5. Semantic and Word Sense Disambiguation
    - Lexical semantic 
    - Lexical ambiguity
    - Word can have multiple _senses_
        - A sense is a specific, discrete representation of one aspect of a word’s meaning.
    - Word Relations:
        1. Homonymy (Same word, unrelated meaning)
        2. Polysemy (Same word, related meaning)
        3. Synonymy (Different words, same meaning)
        4. Antonymy (Words with opposite meanings)
        5. Hyponymy & Hypernymy (Hierarchical relation between specific and general)
        6. Meronymy (Part–whole relationship)
    - WordNet
        - A lexical taxonomy of English words that structures words based on their semantic relationships.
    - Word Sense Disambiguation (Classification of word sense)
        - Given a word and its possible senses, the goal is to classify each occurrence of the word in context into one of its sense classes.
        - 3 methods ((1)Supervised, (2) Unsupervised - Boostrapping, (3) Dictionary and Thesaurus Methods)
    - Semantic search (Application)
        - Understands the meaning behind the words in a query.
        - Able to disambiguate senses based on context.
        - Able to interpret intent.

6. Word Vectorisation
    - Traditional Count-based Methods
        1. Bag of Words (BoW)
        2. TF-IDF (Term Frequency Inverse Document Frequency)
    - Prediction-Based Word Embeddings
        1. Word2Vec (CBOW, Skip-gram)
        2. GloVe (Global Vectors for Word Representation)
        3. FastText
    - Contextualized Word Embeddings
        1. ELMO (Embeddings from Language Models)
        2. Transformers
            - Encoded only (BERT, RoBERTa)
            - Encoder + Decoder (BART, T5)
            - Decoder only (GPT-4, LLama)

7. Language Models
    - A language model is a statistical or neural model that assigns probabilities to sequences of words helping predict the likelihood of the next word in a sentence based on the previous words.
    - (1) Statistical Language Models (N-gram models)
        - Based on counting word frequencies
        - N-grams vs Collocations
    - (2) Neural Language Models
        - A type of language model that uses neural networks to learn the probability distribution of word sequences.
        - 3 key components:
            1. Word Embeddings
            2. Contextual Modelling
            3. Probability Output
    - (3) Transformer-based Language Models
        - Transformers are deep learning models designed to handle sequences using self-attention, using an encoder-decoder structure.
        - GPT (Generative Pre-trained Transformer)
            - Primary task is text generation (generative)
            - Pre-trained on massive text corpora (books, websites, etc.)
            - Decoder-only Transformer architecture trained as a causal language model (CLM)  to predict the next token in a sequence.
        - BERT (Bidirectional Encoder Representations from Transformers)
            - Primary task is classification, question answering
            - Designed to understand the context of a sentence by looking at words in both directions
            - Uses only the encoder part of the Transformer
        - Finetune vs Pre-trained
        - Transfer learning