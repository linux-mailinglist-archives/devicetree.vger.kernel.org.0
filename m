Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B9AD5EDB9F
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 13:22:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233137AbiI1LWX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 07:22:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232599AbiI1LWW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 07:22:22 -0400
X-Greylist: delayed 64 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 28 Sep 2022 04:22:21 PDT
Received: from aer-iport-7.cisco.com (aer-iport-7.cisco.com [173.38.203.69])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91097DCEA6
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 04:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=1715; q=dns/txt; s=iport;
  t=1664364141; x=1665573741;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=B0pImiRaODAXBVOex7WftZ32/MuyBAAbJcf0KrpTF4E=;
  b=AOXcJW0N4JGT0jvWIe6mB2OBhWTaYedvbge+ydsgXQ+A4uitukyemJUn
   sSCpqXtrGDOJWadcha6xKuveQXKw0xInaXhopCXkPy7SEH+IPb/XeHgWP
   zC2OQ3EhJz+T1pwDSFH2LO/Km8iyWcMfzrnI2wVzvxStqxUQASfiVBATJ
   A=;
X-IronPort-AV: E=Sophos;i="5.93,352,1654560000"; 
   d="scan'208";a="1510153"
Received: from aer-iport-nat.cisco.com (HELO aer-core-1.cisco.com) ([173.38.203.22])
  by aer-iport-7.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 28 Sep 2022 11:21:16 +0000
Received: from office-260.rd.cisco.com ([10.47.77.162])
        by aer-core-1.cisco.com (8.15.2/8.15.2) with ESMTP id 28SBLFen008487;
        Wed, 28 Sep 2022 11:21:16 GMT
From:   Erling Ljunggren <hljunggr@cisco.com>
To:     linux-media@vger.kernel.org
Cc:     Erling Ljunggren <hljunggr@cisco.com>, devicetree@vger.kernel.org
Subject: [PATCH v3 3/5] dt-bindings: media: add cat24c208 bindings
Date:   Wed, 28 Sep 2022 13:21:45 +0200
Message-Id: <20220928112147.358745-4-hljunggr@cisco.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220928112147.358745-1-hljunggr@cisco.com>
References: <20220928112147.358745-1-hljunggr@cisco.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Outbound-SMTP-Client: 10.47.77.162, [10.47.77.162]
X-Outbound-Node: aer-core-1.cisco.com
X-Spam-Status: No, score=-9.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIMWL_WL_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        SPF_HELO_NONE,SPF_NONE,USER_IN_DEF_DKIM_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for new cat24c208 EDID EEPROM driver.

Signed-off-by: Erling Ljunggren <hljunggr@cisco.com>
---
 .../bindings/media/i2c/onnn,cat24c208.yaml    | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/onnn,cat24c208.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/onnn,cat24c208.yaml b/Documentation/devicetree/bindings/media/i2c/onnn,cat24c208.yaml
new file mode 100644
index 000000000000..fcfaccb5e39f
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/onnn,cat24c208.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/onnn,cat24c208.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ON Semiconductor CAT24C208 EDID EEPROM driver
+
+maintainers:
+  - Hans Verkuil <hverkuil-cisco@xs4all.nl>
+
+description: |
+  CAT24C208 is a dual port i2c EEPROM designed for EDID storage.
+
+
+properties:
+  compatible:
+    const: onnn,cat24c208
+
+  reg:
+    maxItems: 1
+
+  hpd-gpios:
+    maxItems: 1
+    description:
+      References to the GPIO that controls the HDMI hot-plug detection pin.
+      The active flag indicates the GPIO level that enables hot-plug detection.
+
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        cat24c208@31 {
+            compatible = "onnn,cat24c208";
+            reg = <0x31>;
+            hpd-gpios = <&ioexp 0 GPIO_ACTIVE_HIGH>;
+        };
+    };
+...
-- 
2.37.3

