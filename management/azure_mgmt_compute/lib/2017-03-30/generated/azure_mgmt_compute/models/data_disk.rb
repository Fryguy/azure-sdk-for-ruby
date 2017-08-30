# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2017_03_30
  module Models
    #
    # Describes a data disk.
    #
    class DataDisk

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] Specifies the logical unit number of the data disk.
      # This value is used to identify data disks within the VM and therefore
      # must be unique for each data disk attached to a VM.
      attr_accessor :lun

      # @return [String] The disk name.
      attr_accessor :name

      # @return [VirtualHardDisk] The virtual hard disk..
      attr_accessor :vhd

      # @return [VirtualHardDisk] The source user image virtual hard disk. The
      # virtual hard disk will be copied before being attached to the virtual
      # machine. If SourceImage is provided, the destination virtual hard drive
      # must not exist.
      attr_accessor :image

      # @return [CachingTypes] Specifies the caching requirements. <br><br>
      # Possible values are: <br><br> **None** <br><br> **ReadOnly** <br><br>
      # **ReadWrite** <br><br> Default: **None for Standard storage. ReadOnly
      # for Premium storage**. Possible values include: 'None', 'ReadOnly',
      # 'ReadWrite'
      attr_accessor :caching

      # @return [DiskCreateOptionTypes] Specifies how the virtual machine
      # should be created.<br><br> Possible values are:<br><br> **Attach**
      # \u2013 This value is used when you are using a specialized disk to
      # create the virtual machine.<br><br> **FromImage** \u2013 This value is
      # used when you are using an image to create the virtual machine. If you
      # are using a platform image, you also use the imageReference element
      # described above. If you are using a marketplace image, you  also use
      # the plan element previously described. Possible values include:
      # 'fromImage', 'empty', 'attach'
      attr_accessor :create_option

      # @return [Integer] Specifies the size of an empty data disk in
      # gigabytes. This element can be used to overwrite the name of the disk
      # in a virtual machine image. <br><br> This value cannot be larger than
      # 1023 GB
      attr_accessor :disk_size_gb

      # @return [ManagedDiskParameters] The managed disk parameters.
      attr_accessor :managed_disk


      #
      # Mapper for DataDisk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DataDisk',
          type: {
            name: 'Composite',
            class_name: 'DataDisk',
            model_properties: {
              lun: {
                required: true,
                serialized_name: 'lun',
                type: {
                  name: 'Number'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              vhd: {
                required: false,
                serialized_name: 'vhd',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualHardDisk'
                }
              },
              image: {
                required: false,
                serialized_name: 'image',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualHardDisk'
                }
              },
              caching: {
                required: false,
                serialized_name: 'caching',
                type: {
                  name: 'Enum',
                  module: 'CachingTypes'
                }
              },
              create_option: {
                required: true,
                serialized_name: 'createOption',
                type: {
                  name: 'Enum',
                  module: 'DiskCreateOptionTypes'
                }
              },
              disk_size_gb: {
                required: false,
                serialized_name: 'diskSizeGB',
                type: {
                  name: 'Number'
                }
              },
              managed_disk: {
                required: false,
                serialized_name: 'managedDisk',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedDiskParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
