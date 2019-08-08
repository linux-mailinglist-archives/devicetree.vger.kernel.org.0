Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 89BD285D4E
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 10:51:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731065AbfHHIvq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 04:51:46 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:37919 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731311AbfHHIvq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 04:51:46 -0400
Received: by mail-wm1-f67.google.com with SMTP id s15so1578597wmj.3
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 01:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aXu1nRy+aYfVaPMzwlTQ/4xQ6m4HH0lPk2OELcN4n/s=;
        b=y4G4LoaSpFBdBRVb/la1Vnwn6s+lQ50FXLlIU8QWaO4fMWqWShK50P4LvPLnCzgZGi
         wqp0YLJbzQEEb9IFfKWR/Cu5xI0XOZ7IXsuV/GDTqHAO6HPCzUms7+lNVceXPCIAEJXz
         60/tvmd+D5VkbnvUCwPv2YoY6Vfm7gCm+nMJMwTuU/De3bIlwk6pElZnKaUgsEZIo5iQ
         +tSNcETig87NGSOcW8y/lGblIU7Xs/vNlviwbm7of2JNzSAowmm4NPqgblRVbe7OfuKp
         mJkxH6BmgOS15rf8B4d7R4ClOGRkCwh1gAEBvvUvhOB/eVuftpiHAewC0h22b8RFIe2f
         3U5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aXu1nRy+aYfVaPMzwlTQ/4xQ6m4HH0lPk2OELcN4n/s=;
        b=W/w7JjXbd0YTEOf++jlzeRCBq0E86waypskJP6VP/mc6E6wX3UiI/HsyNhAeLZEdEP
         9Pnv1wkUlDanfigAM1jft4fl86sfLHIjm0VJsWJx2ktDG861zjMXLoDj2BC6ozsMmtpD
         BEqVps7Y9r+6cnPagmFULCArZji4DT1m2+LonQLZ/aemU2lp4ZLfZ8pkc0aMLKvomUNG
         EknPxI1XhTeb9DknQ4Zyn1+xhUV3vV9JgblXQpsfhuW2SskJ5KkDGRyNP0cVH6Cmym0v
         9Txk0RAC5N/uui8PRQjCme36MJ9qnXx6dRmX0w+nrzG3ZUTDjlBQ6ahYL4uahPlFuy3S
         HozQ==
X-Gm-Message-State: APjAAAXsoTGYkqv7pLx8qOh70HeFtfOvGrqKwoCPZfvZSg4HElFZXeg6
        +q0DZNu9ULQkC6sQwBzjcal7oQ==
X-Google-Smtp-Source: APXvYqxTq0DTZdne0Hpdf61fadd2IYVjlm+wBmSqmsptWpUhR0qaNtA+06vzVTvzrupVkiJRZJ6tQA==
X-Received: by 2002:a1c:f918:: with SMTP id x24mr2918700wmh.132.1565254303546;
        Thu, 08 Aug 2019 01:51:43 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id i66sm3360031wmi.11.2019.08.08.01.51.42
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 01:51:43 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 2/9] dt-bindings: rng: amlogic,meson-rng: convert to yaml
Date:   Thu,  8 Aug 2019 10:51:32 +0200
Message-Id: <20190808085139.21438-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808085139.21438-1-narmstrong@baylibre.com>
References: <20190808085139.21438-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic Random Number generator over to a YAML schemas.

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/rng/amlogic,meson-rng.txt        | 21 -----------
 .../bindings/rng/amlogic,meson-rng.yaml       | 37 +++++++++++++++++++
 2 files changed, 37 insertions(+), 21 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt
 create mode 100644 Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt b/Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt
deleted file mode 100644
index 4d403645ac9b..000000000000
--- a/Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-Amlogic Meson Random number generator
-=====================================
-
-Required properties:
-
-- compatible : should be "amlogic,meson-rng"
-- reg : Specifies base physical address and size of the registers.
-
-Optional properties:
-
-- clocks : phandle to the following named clocks
-- clock-names: Name of core clock, must be "core"
-
-Example:
-
-rng {
-	compatible = "amlogic,meson-rng";
-	reg = <0x0 0xc8834000 0x0 0x4>;
-	clocks = <&clkc CLKID_RNG0>;
-	clock-names = "core";
-};
diff --git a/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml b/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml
new file mode 100644
index 000000000000..a9ff3cb35c5e
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/rng/amlogic,meson-rng.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson Random number generator
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-rng
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: core
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    rng@c8834000 {
+          compatible = "amlogic,meson-rng";
+          reg = <0xc8834000 0x4>;
+    };
-- 
2.22.0

