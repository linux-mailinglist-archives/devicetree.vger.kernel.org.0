Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39CCD38D690
	for <lists+devicetree@lfdr.de>; Sat, 22 May 2021 19:01:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231309AbhEVRCy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 May 2021 13:02:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231299AbhEVRCv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 May 2021 13:02:51 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16611C061574
        for <devicetree@vger.kernel.org>; Sat, 22 May 2021 10:01:26 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id v8so29342454lft.8
        for <devicetree@vger.kernel.org>; Sat, 22 May 2021 10:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2cWMWt6l1K/FKK4PMngOirfi0Lo5LlcuDK06p3mrXkw=;
        b=drlak+cfCEu6nlbXAljLk1Y0mrM5HuORnJowV1Dl3MMY3N0q+zSBNhJRDdKrdatGV5
         dEPaS7WWn5jejafZ3hJrJv+MPzsMd/VaEcGKSmAaCsT+kt2+8ap3rkkAYu8mphZjQhxt
         D0adSI+8To4awcpUP7Gv/umf6vrgOYrlsptBJ+0FjGZTb5n5R/L4V+iBr3n3TQvOHO9D
         xA5tSjPQN4FM8ljKFE6evjGSzMaRjLLNKcXF3scEB8/ZW70SvH+KpjKaFQuDrXEbPVEC
         K1Xd5TlK1PgWT3Uz3cE7Npaolm5RKrDoTUHjkt4GwFiFF8+/Qv1+K7PH3eTNW5kNx/w/
         P/tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2cWMWt6l1K/FKK4PMngOirfi0Lo5LlcuDK06p3mrXkw=;
        b=OaAGZPK8Doe3dj5/Es6+/do/OjLDkG5uLSZCeEnXLj4j+8li3PiBLzampYqP4siBCr
         DJkVtyKbHhgj+0Zp30fGD9O2PCSeeoHb9XBpz51wWTV0Us95SvcnoLKP8ardzU1JKqfp
         0KzaBQVAfHyiWTfw+rfAp9y1T9Zo16i36bg7M+Tmxu8lXD74l7g/b9bCH9M8O6DGsEOD
         QRD5Wvp2b8ApJg+5GCQrYb/eGuCWrZKkOE5f1JXC/ZhzGqkc3Iz6kSrF3ni9/UbLCuhH
         KbAU8j2HW7qQeYa0iQ91oeHpTfvK6qV6OyvRRAAMkRQogn3p8DTW3888U+WprOrzEfUG
         SJTg==
X-Gm-Message-State: AOAM533jHTRF0pVoZeXCxQExFPmlFtkDPB5ztmQzTd9ZvKe9HUvPe35p
        /3rSSxOTPqY/c+svLzYtkQdxNA==
X-Google-Smtp-Source: ABdhPJzVsBkjhvVTSyU21VZiODTytLTnG5QM/grVgTYVEmggqmIyK697G6bd8+FTxTGFRbbokqTfnQ==
X-Received: by 2002:ac2:533a:: with SMTP id f26mr5810752lfh.424.1621702884294;
        Sat, 22 May 2021 10:01:24 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id u15sm958870lfs.67.2021.05.22.10.01.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 May 2021 10:01:24 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     linux-crypto@vger.kernel.org,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        Corentin Labbe <clabbe@baylibre.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Arnd Bergmann <arnd@arndb.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 2/3 v3] crypto: ixp4xx: Add DT bindings
Date:   Sat, 22 May 2021 18:59:12 +0200
Message-Id: <20210522165913.915100-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210522165913.915100-1-linus.walleij@linaro.org>
References: <20210522165913.915100-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the ixp4xx crypto engine.

Cc: Corentin Labbe <clabbe@baylibre.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v2->v3:
- Use the reg property to set the NPE instance number for
  the crypto engine.
- Add address-cells and size-cells to the NPE bindings
  consequently.
- Use a patternProperty to match the cryto engine child
  "crypto@N".
- Define as crypto@2 in the example.
- Describe the usage of the queue instance cell for the
  queue manager phandles.
ChangeLog v1->v2:
- Drop the phandle to self, just add an NPE instance number
  instead.
- Add the crypto node to the NPE binding.
- Move the example over to the NPE binding where it appears
  in context.
---
 .../bindings/crypto/intel,ixp4xx-crypto.yaml  | 46 +++++++++++++++++++
 ...ntel,ixp4xx-network-processing-engine.yaml | 21 +++++++++
 2 files changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/intel,ixp4xx-crypto.yaml

diff --git a/Documentation/devicetree/bindings/crypto/intel,ixp4xx-crypto.yaml b/Documentation/devicetree/bindings/crypto/intel,ixp4xx-crypto.yaml
new file mode 100644
index 000000000000..9df2062e4816
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/intel,ixp4xx-crypto.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2018 Linaro Ltd.
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/crypto/intel,ixp4xx-crypto.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Intel IXP4xx cryptographic engine
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  The Intel IXP4xx cryptographic engine makes use of the IXP4xx NPE
+  (Network Processing Engine). Since it is not a device on its own
+  it is defined as a subnode of the NPE, if crypto support is
+  available on the platform.
+
+properties:
+  compatible:
+    const: intel,ixp4xx-crypto
+
+  reg:
+    minimum: 0
+    maximum: 3
+    description: instance number to the NPE this crypto engine is using
+
+  queue-rx:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
+    description: phandle to the RX queue on the NPE, the cell describing
+      the queue instance to be used.
+
+  queue-txready:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
+    description: phandle to the TX READY queue on the NPE, the cell describing
+      the queue instance to be used.
+
+required:
+  - compatible
+  - reg
+  - queue-rx
+  - queue-txready
+
+additionalProperties: false
diff --git a/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml b/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml
index 1bd2870c3a9c..8b2eaf835b66 100644
--- a/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml
+++ b/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml
@@ -30,6 +30,18 @@ properties:
       - description: NPE1 register range
       - description: NPE2 register range
 
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^crypto@[0-7]+$":
+    $ref: /schemas/crypto/intel,ixp4xx-crypto.yaml#
+    type: object
+    description: Optional node for the embedded crypto engine
+
 required:
   - compatible
   - reg
@@ -41,5 +53,14 @@ examples:
     npe@c8006000 {
          compatible = "intel,ixp4xx-network-processing-engine";
          reg = <0xc8006000 0x1000>, <0xc8007000 0x1000>, <0xc8008000 0x1000>;
+         #address-cells = <1>;
+         #size-cells = <0>;
+
+         crypto@2 {
+             compatible = "intel,ixp4xx-crypto";
+             reg = <2>;
+             queue-rx = <&qmgr 30>;
+             queue-txready = <&qmgr 29>;
+         };
     };
 ...
-- 
2.31.1

