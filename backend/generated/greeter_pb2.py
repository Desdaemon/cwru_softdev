# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: greeter.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from google.protobuf import timestamp_pb2 as google_dot_protobuf_dot_timestamp__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='greeter.proto',
  package='',
  syntax='proto3',
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_pb=b'\n\rgreeter.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x18\n\x06Result\x12\x0e\n\x06\x65rrors\x18\x01 \x03(\t\"\"\n\x06\x43oords\x12\x0b\n\x03lat\x18\x01 \x01(\x01\x12\x0b\n\x03lon\x18\x02 \x01(\x01\"k\n\x0b\x44\x65stination\x12\x17\n\x06\x63oords\x18\x01 \x01(\x0b\x32\x07.Coords\x12.\n\nvisit_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x13\n\x0b\x64\x65scription\x18\x04 \x01(\t\"8\n\x04User\x12\x0f\n\x07user_id\x18\x01 \x01(\r\x12\x10\n\x08username\x18\x02 \x01(\t\x12\r\n\x05\x65mail\x18\x03 \x01(\t\"\xa3\x01\n\x04Trip\x12\x0f\n\x07trip_id\x18\x01 \x01(\r\x12\x0f\n\x07user_id\x18\x02 \x01(\r\x12.\n\nstart_date\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_date\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x1b\n\x05stops\x18\x63 \x03(\x0b\x32\x0c.Destination\"w\n\x05Photo\x12\x10\n\x08photo_id\x18\x01 \x01(\r\x12\x0c\n\x04name\x18\x02 \x01(\t\x12\x11\n\textension\x18\x03 \x01(\t\x12.\n\ndate_taken\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x0b\n\x03url\x18\x05 \x01(\t\"D\n\x0fRegisterRequest\x12\x10\n\x08username\x18\x01 \x01(\t\x12\r\n\x05\x65mail\x18\x02 \x01(\t\x12\x10\n\x08password\x18\x03 \x01(\t\"2\n\x0cLoginRequest\x12\x10\n\x08identity\x18\x01 \x01(\t\x12\x10\n\x08password\x18\x02 \x01(\t\"7\n\x0e\x41\x64\x64TripRequest\x12\x0f\n\x07user_id\x18\x01 \x01(\r\x12\x14\n\x05trips\x18\x02 \x03(\x0b\x32\x05.Trip\"5\n\x11\x44\x65leteTripRequest\x12\x0f\n\x07user_id\x18\x01 \x01(\r\x12\x0f\n\x07trip_id\x18\x02 \x01(\r\"F\n\x13\x41\x64\x64\x44\x65stPhotoRequest\x12\x17\n\x06\x63oords\x18\x01 \x01(\x0b\x32\x07.Coords\x12\x16\n\x06photos\x18\x63 \x03(\x0b\x32\x06.Photo\"!\n\x0eTripsOfRequest\x12\x0f\n\x07user_id\x18\x01 \x01(\r\"\'\n\x0fTripsOfResponse\x12\x14\n\x05trips\x18\x63 \x03(\x0b\x32\x05.Trip\"3\n\x0fPhotosOfRequest\x12\x0f\n\x07user_id\x18\x01 \x01(\r\x12\x0f\n\x07trip_id\x18\x02 \x01(\r\")\n\x10PhotosOfResponse\x12\x15\n\x05photo\x18\x01 \x01(\x0b\x32\x06.Photo2K\n\x05Users\x12#\n\x08register\x12\x10.RegisterRequest\x1a\x05.User\x12\x1d\n\x05login\x12\r.LoginRequest\x1a\x05.User2\xf0\x01\n\x05Trips\x12,\n\x07tripsOf\x12\x0f.TripsOfRequest\x1a\x10.TripsOfResponse\x12#\n\x07\x61\x64\x64Trip\x12\x0f.AddTripRequest\x1a\x07.Result\x12)\n\ndeleteTrip\x12\x12.DeleteTripRequest\x1a\x07.Result\x12\x36\n\x15\x61\x64\x64PhotoToDestination\x12\x14.AddDestPhotoRequest\x1a\x07.Result\x12\x31\n\x08photosOf\x12\x10.PhotosOfRequest\x1a\x11.PhotosOfResponse0\x01\x62\x06proto3'
  ,
  dependencies=[google_dot_protobuf_dot_timestamp__pb2.DESCRIPTOR,])




_RESULT = _descriptor.Descriptor(
  name='Result',
  full_name='Result',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='errors', full_name='Result.errors', index=0,
      number=1, type=9, cpp_type=9, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=50,
  serialized_end=74,
)


