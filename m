Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7143439C46C
	for <lists+devicetree@lfdr.de>; Sat,  5 Jun 2021 02:30:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229920AbhFEAcc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 20:32:32 -0400
Received: from mail-pf1-f181.google.com ([209.85.210.181]:38419 "EHLO
        mail-pf1-f181.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229906AbhFEAcc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 20:32:32 -0400
Received: by mail-pf1-f181.google.com with SMTP id z26so8608688pfj.5
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 17:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PZP7uoqK4rZTbRyor5ljz0z5OefandIGr44+CvdyTHk=;
        b=wG/O3dkQkvY2siVOpGfkrEcJx8jL0hjMDTrnKdjGD/YpTa07gbC+SvH/o7A3yU+FL6
         HMfua4DtIHs0eS7xyT6QIhk7ZZLaMt3QKqJRXz9Jgta48+AWUhAU/XIoa1DG7bBkZHpY
         VOMeXGUumIRi60JC0GIz0Jr4a6OeMnm8VhLly3U2SDBkXeWv0XzUSWHiOzScOhMivIqJ
         fHjBajoDDSfwOufXRUHt8ZtL7c2KdF3lIlYAWmIAma2PdrT7ElXV0SgWkJFKXRMr9UE/
         dSjxQpprIYDR2fCRUyCBMtDX6+WWuCNG7DWXny3HGZSWtnws2ub+j9FznQLTV4KdVjx+
         /98A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PZP7uoqK4rZTbRyor5ljz0z5OefandIGr44+CvdyTHk=;
        b=TGCuMbKQn9DeyPfySF6qI/6RuokNMJsjd36OgjBQ42p+KELJKxm4pvZO6eA7KaWkiH
         Dgaae7wGffHeXXj7//E9Zl3QiHL1AZVusFYNGUrLDqkdujCkj+prewS602i16XtcDtmW
         UID2CG7YVRvbvM62QQ5wkLe5mhnyJefT1kLdpw9RxuPsiPtCbLKOOduRLNEM95jmZUOi
         IOiNUO4HKLZ4Zx4cT4ZCYh3INLBnM/aFlaW/bSpDasSLT0r+LFMF5kzaaDIaJfo22GL/
         WhSGLK5rGRy/zlLQgJhxQOPi7+zR3CsdMNYSwBSEyqmLYOa/oSjvEV/RyHiGkgpgR463
         +itQ==
X-Gm-Message-State: AOAM531DFWrr9I0h3DRcHYXjHCLcqM9DpnoYYnGpoVE42LfvlhRoPozD
        LfO39UUMTAs0rQcXmDmkLz7X
X-Google-Smtp-Source: ABdhPJx188cd5LTGTHCHNR4bRrRTAV1T+k04ZIfLNyVyN4S9b49HoZgXJMag3gBLT+KUq73YSYeYhg==
X-Received: by 2002:a05:6a00:1a8b:b029:28e:7b62:5118 with SMTP id e11-20020a056a001a8bb029028e7b625118mr7040711pfv.49.1622852985186;
        Fri, 04 Jun 2021 17:29:45 -0700 (PDT)
Received: from localhost ([2405:6581:5360:1800:7285:c2ff:fec2:8f97])
        by smtp.gmail.com with ESMTPSA id x19sm2683648pgj.66.2021.06.04.17.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 17:29:44 -0700 (PDT)
From:   Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To:     broonie@kernel.org, michal.simek@xilinx.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
        Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH v2] dt-bindings: spi: xilinx: convert to yaml
Date:   Sat,  5 Jun 2021 09:29:31 +0900
Message-Id: <20210605002931.858031-1-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert SPI for Xilinx bindings documentation to YAML schemas.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 v2: Use enum instead of oneOf with const.
     Add constraints to xlnx,num-ss-bits and xlnx,num-transfer-bits.

 .../devicetree/bindings/spi/spi-xilinx.txt    | 23 --------
 .../devicetree/bindings/spi/spi-xilinx.yaml   | 57 +++++++++++++++++++
 2 files changed, 57 insertions(+), 23 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-xilinx.txt
 create mode 100644 Documentation/devicetree/bindings/spi/spi-xilinx.yaml

diff --git a/Documentation/devicetree/bindings/spi/spi-xilinx.txt b/Documentation/devicetree/bindings/spi/spi-xilinx.txt
deleted file mode 100644
index 5f4ed3e5c9942c..00000000000000
--- a/Documentation/devicetree/bindings/spi/spi-xilinx.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-Xilinx SPI controller Device Tree Bindings
--------------------------------------------------
-
-Required properties:
-- compatible		: Should be "xlnx,xps-spi-2.00.a", "xlnx,xps-spi-2.00.b" or "xlnx,axi-quad-spi-1.00.a"
-- reg			: Physical base address and size of SPI registers map.
-- interrupts		: Property with a value describing the interrupt
-			  number.
-
-Optional properties:
-- xlnx,num-ss-bits	 : Number of chip selects used.
-- xlnx,num-transfer-bits : Number of bits per transfer. This will be 8 if not specified
-
-Example:
-	axi_quad_spi@41e00000 {
-			compatible = "xlnx,xps-spi-2.00.a";
-			interrupt-parent = <&intc>;
-			interrupts = <0 31 1>;
-			reg = <0x41e00000 0x10000>;
-			xlnx,num-ss-bits = <0x1>;
-			xlnx,num-transfer-bits = <32>;
-	};
-
diff --git a/Documentation/devicetree/bindings/spi/spi-xilinx.yaml b/Documentation/devicetree/bindings/spi/spi-xilinx.yaml
new file mode 100644
index 00000000000000..593f7693baceed
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/spi-xilinx.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/spi-xilinx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Xilinx SPI controller Device Tree Bindings
+
+maintainers:
+  - Michal Simek <michal.simek@xilinx.com>
+
+allOf:
+  - $ref: "spi-controller.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - xlnx,xps-spi-2.00.a
+      - xlnx,xps-spi-2.00.b
+      - xlnx,axi-quad-spi-1.00.a
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  xlnx,num-ss-bits:
+    description: Number of chip selects used.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 32
+
+  xlnx,num-transfer-bits:
+    description: Number of bits per transfer. This will be 8 if not specified.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [8, 16, 32]
+    default: 8
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    spi0: spi@41e00000 {
+      compatible = "xlnx,xps-spi-2.00.a";
+      interrupt-parent = <&intc>;
+      interrupts = <0 31 1>;
+      reg = <0x41e00000 0x10000>;
+      xlnx,num-ss-bits = <0x1>;
+      xlnx,num-transfer-bits = <32>;
+    };
+...
-- 
2.30.0

