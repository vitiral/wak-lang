(assert_malformed
  (module quote "(func (export \"\\00\\00\\fe\\ff\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\8f\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\90\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\9f\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\a0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\bf\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\c0\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\c0\\bf\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\c1\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\c1\\bf\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\c2\\00\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\c2\\2e\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\c2\\7f\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\c2\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\c2\\c0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\c2\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\c2\\fd\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\df\\00\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\df\\7f\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\df\\c0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\df\\fd\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e0\\00\\a0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e0\\7f\\a0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e0\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e0\\80\\a0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e0\\9f\\a0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e0\\9f\\bf\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e0\\a0\\00\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e0\\a0\\7f\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e0\\a0\\c0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e0\\a0\\fd\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e0\\c0\\a0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e0\\fd\\a0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e1\\00\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e1\\2e\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e1\\7f\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e1\\80\\00\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e1\\80\\2e\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e1\\80\\7f\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e1\\80\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e1\\80\\c0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e1\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e1\\80\\fd\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e1\\c0\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e1\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\e1\\fd\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ec\\00\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ec\\7f\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ec\\80\\00\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ec\\80\\7f\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ec\\80\\c0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ec\\80\\fd\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ec\\c0\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ec\\fd\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ed\\00\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ed\\7f\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ed\\80\\00\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ed\\80\\7f\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ed\\80\\c0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ed\\80\\fd\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ed\\a0\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ed\\a0\\bf\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ed\\bf\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ed\\bf\\bf\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ed\\c0\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ed\\fd\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ee\\00\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ee\\7f\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ee\\80\\00\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ee\\80\\7f\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ee\\80\\c0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ee\\80\\fd\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ee\\c0\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ee\\fd\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ef\\00\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ef\\7f\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ef\\80\\00\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ef\\80\\7f\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ef\\80\\c0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ef\\80\\fd\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ef\\c0\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ef\\fd\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\00\\90\\90\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\7f\\90\\90\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\80\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\80\\90\\90\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\8f\\90\\90\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\8f\\bf\\bf\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\90\\00\\90\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\90\\7f\\90\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\90\\90\\00\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\90\\90\\7f\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\90\\90\\c0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\90\\90\\fd\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\90\\c0\\90\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\90\\fd\\90\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\c0\\90\\90\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f0\\fd\\90\\90\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\00\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\23\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\7f\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\80\\00\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\80\\23\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\80\\7f\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\80\\80\\00\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\80\\80\\23\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\80\\80\\7f\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\80\\80\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\80\\80\\c0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\80\\80\\fd\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\80\\c0\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\80\\fd\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\c0\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f1\\fd\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f3\\00\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f3\\7f\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f3\\80\\00\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f3\\80\\7f\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f3\\80\\80\\00\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f3\\80\\80\\7f\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f3\\80\\80\\c0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f3\\80\\80\\fd\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f3\\80\\c0\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f3\\80\\fd\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f3\\c0\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f3\\fd\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f4\\00\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f4\\7f\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f4\\80\\00\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f4\\80\\7f\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f4\\80\\80\\00\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f4\\80\\80\\7f\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f4\\80\\80\\c0\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f4\\80\\80\\fd\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f4\\80\\c0\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f4\\80\\fd\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f4\\90\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f4\\bf\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f4\\c0\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f4\\fd\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f5\\80\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f7\\80\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f7\\bf\\bf\\bf\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f8\\23\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f8\\80\\23\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f8\\80\\80\\23\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f8\\80\\80\\80\\23\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f8\\80\\80\\80\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f8\\80\\80\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f8\\80\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f8\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f8\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\f8\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fb\\bf\\bf\\bf\\bf\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fc\\23\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fc\\80\\23\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fc\\80\\80\\23\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fc\\80\\80\\80\\23\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fc\\80\\80\\80\\80\\23\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fc\\80\\80\\80\\80\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fc\\80\\80\\80\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fc\\80\\80\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fc\\80\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fc\\80\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fc\\80\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fc\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fd\\bf\\bf\\bf\\bf\\bf\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fe\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\fe\\ff\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ff\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ff\\fe\\00\\00\"))")
  "invalid UTF-8 encoding"
)
(assert_malformed
  (module quote "(func (export \"\\ff\\fe\"))")
  "invalid UTF-8 encoding"
)
