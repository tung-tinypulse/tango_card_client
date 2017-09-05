=begin
#Tango Card RaaS API

#<p>Welcome to the RaaS&reg; API – with this RESTful API you can integrate a global reward or incentive program into your app or platform.<br /><br /> This console works in our Sandbox environment. To receive your own credentials or to ask questions, please contact us <a href=\"mailto:devsupport@tangocard.com\">devsupport@tangocard.com</a>. <input type=\"hidden\" id=\"platformNameHolder\" value=\"QAPlatform2\" /><input type=\"hidden\" id=\"platformKeyHolder\" value=\"apYPfT6HNONpDRUj3CLGWYt7gvIHONpDRUYPfT6Hj\" /></p>

OpenAPI spec version: 2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module SwaggerClient

  class OrderListItemView
    # Account Identifier
    attr_accessor :account_identifier

    # Amount Charged
    attr_accessor :amount_charged

    # Reward Campaign
    attr_accessor :campaign

    # Created Date
    attr_accessor :created_at

    # Customer Identifier
    attr_accessor :customer_identifier

    # Denomination
    attr_accessor :denomination

    # Email Subject
    attr_accessor :email_subject

    # Reward Email Template
    attr_accessor :etid

    # External Reference ID
    attr_accessor :external_ref_id

    # Email Message
    attr_accessor :message

    # Notes
    attr_accessor :notes

    # Recipient Details
    attr_accessor :recipient

    # Reference Order ID
    attr_accessor :reference_order_id

    # Reward Name
    attr_accessor :reward_name

    # Send Email?
    attr_accessor :send_email

    # Sender Details
    attr_accessor :sender

    # Reward Status
    attr_accessor :status

    # Utid - Unique Tango Card ID.
    attr_accessor :utid


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_identifier' => :'accountIdentifier',
        :'amount_charged' => :'amountCharged',
        :'campaign' => :'campaign',
        :'created_at' => :'createdAt',
        :'customer_identifier' => :'customerIdentifier',
        :'denomination' => :'denomination',
        :'email_subject' => :'emailSubject',
        :'etid' => :'etid',
        :'external_ref_id' => :'externalRefID',
        :'message' => :'message',
        :'notes' => :'notes',
        :'recipient' => :'recipient',
        :'reference_order_id' => :'referenceOrderID',
        :'reward_name' => :'rewardName',
        :'send_email' => :'sendEmail',
        :'sender' => :'sender',
        :'status' => :'status',
        :'utid' => :'utid'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_identifier' => :'String',
        :'amount_charged' => :'MoneyView',
        :'campaign' => :'String',
        :'created_at' => :'String',
        :'customer_identifier' => :'String',
        :'denomination' => :'MoneyView',
        :'email_subject' => :'String',
        :'etid' => :'String',
        :'external_ref_id' => :'String',
        :'message' => :'String',
        :'notes' => :'String',
        :'recipient' => :'RecipientInfoView',
        :'reference_order_id' => :'String',
        :'reward_name' => :'String',
        :'send_email' => :'BOOLEAN',
        :'sender' => :'SenderInfoView',
        :'status' => :'String',
        :'utid' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'accountIdentifier')
        self.account_identifier = attributes[:'accountIdentifier']
      end

      if attributes.has_key?(:'amountCharged')
        self.amount_charged = attributes[:'amountCharged']
      end

      if attributes.has_key?(:'campaign')
        self.campaign = attributes[:'campaign']
      end

      if attributes.has_key?(:'createdAt')
        self.created_at = attributes[:'createdAt']
      end

      if attributes.has_key?(:'customerIdentifier')
        self.customer_identifier = attributes[:'customerIdentifier']
      end

      if attributes.has_key?(:'denomination')
        self.denomination = attributes[:'denomination']
      end

      if attributes.has_key?(:'emailSubject')
        self.email_subject = attributes[:'emailSubject']
      end

      if attributes.has_key?(:'etid')
        self.etid = attributes[:'etid']
      end

      if attributes.has_key?(:'externalRefID')
        self.external_ref_id = attributes[:'externalRefID']
      end

      if attributes.has_key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'recipient')
        self.recipient = attributes[:'recipient']
      end

      if attributes.has_key?(:'referenceOrderID')
        self.reference_order_id = attributes[:'referenceOrderID']
      end

      if attributes.has_key?(:'rewardName')
        self.reward_name = attributes[:'rewardName']
      end

      if attributes.has_key?(:'sendEmail')
        self.send_email = attributes[:'sendEmail']
      end

      if attributes.has_key?(:'sender')
        self.sender = attributes[:'sender']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'utid')
        self.utid = attributes[:'utid']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @account_identifier.nil?
        invalid_properties.push("invalid value for 'account_identifier', account_identifier cannot be nil.")
      end

      if @amount_charged.nil?
        invalid_properties.push("invalid value for 'amount_charged', amount_charged cannot be nil.")
      end

      if @campaign.nil?
        invalid_properties.push("invalid value for 'campaign', campaign cannot be nil.")
      end

      if @created_at.nil?
        invalid_properties.push("invalid value for 'created_at', created_at cannot be nil.")
      end

      if @customer_identifier.nil?
        invalid_properties.push("invalid value for 'customer_identifier', customer_identifier cannot be nil.")
      end

      if @denomination.nil?
        invalid_properties.push("invalid value for 'denomination', denomination cannot be nil.")
      end

      if @email_subject.nil?
        invalid_properties.push("invalid value for 'email_subject', email_subject cannot be nil.")
      end

      if @etid.nil?
        invalid_properties.push("invalid value for 'etid', etid cannot be nil.")
      end

      if @external_ref_id.nil?
        invalid_properties.push("invalid value for 'external_ref_id', external_ref_id cannot be nil.")
      end

      if @message.nil?
        invalid_properties.push("invalid value for 'message', message cannot be nil.")
      end

      if @reference_order_id.nil?
        invalid_properties.push("invalid value for 'reference_order_id', reference_order_id cannot be nil.")
      end

      if @reward_name.nil?
        invalid_properties.push("invalid value for 'reward_name', reward_name cannot be nil.")
      end

      if @send_email.nil?
        invalid_properties.push("invalid value for 'send_email', send_email cannot be nil.")
      end

      if @status.nil?
        invalid_properties.push("invalid value for 'status', status cannot be nil.")
      end

      if @utid.nil?
        invalid_properties.push("invalid value for 'utid', utid cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_identifier.nil?
      return false if @amount_charged.nil?
      return false if @campaign.nil?
      return false if @created_at.nil?
      return false if @customer_identifier.nil?
      return false if @denomination.nil?
      return false if @email_subject.nil?
      return false if @etid.nil?
      return false if @external_ref_id.nil?
      return false if @message.nil?
      return false if @reference_order_id.nil?
      return false if @reward_name.nil?
      return false if @send_email.nil?
      return false if @status.nil?
      return false if @utid.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_identifier == o.account_identifier &&
          amount_charged == o.amount_charged &&
          campaign == o.campaign &&
          created_at == o.created_at &&
          customer_identifier == o.customer_identifier &&
          denomination == o.denomination &&
          email_subject == o.email_subject &&
          etid == o.etid &&
          external_ref_id == o.external_ref_id &&
          message == o.message &&
          notes == o.notes &&
          recipient == o.recipient &&
          reference_order_id == o.reference_order_id &&
          reward_name == o.reward_name &&
          send_email == o.send_email &&
          sender == o.sender &&
          status == o.status &&
          utid == o.utid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_identifier, amount_charged, campaign, created_at, customer_identifier, denomination, email_subject, etid, external_ref_id, message, notes, recipient, reference_order_id, reward_name, send_email, sender, status, utid].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
