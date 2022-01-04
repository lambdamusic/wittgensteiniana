"""
Abstract base model classes 

(similar to mymodels.py)

"""

from django.db import models
from django.contrib.auth.models import User
from django.utils.translation import ugettext_lazy as _


class EnhancedModel(models.Model):
    """ DefaultModel
    An abstract base class model that provides self-managed "created", 
    "modified", and "user creation" fields. Also, we provide the fields needed for the 
    'administration' features needed by the editors
    """
    # TIMESTAMPS section
    created_at = models.DateTimeField(auto_now_add=True, 
        help_text="The time this record was firstly created. Do not modify.")
    updated_at = models.DateTimeField(auto_now=True, 
        help_text="Automatically updated each time the record is saved.")

    # ADMINISTRATION section
    editedrecord = models.BooleanField(default=False, verbose_name="edited record?", 
        help_text="Tick to indicate that this record has been finalized")
    review = models.BooleanField(default=False, verbose_name="review", 
        help_text="Tick to indicate that this record is under review by the editorial team")
    internal_notes = models.TextField(blank=True, verbose_name="internal_notes")
    created_by = models.ForeignKey(User, blank=True, null=True, related_name="created_%(class)s", 
        editable = True, help_text="No need to edit: automatically set when saving", on_delete=models.PROTECT)
    updated_by = models.ForeignKey(User, blank=True, null=True, related_name="updated_%(class)s", 
        editable = True, help_text="No need to edit: automatically set when saving", on_delete=models.PROTECT)
    isprivate = models.BooleanField(default=False, verbose_name="is private", blank=True,)	
        
    # Added on Aug3 as a generic method to access everything about a model in the templates"""
    def attrs(self):
        items = [(k, v) for k, v in self.__dict__.items()]
        items.sort()
        return items
        # for attr, value in self.__dict__.iteritems():
        #	yield attr, value

    @classmethod
    def makeAllPublicForUser(self, user, objs_list = None):
        """
        Makes all isntances public for a specific user (note: you can pass a objs_list to make public only those ones)
        """
        if objs_list:
            for x in objs_list:
                if type(x) == type(self) and x.created_by==user:
                    x.isprivate = False
                    x.save()
        else:
            for x in self.objects.filter(created_by=user, isprivate=True):
                x.isprivate = False
                x.save()


    @classmethod
    def makeAllPrivateForUser(self, user, objs_list = None):
        """
        """
        if objs_list:
            for x in objs_list:
                if type(x) == type(self) and x.created_by==user:
                    x.isprivate = True
                    x.save()
        else:
            for x in self.objects.filter(created_by=user, isprivate=False):
                x.isprivate = True
                x.save()


    class Meta:
        abstract = True			