_COORDS = _descriptor.Descriptor(
  name='Coords',
  full_name='Coords',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='lat', full_name='Coords.lat', index=0,
      number=1, type=1, cpp_type=5, label=1,
      has_default_value=False, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='lon', full_name='Coords.lon', index=1,
      number=2, type=1, cpp_type=5, label=1,
      has_default_value=False, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=76,
  serialized_end=110,
)


_DESTINATION = _descriptor.Descriptor(
  name='Destination',
  full_name='Destination',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='coords', full_name='Destination.coords', index=0,
      number=1, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='visit_time', full_name='Destination.visit_time', index=1,
      number=3, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='description', full_name='Destination.description', index=2,
      number=4, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=112,
  serialized_end=219,
)


_USER = _descriptor.Descriptor(
  name='User',
  full_name='User',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='user_id', full_name='User.user_id', index=0,
      number=1, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='username', full_name='User.username', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='email', full_name='User.email', index=2,
      number=3, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=221,
  serialized_end=277,
)


_TRIP = _descriptor.Descriptor(
  name='Trip',
  full_name='Trip',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='trip_id', full_name='Trip.trip_id', index=0,
      number=1, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='user_id', full_name='Trip.user_id', index=1,
      number=2, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='start_date', full_name='Trip.start_date', index=2,
      number=3, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='end_date', full_name='Trip.end_date', index=3,
      number=4, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='stops', full_name='Trip.stops', index=4,
      number=99, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=280,
  serialized_end=443,
)


_PHOTO = _descriptor.Descriptor(
  name='Photo',
  full_name='Photo',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='photo_id', full_name='Photo.photo_id', index=0,
      number=1, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='name', full_name='Photo.name', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='extension', full_name='Photo.extension', index=2,
      number=3, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='date_taken', full_name='Photo.date_taken', index=3,
      number=4, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='url', full_name='Photo.url', index=4,
      number=5, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=445,
  serialized_end=564,
)


_REGISTERREQUEST = _descriptor.Descriptor(
  name='RegisterRequest',
  full_name='RegisterRequest',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='username', full_name='RegisterRequest.username', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='email', full_name='RegisterRequest.email', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='password', full_name='RegisterRequest.password', index=2,
      number=3, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=566,
  serialized_end=634,
)


_LOGINREQUEST = _descriptor.Descriptor(
  name='LoginRequest',
  full_name='LoginRequest',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='identity', full_name='LoginRequest.identity', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='password', full_name='LoginRequest.password', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=636,
  serialized_end=686,
)


_ADDTRIPREQUEST = _descriptor.Descriptor(
  name='AddTripRequest',
  full_name='AddTripRequest',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='user_id', full_name='AddTripRequest.user_id', index=0,
      number=1, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='trips', full_name='AddTripRequest.trips', index=1,
      number=2, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=688,
  serialized_end=743,
)


_DELETETRIPREQUEST = _descriptor.Descriptor(
  name='DeleteTripRequest',
  full_name='DeleteTripRequest',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='user_id', full_name='DeleteTripRequest.user_id', index=0,
      number=1, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='trip_id', full_name='DeleteTripRequest.trip_id', index=1,
      number=2, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=745,
  serialized_end=798,
)


_ADDDESTPHOTOREQUEST = _descriptor.Descriptor(
  name='AddDestPhotoRequest',
  full_name='AddDestPhotoRequest',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='coords', full_name='AddDestPhotoRequest.coords', index=0,
      number=1, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='photos', full_name='AddDestPhotoRequest.photos', index=1,
      number=99, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=800,
  serialized_end=870,
)


_TRIPSOFREQUEST = _descriptor.Descriptor(
  name='TripsOfRequest',
  full_name='TripsOfRequest',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='user_id', full_name='TripsOfRequest.user_id', index=0,
      number=1, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=872,
  serialized_end=905,
)


_TRIPSOFRESPONSE = _descriptor.Descriptor(
  name='TripsOfResponse',
  full_name='TripsOfResponse',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='trips', full_name='TripsOfResponse.trips', index=0,
      number=99, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=907,
  serialized_end=946,
)


_PHOTOSOFREQUEST = _descriptor.Descriptor(
  name='PhotosOfRequest',
  full_name='PhotosOfRequest',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='user_id', full_name='PhotosOfRequest.user_id', index=0,
      number=1, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='trip_id', full_name='PhotosOfRequest.trip_id', index=1,
      number=2, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=948,
  serialized_end=999,
)


_PHOTOSOFRESPONSE = _descriptor.Descriptor(
  name='PhotosOfResponse',
  full_name='PhotosOfResponse',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='photo', full_name='PhotosOfResponse.photo', index=0,
      number=1, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=1001,
  serialized_end=1042,
)

