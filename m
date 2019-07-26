Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C9BD076641
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 14:51:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726431AbfGZMvm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 08:51:42 -0400
Received: from bombadil.infradead.org ([198.137.202.133]:39880 "EHLO
        bombadil.infradead.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726065AbfGZMvm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 08:51:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=infradead.org; s=bombadil.20170209; h=Sender:Content-Transfer-Encoding:
        MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
        Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=46csUyry6/DKBxiASXCrcV5NE4G3WoXr6PABmPt5mKY=; b=lWFPpnfZnGnFMg1FzNGRhFzfmD
        TlRSeas0p5ZHwxJ6xCY2b3buIWhCb5rM3oxBzVg5elWNhUV0SFwtkDTrXNg7a1Cfpukxj3Hrg/YkD
        VzNqDqWKD08r1hmkHwIz5p0VaGpR/ccgTocX67XDupj9JkT5fYKpIQ5qohb4Fpyz2u5tFv5wB6g5F
        zYbRimKfMWKfF7cANpUrYwbaRUMOTGddIfXljSQ36HmxXT5lfNBb+PHp/TOrlsdlGrOpxcMuxTYFL
        ovI4BAbxahmNfdjPzWnO5ZN3QjFYypyZAzgCjNaTqkEXg1X/FapWl6hyxmphQTECmZ61GlYWiDP5u
        7ada9i6w==;
Received: from [179.95.31.157] (helo=bombadil.infradead.org)
        by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
        id 1hqzhE-0006AS-9v; Fri, 26 Jul 2019 12:51:40 +0000
Received: from mchehab by bombadil.infradead.org with local (Exim 4.92)
        (envelope-from <mchehab@bombadil.infradead.org>)
        id 1hqzhC-0005aO-1K; Fri, 26 Jul 2019 09:51:38 -0300
From:   Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc:     Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 05/26] docs: writing-schema.md: convert from markdown to ReST
Date:   Fri, 26 Jul 2019 09:51:15 -0300
Message-Id: <a68dd02de6cbc7cd032d0322e1f2b08f9e5b3e84.1564145354.git.mchehab+samsung@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1564145354.git.mchehab+samsung@kernel.org>
References: <cover.1564145354.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The documentation standard is ReST and not markdown.

Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../{writing-schema.md => writing-schema.rst} | 137 ++++++++++--------
 1 file changed, 80 insertions(+), 57 deletions(-)
 rename Documentation/devicetree/{writing-schema.md => writing-schema.rst} (48%)

diff --git a/Documentation/devicetree/writing-schema.md b/Documentation/devicetree/writing-schema.rst
similarity index 48%
rename from Documentation/devicetree/writing-schema.md
rename to Documentation/devicetree/writing-schema.rst
index dc032db36262..8f71d1e2ac52 100644
--- a/Documentation/devicetree/writing-schema.md
+++ b/Documentation/devicetree/writing-schema.rst
@@ -1,65 +1,81 @@
-# Writing DeviceTree Bindings in json-schema
+:orphan:
+
+Writing DeviceTree Bindings in json-schema
+==========================================
 
 Devicetree bindings are written using json-schema vocabulary. Schema files are
 written in a JSON compatible subset of YAML. YAML is used instead of JSON as it
 considered more human readable and has some advantages such as allowing
 comments (Prefixed with '#').
 
-## Schema Contents
+Schema Contents
+---------------
 
 Each schema doc is a structured json-schema which is defined by a set of
 top-level properties. Generally, there is one binding defined per file. The
 top-level json-schema properties used are:
 
