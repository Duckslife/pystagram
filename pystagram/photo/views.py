# coding: utf-8
from __future__ import unicode_literals
from django.shortcuts import ( get_object_or_404,render,redirect,)
from django.http import HttpResponse
<<<<<<< HEAD
from photo.models import Photo
=======
from .models import Photo
>>>>>>> 8d2df5ad6ab5489faaab54f4fe92e4a424601117
from photo.forms import PhotoEditForm

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

def new_photo(request):
<<<<<<< HEAD
	if request.method =="GET":
		edit_form = PhotoEditForm()
	elif request.method == "POST":
		edit_form = PhotoEditForm(request.POST, request.FILES)

		if edit_form.is_valid():
			new_photo = edit_form.save()

			return redirect (new_photo.get_absolute_url())
=======
	edit_from = PhotoEditForm()

>>>>>>> 8d2df5ad6ab5489faaab54f4fe92e4a424601117
	return render(
		request,
		'new_photo.html',
		{
<<<<<<< HEAD
			'form': edit_form,
		}
	)	
=======
			'form':edit_form,
		}
)	
>>>>>>> 8d2df5ad6ab5489faaab54f4fe92e4a424601117