_DESTINATION.fields_by_name['coords'].message_type = _COORDS
_DESTINATION.fields_by_name['visit_time'].message_type = google_dot_protobuf_dot_timestamp__pb2._TIMESTAMP
_TRIP.fields_by_name['start_date'].message_type = google_dot_protobuf_dot_timestamp__pb2._TIMESTAMP
_TRIP.fields_by_name['end_date'].message_type = google_dot_protobuf_dot_timestamp__pb2._TIMESTAMP
_TRIP.fields_by_name['stops'].message_type = _DESTINATION
_PHOTO.fields_by_name['date_taken'].message_type = google_dot_protobuf_dot_timestamp__pb2._TIMESTAMP
_ADDTRIPREQUEST.fields_by_name['trips'].message_type = _TRIP
_ADDDESTPHOTOREQUEST.fields_by_name['coords'].message_type = _COORDS
_ADDDESTPHOTOREQUEST.fields_by_name['photos'].message_type = _PHOTO
_TRIPSOFRESPONSE.fields_by_name['trips'].message_type = _TRIP
_PHOTOSOFRESPONSE.fields_by_name['photo'].message_type = _PHOTO
DESCRIPTOR.message_types_by_name['Result'] = _RESULT
DESCRIPTOR.message_types_by_name['Coords'] = _COORDS
DESCRIPTOR.message_types_by_name['Destination'] = _DESTINATION
DESCRIPTOR.message_types_by_name['User'] = _USER
DESCRIPTOR.message_types_by_name['Trip'] = _TRIP
DESCRIPTOR.message_types_by_name['Photo'] = _PHOTO
DESCRIPTOR.message_types_by_name['RegisterRequest'] = _REGISTERREQUEST
DESCRIPTOR.message_types_by_name['LoginRequest'] = _LOGINREQUEST
DESCRIPTOR.message_types_by_name['AddTripRequest'] = _ADDTRIPREQUEST
DESCRIPTOR.message_types_by_name['DeleteTripRequest'] = _DELETETRIPREQUEST
DESCRIPTOR.message_types_by_name['AddDestPhotoRequest'] = _ADDDESTPHOTOREQUEST
DESCRIPTOR.message_types_by_name['TripsOfRequest'] = _TRIPSOFREQUEST
DESCRIPTOR.message_types_by_name['TripsOfResponse'] = _TRIPSOFRESPONSE
DESCRIPTOR.message_types_by_name['PhotosOfRequest'] = _PHOTOSOFREQUEST
DESCRIPTOR.message_types_by_name['PhotosOfResponse'] = _PHOTOSOFRESPONSE
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

Result = _reflection.GeneratedProtocolMessageType('Result', (_message.Message,), {
  'DESCRIPTOR' : _RESULT,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:Result)
  })
_sym_db.RegisterMessage(Result)

Coords = _reflection.GeneratedProtocolMessageType('Coords', (_message.Message,), {
  'DESCRIPTOR' : _COORDS,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:Coords)
  })
_sym_db.RegisterMessage(Coords)

Destination = _reflection.GeneratedProtocolMessageType('Destination', (_message.Message,), {
  'DESCRIPTOR' : _DESTINATION,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:Destination)
  })
_sym_db.RegisterMessage(Destination)

User = _reflection.GeneratedProtocolMessageType('User', (_message.Message,), {
  'DESCRIPTOR' : _USER,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:User)
  })
_sym_db.RegisterMessage(User)

Trip = _reflection.GeneratedProtocolMessageType('Trip', (_message.Message,), {
  'DESCRIPTOR' : _TRIP,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:Trip)
  })
_sym_db.RegisterMessage(Trip)

Photo = _reflection.GeneratedProtocolMessageType('Photo', (_message.Message,), {
  'DESCRIPTOR' : _PHOTO,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:Photo)
  })
_sym_db.RegisterMessage(Photo)

RegisterRequest = _reflection.GeneratedProtocolMessageType('RegisterRequest', (_message.Message,), {
  'DESCRIPTOR' : _REGISTERREQUEST,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:RegisterRequest)
  })
_sym_db.RegisterMessage(RegisterRequest)

LoginRequest = _reflection.GeneratedProtocolMessageType('LoginRequest', (_message.Message,), {
  'DESCRIPTOR' : _LOGINREQUEST,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:LoginRequest)
  })
_sym_db.RegisterMessage(LoginRequest)

AddTripRequest = _reflection.GeneratedProtocolMessageType('AddTripRequest', (_message.Message,), {
  'DESCRIPTOR' : _ADDTRIPREQUEST,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:AddTripRequest)
  })
_sym_db.RegisterMessage(AddTripRequest)