-- __$id__ - A json-schema unique identifier string. The string must be a valid
-URI typically containing the binding's filename and path. For DT schema, it must
-begin with "http://devicetree.org/schemas/". The URL is used in constructing
-references to other files specified in schema "$ref" properties. A $ref values
-with a leading '/' will have the hostname prepended. A $ref value a relative
-path or filename only will be prepended with the hostname and path components
-of the current schema file's '$id' value. A URL is used even for local files,
-but there may not actually be files present at those locations.
-
-- __$schema__ - Indicates the meta-schema the schema file adheres to.
-
-- __title__ - A one line description on the contents of the binding schema.
-
-- __maintainers__ - A DT specific property. Contains a list of email address(es)
-for maintainers of this binding.
-
-- __description__ - Optional. A multi-line text block containing any detailed
-information about this binding. It should contain things such as what the block
-or device does, standards the device conforms to, and links to datasheets for
-more information.
-
-- __select__ - Optional. A json-schema used to match nodes for applying the
-schema. By default without 'select', nodes are matched against their possible
-compatible string values or node name. Most bindings should not need select.
-
-- __allOf__ - Optional. A list of other schemas to include. This is used to
-include other schemas the binding conforms to. This may be schemas for a
-particular class of devices such as I2C or SPI controllers.
-
-- __properties__ - A set of sub-schema defining all the DT properties for the
-binding. The exact schema syntax depends on whether properties are known,
-common properties (e.g. 'interrupts') or are binding/vendor specific properties.
-
-  A property can also define a child DT node with child properties defined
+$id
+  A json-schema unique identifier string. The string must be a valid
+  URI typically containing the binding's filename and path. For DT schema, it must
+  begin with "http://devicetree.org/schemas/". The URL is used in constructing
+  references to other files specified in schema "$ref" properties. A $ref values
+  with a leading '/' will have the hostname prepended. A $ref value a relative
+  path or filename only will be prepended with the hostname and path components
+  of the current schema file's '$id' value. A URL is used even for local files,
+  but there may not actually be files present at those locations.
+
+$schema
+  Indicates the meta-schema the schema file adheres to.
+
+title
+  A one line description on the contents of the binding schema.
+
+maintainers
+  A DT specific property. Contains a list of email address(es)
+  for maintainers of this binding.
+
+description
+  Optional. A multi-line text block containing any detailed
+  information about this binding. It should contain things such as what the block
+  or device does, standards the device conforms to, and links to datasheets for
+  more information.
+
+select
+  Optional. A json-schema used to match nodes for applying the
+  schema. By default without 'select', nodes are matched against their possible
+  compatible string values or node name. Most bindings should not need select.
+
+ allOf
+  Optional. A list of other schemas to include. This is used to
+  include other schemas the binding conforms to. This may be schemas for a
+  particular class of devices such as I2C or SPI controllers.
+
+ properties
+  A set of sub-schema defining all the DT properties for the
+  binding. The exact schema syntax depends on whether properties are known,
+  common properties (e.g. 'interrupts') or are binding/vendor specific properties.
+
+A property can also define a child DT node with child properties defined
 under it.
 
-  For more details on properties sections, see 'Property Schema' section.
+For more details on properties sections, see 'Property Schema' section.
 
-- __patternProperties__ - Optional. Similar to 'properties', but names are regex.
+patternProperties
+  Optional. Similar to 'properties', but names are regex.
 
-- __required__ - A list of DT properties from the 'properties' section that
-must always be present.
+required
+  A list of DT properties from the 'properties' section that
+  must always be present.
 
-- __examples__ - Optional. A list of one or more DTS hunks implementing the
-binding. Note: YAML doesn't allow leading tabs, so spaces must be used instead.
+examples
+  Optional. A list of one or more DTS hunks implementing the
+  binding. Note: YAML doesn't allow leading tabs, so spaces must be used instead.
 
 Unless noted otherwise, all properties are required.
 
-## Property Schema
+Property Schema
+---------------
 
 The 'properties' section of the schema contains all the DT properties for a
 binding. Each property contains a set of constraints using json-schema
@@ -89,42 +105,49 @@ The YAML Devicetree format also makes all string values an array and scalar
 values a matrix (in order to define groupings) even when only a single value
 is present. Single entries in schemas are fixed up to match this encoding.
 
-## Testing
+Testing
+-------
 
-### Dependencies
+Dependencies
+~~~~~~~~~~~~
 
 The DT schema project must be installed in order to validate the DT schema
 binding documents and validate DTS files using the DT schema. The DT schema
-project can be installed with pip:
+project can be installed with pip::
 
-`pip3 install git+https://github.com/devicetree-org/dt-schema.git@master`
+    pip3 install git+https://github.com/devicetree-org/dt-schema.git@master
 
 dtc must also be built with YAML output support enabled. This requires that
 libyaml and its headers be installed on the host system.
 
-### Running checks
+Running checks
+~~~~~~~~~~~~~~
 
 The DT schema binding documents must be validated using the meta-schema (the
 schema for the schema) to ensure they are both valid json-schema and valid
 binding schema. All of the DT binding documents can be validated using the
-`dt_binding_check` target:
+``dt_binding_check`` target::
 
-`make dt_binding_check`
+    make dt_binding_check
 
-In order to perform validation of DT source files, use the `dtbs_check` target:
+In order to perform validation of DT source files, use the `dtbs_check` target::
 
-`make dtbs_check`
+    make dtbs_check
 
 This will first run the `dt_binding_check` which generates the processed schema.
 
 It is also possible to run checks with a single schema file by setting the
-'DT_SCHEMA_FILES' variable to a specific schema file.
+``DT_SCHEMA_FILES`` variable to a specific schema file.
 
-`make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/trivial-devices.yaml`
+::
 
+    make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/trivial-devices.yaml
 
-## json-schema Resources
 
-[JSON-Schema Specifications](http://json-schema.org/)
+json-schema Resources
+---------------------
 
-[Using JSON Schema Book](http://usingjsonschema.com/)
+
+`JSON-Schema Specifications <http://json-schema.org/>`_
+
+`Using JSON Schema Book <http://usingjsonschema.com/>`_
-- 
2.21.0

