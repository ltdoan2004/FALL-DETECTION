import torch
import utils
from ultralytics import YOLO
model = YOLO('./yolov8n.yaml').load('./yolov8n.pt')  
results = model.train(data="./data.yaml", epochs=150, imgsz = 640)