DeleteTripRequest = _reflection.GeneratedProtocolMessageType('DeleteTripRequest', (_message.Message,), {
  'DESCRIPTOR' : _DELETETRIPREQUEST,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:DeleteTripRequest)
  })
_sym_db.RegisterMessage(DeleteTripRequest)

AddDestPhotoRequest = _reflection.GeneratedProtocolMessageType('AddDestPhotoRequest', (_message.Message,), {
  'DESCRIPTOR' : _ADDDESTPHOTOREQUEST,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:AddDestPhotoRequest)
  })
_sym_db.RegisterMessage(AddDestPhotoRequest)

TripsOfRequest = _reflection.GeneratedProtocolMessageType('TripsOfRequest', (_message.Message,), {
  'DESCRIPTOR' : _TRIPSOFREQUEST,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:TripsOfRequest)
  })
_sym_db.RegisterMessage(TripsOfRequest)

TripsOfResponse = _reflection.GeneratedProtocolMessageType('TripsOfResponse', (_message.Message,), {
  'DESCRIPTOR' : _TRIPSOFRESPONSE,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:TripsOfResponse)
  })
_sym_db.RegisterMessage(TripsOfResponse)

PhotosOfRequest = _reflection.GeneratedProtocolMessageType('PhotosOfRequest', (_message.Message,), {
  'DESCRIPTOR' : _PHOTOSOFREQUEST,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:PhotosOfRequest)
  })
_sym_db.RegisterMessage(PhotosOfRequest)

PhotosOfResponse = _reflection.GeneratedProtocolMessageType('PhotosOfResponse', (_message.Message,), {
  'DESCRIPTOR' : _PHOTOSOFRESPONSE,
  '__module__' : 'greeter_pb2'
  # @@protoc_insertion_point(class_scope:PhotosOfResponse)
  })
_sym_db.RegisterMessage(PhotosOfResponse)



_USERS = _descriptor.ServiceDescriptor(
  name='Users',
  full_name='Users',
  file=DESCRIPTOR,
  index=0,
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_start=1044,
  serialized_end=1119,
  methods=[
  _descriptor.MethodDescriptor(
    name='register',
    full_name='Users.register',
    index=0,
    containing_service=None,
    input_type=_REGISTERREQUEST,
    output_type=_USER,
    serialized_options=None,
    create_key=_descriptor._internal_create_key,
  ),
  _descriptor.MethodDescriptor(
    name='login',
    full_name='Users.login',
    index=1,
    containing_service=None,
    input_type=_LOGINREQUEST,
    output_type=_USER,
    serialized_options=None,
    create_key=_descriptor._internal_create_key,
  ),
])
_sym_db.RegisterServiceDescriptor(_USERS)

DESCRIPTOR.services_by_name['Users'] = _USERS


_TRIPS = _descriptor.ServiceDescriptor(
  name='Trips',
  full_name='Trips',
  file=DESCRIPTOR,
  index=1,
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_start=1122,
  serialized_end=1362,
  methods=[
  _descriptor.MethodDescriptor(
    name='tripsOf',
    full_name='Trips.tripsOf',
    index=0,
    containing_service=None,
    input_type=_TRIPSOFREQUEST,
    output_type=_TRIPSOFRESPONSE,
    serialized_options=None,
    create_key=_descriptor._internal_create_key,
  ),
  _descriptor.MethodDescriptor(
    name='addTrip',
    full_name='Trips.addTrip',
    index=1,
    containing_service=None,
    input_type=_ADDTRIPREQUEST,
    output_type=_RESULT,
    serialized_options=None,
    create_key=_descriptor._internal_create_key,
  ),
  _descriptor.MethodDescriptor(
    name='deleteTrip',
    full_name='Trips.deleteTrip',
    index=2,
    containing_service=None,
    input_type=_DELETETRIPREQUEST,
    output_type=_RESULT,
    serialized_options=None,
    create_key=_descriptor._internal_create_key,
  ),
  _descriptor.MethodDescriptor(
    name='addPhotoToDestination',
    full_name='Trips.addPhotoToDestination',
    index=3,
    containing_service=None,
    input_type=_ADDDESTPHOTOREQUEST,
    output_type=_RESULT,
    serialized_options=None,
    create_key=_descriptor._internal_create_key,
  ),
  _descriptor.MethodDescriptor(
    name='photosOf',
    full_name='Trips.photosOf',
    index=4,
    containing_service=None,
    input_type=_PHOTOSOFREQUEST,
    output_type=_PHOTOSOFRESPONSE,
    serialized_options=None,
    create_key=_descriptor._internal_create_key,
  ),
])
_sym_db.RegisterServiceDescriptor(_TRIPS)

DESCRIPTOR.services_by_name['Trips'] = _TRIPS

# @@protoc_insertion_point(module_scope)
