class Enumerator

  # Traits are types for sequences. They are implemented as Ruby modules.
  # By declaring a trait, the caller promises that the sequence will conform.
  # No conformance checking will be done at runtime in that case.
  # Each kind of (declarable) trait is ensurable by a module returned from the
  # trait's #ensure_with class method.
  #
  # TODO: add a protocol for wrapping an instance so we can compose Enumerators
  #       like uniq.
  #
  # See traits-kit monotonic.rb for an example of a trait.

  def declare_trait(trait)
    self.extend(trait) unless self.kind_of?(trait)
    self
  end

  def ensure_trait(trait)
    raise ArgumentError, "#{trait} is not a trait module" \
      unless trait.respond_to?(:ensure_with)
    self.extend(trait.ensure_with) unless self.kind_of?(trait)
    self
  end

end
