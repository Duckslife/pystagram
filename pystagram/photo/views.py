# coding: utf-8

from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from .models import Photo

def single_photo(request, photo_id):
	photo = get_object_or_404(Photo, pk=photo_id)
	response_text = '<p>{photo_id}no ... {photo_id}no view photo.</p>'
	response_text += '<p>{photo_url}<\p>'
	response_text += '<p><img src="{photo_url}"/></p>'
	
	return HttpResponse(response_text.format(
		photo_id = photo_id,
		photo_url = photo.image_file.url
		)
	)
	
