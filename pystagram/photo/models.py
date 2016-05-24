# coding: utf-8

from __future__ import unicode_literals

from django.db import models

<<<<<<< HEAD
from django.core.urlresolvers import reverse_lazy

class Photo(models.Model):
	image_file = models.ImageField(upload_to='%Y/%m/%d')
	filtered_image_file = models.ImageField(null=True , upload_to='static_files/uploaded/filtered/%Y/%m/%d')
	discription = models.TextField(max_length=500, blank=True)
	created_at = models.DateTimeField(auto_now_add = True, auto_now = False)
=======
from django.core.urlresolvers import reverse_laze

class Photo(models.Model):
	image_file = models.ImageField(upload_to='%Y/%m/%d')
	filtered_image_file = models.ImageField(null= true , upload_to='static_files/uploaded/filtered/%Y/%m/%d')
	description = models.TextField(max_length=500, blank=True)
	created_at = models.DateTimeField(auto_now_add = True)
>>>>>>> 8d2df5ad6ab5489faaab54f4fe92e4a424601117

	def delete(self, *args, **kwargs):
		self.image_file.delete()
		self.filtered_image_file.delete()
		super(Photo, self).delete(*args, **kwargs)
	
	def get_absolute_url(self):
		return reverse_lazy('view_single_photo',kwargs={'photo_id': self.id})
