interface Seq[A] is (ReadSeq[A] & WriteSeq[A])
  """
  A sequence of elements.
  """

  // used by base64, regex, match
  new create(len: USize = 0)
    """
    Create a sequence, reserving space for len elements.
    """

  // used by regex
  fun ref reserve(len: USize): Seq[A]^
    """
    Reserve space for len elements.
    """

  //fun add(that: Seq[A] box): Seq[A]^
