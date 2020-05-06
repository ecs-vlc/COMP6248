import random
import numpy as np
import torch
import random
import sys
import io
import re

from torch.utils.data import Dataset, DataLoader
from torch import nn
from torch.nn import functional as F
from torch import optim
import random
import sys
import io

from torchvision.datasets.utils import download_url


PAD='_'
SOS='^'
EOS='$'
PAD_IDX=0


# construct the Morse dictionary
alphabet = "*".join(PAD+SOS+EOS+"abcdefghijklmnopqrstuvwxyz ").split('*')
morse = [PAD, SOS, EOS, '.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---',
         '-.-', '.-..', '--', '-.','---', '.--.', '--.-', '.-.', '...', '-', 
         '..-', '...-', '.--', '-..-', '-.--', '--..', '/'] 
morse_dict = dict(zip(alphabet, morse))

alphabet_indices = dict((c, i) for i, c in enumerate(alphabet))
indices_alphabet = dict((i, c) for i, c in enumerate(alphabet))

morsebet = PAD+SOS+EOS+'.- /'
morse_indices = dict((c, i) for i, c in enumerate(morsebet))
indices_morse = dict((i, c) for i, c in enumerate(morsebet))

def morse_encode(word):
    return " ".join([morse_dict[i] for i in word.lower()])

# Read the data
download_url('https://s3.amazonaws.com/text-datasets/nietzsche.txt', '.', 'nietzsche.txt', None)
text = io.open('./nietzsche.txt', encoding='utf-8').read().lower()
text = "".join([i if i in alphabet else ' ' for i in text])
text = re.sub(r"\s+", " ", text)


maxlen = 8
step = 1



# class MyDataset(Dataset):
#     # cut the text in semi-redundant sequences of maxlen characters
#     def __len__(self):
#         return (len(text) - (maxlen - 2)) // step

#     def __getitem__(self, i):
#         out = '^' + text[i*step: i*step + (maxlen-2)] + '$'
#         y = encode_alpha(out[::-1])

#         inp = morse_encode(out)
#         x = encode_morse(inp)

#         return x, y

for i in range(250000):
	leng = random.randint(1,maxlen-2)
	tgt = '^' + text[i*step: i*step + leng] + '$'
	inp = morse_encode(tgt)

	print(inp+'|'+tgt)
