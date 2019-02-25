from torchvision.models import resnet50
import torch 
import torch.nn.functional as F
from torch import nn
from torch import optim
from torchvision.datasets import ImageFolder
from torch.utils.data import DataLoader
from torchvision import transforms 
import numpy as np

device = "cuda:0" if torch.cuda.is_available() else "cpu"
print(device)

model = resnet50(pretrained=True)
feature_extractor_model = nn.Sequential(*list(model.children())[:-2], nn.AdaptiveAvgPool2d((1,1)))
feature_extractor_model.eval()
feature_extractor_model = feature_extractor_model.to(device)

batch_size = 8
transform = transforms.Compose([
    transforms.Resize((240, 800)),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.485, 0.456, 0.406],
                                 std=[0.229, 0.224, 0.225]),
])

train_dataset = ImageFolder("data/train", transform)
train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True)

valid_dataset = ImageFolder("data/valid", transform)
valid_loader = DataLoader(valid_dataset, batch_size=batch_size, shuffle=False)

test_dataset = ImageFolder("data/test", transform)
test_loader = DataLoader(test_dataset, batch_size=batch_size, shuffle=False)

training_features = []
training_labels = []
for imgs, labels in train_loader:
    print(".")
    features = feature_extractor_model(imgs.to(device))
    for i in range(features.shape[0]):
        training_features.append(features[i].reshape(-1).cpu().detach().numpy())
        training_labels.append(labels[i])

training_features = np.array(training_features)
training_labels = np.array(training_labels)
np.save("training_features.npy", training_features)
np.save("training_labels.npy", training_labels)

valid_features = []
valid_labels = []
for imgs, labels in valid_loader:
    print(".")
    features = feature_extractor_model(imgs.to(device))
    for i in range(features.shape[0]):
        valid_features.append(features[i].reshape(-1).cpu().detach().numpy())
        valid_labels.append(labels[i])
valid_features = np.array(valid_features)
valid_labels = np.array(valid_labels)
np.save("valid_features.npy", valid_features)
np.save("valid_labels.npy", valid_labels)

testing_features = []
testing_labels = []
for imgs, labels in test_loader:
    print(".")
    features = feature_extractor_model(imgs.to(device))
    for i in range(features.shape[0]):
        testing_features.append(features[i].reshape(-1).cpu().detach().numpy())
        testing_labels.append(labels[i])
testing_features = np.array(testing_features)
testing_labels = np.array(testing_labels)
np.save("testing_features.npy", testing_features)
np.save("testing_labels.npy", testing_labels)
