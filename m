Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C11803EE7FE
	for <lists+devicetree@lfdr.de>; Tue, 17 Aug 2021 10:07:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238816AbhHQIHp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Aug 2021 04:07:45 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:59530
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238861AbhHQIHa (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 17 Aug 2021 04:07:30 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id EB9C240CAC
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 08:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629187614;
        bh=gTC7PEUSA5dHECIH2h3N62kOFO0K8qY81V1jF3nxSjc=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=Yl1Q7mbudu2N5PeiyhTLfIs52kEM4idOvf2OECBEOkaFPLeeqUEcQI6Z9CKrHjh3N
         Ace+gfMy+q1cfnC15pawF6nE0iP3MnNq7S/znzhoSwFXOTg8ZWsPen1iUIaqOxLv4t
         HoT3pDX80fe7JMGTmgIoJujXQGgWuwbfkrJlLpVG/gHZZ9dZetxmfLuogNtRNyoEHn
         Kpx6EzZEL/W+iC4MkiriTEOeDQKclrydi9EE2Ug5FL2CUxN/Xx3ey+4x+xpQrTgOwY
         Cig/qpRjSJza4CR2X1iFmRW0kXLfR3JPczHyc34zqTacl0W59wgaRkejmiGoZ4bFR6
         edQkYGIdBwmcQ==
Received: by mail-ed1-f69.google.com with SMTP id eg56-20020a05640228b8b02903be79801f9aso10130467edb.21
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 01:06:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gTC7PEUSA5dHECIH2h3N62kOFO0K8qY81V1jF3nxSjc=;
        b=NOdVGEAZ4241Cc3j1TUn71lddViH2rXCP33t8beD8u7CdriSHSxbaXqBH+8FpPliiu
         GYfwKVULpdpp39ChK6xZptvmnMtz5E3lfWd5mgyyjXv2jyZL7qYLnVTksI3l90hF17Hm
         JBm5j69MSzsGGRiLHAJTx82IyK5GlPib9eplSe78D3rmY3gLuuLethBhLNXcT1+tL3Ix
         Kb31XGe3mY0W+PqTPxe73+1YF8Fltpkn5AwGen7xVxkILr5tQnudCamtAJClM4nEI//B
         m83V/mJXSYJFAjlOAGSGMjwbD/SqfWc84t52/ZZ99bNIUMFu1is61yTvLZDWYo6JuASv
         vwgA==
X-Gm-Message-State: AOAM530ds5k3v0RWhMiKGcdPez57TSBNyp4mdz3TUy3NM+ZGWWL9Atpe
        2ULbFS1q2IiA+sm0dJw+eXtJcNGAbpDrMGILTxiWYPlZP46GTOGJ0D8r1MjHQBdPWJntR09q9kg
        hsDjdvb0KqhMboVzjMlR0P7mpAlA8b+m83cZCAnM=
X-Received: by 2002:a17:906:f90c:: with SMTP id lc12mr2606296ejb.96.1629187614480;
        Tue, 17 Aug 2021 01:06:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxug0RpA7XHKzvWpV/h62al/fvo39l+Fmdx5oDpD9qBSh34lwOsD09ucjabyGG7KZ38GYcZyQ==
X-Received: by 2002:a17:906:f90c:: with SMTP id lc12mr2606275ejb.96.1629187614275;
        Tue, 17 Aug 2021 01:06:54 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id i26sm425529ejh.4.2021.08.17.01.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 01:06:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Markus Mayer <mmayer@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: memory: convert Broadcom DPFE to dtschema
Date:   Tue, 17 Aug 2021 10:06:17 +0200
Message-Id: <20210817080617.14503-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Broadcom DDR PHY Front End (DPFE) bindings to DT schema format
using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../memory-controllers/brcm,dpfe-cpu.txt      | 27 -----------
 .../memory-controllers/brcm,dpfe-cpu.yaml     | 48 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 49 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.txt b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.txt
deleted file mode 100644
index 82d923ef413f..000000000000
--- a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-DDR PHY Front End (DPFE) for Broadcom STB
-=========================================
-
-DPFE and the DPFE firmware provide an interface for the host CPU to
-communicate with the DCPU, which resides inside the DDR PHY.
-
-There are three memory regions for interacting with the DCPU. These are
-specified in a single reg property.
-
-Required properties:
-  - compatible: must be "brcm,bcm7271-dpfe-cpu", "brcm,bcm7268-dpfe-cpu"
-    or "brcm,dpfe-cpu"
-  - reg: must reference three register ranges
-      - start address and length of the DCPU register space
-      - start address and length of the DCPU data memory space
-      - start address and length of the DCPU instruction memory space
-  - reg-names: must contain "dpfe-cpu", "dpfe-dmem", and "dpfe-imem";
-        they must be in the same order as the register declarations
-
-Example:
-	dpfe_cpu0: dpfe-cpu@f1132000 {
-		compatible = "brcm,bcm7271-dpfe-cpu", "brcm,dpfe-cpu";
-		reg =  <0xf1132000 0x180
-			0xf1134000 0x1000
-			0xf1138000 0x4000>;
-		reg-names = "dpfe-cpu", "dpfe-dmem", "dpfe-imem";
-	};
diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
new file mode 100644
index 000000000000..769f13250047
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/brcm,dpfe-cpu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DDR PHY Front End (DPFE) for Broadcom STB
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Markus Mayer <mmayer@broadcom.com>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - brcm,bcm7271-dpfe-cpu
+          - brcm,bcm7268-dpfe-cpu
+      - const: brcm,dpfe-cpu
+
+  reg:
+    items:
+      - description: DCPU register space
+      - description: DCPU data memory space
+      - description: DCPU instruction memory space
+
+  reg-names:
+    items:
+      - const: dpfe-cpu
+      - const: dpfe-dmem
+      - const: dpfe-imem
+
+required:
+  - compatible
+  - reg
+  - reg-names
+
+additionalProperties: false
+
+examples:
+  - |
+    dpfe-cpu@f1132000 {
+        compatible = "brcm,bcm7271-dpfe-cpu", "brcm,dpfe-cpu";
+        reg = <0xf1132000 0x180>,
+              <0xf1134000 0x1000>,
+              <0xf1138000 0x4000>;
+        reg-names = "dpfe-cpu", "dpfe-dmem", "dpfe-imem";
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 36aee8517ab0..be8e4af8ed64 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3855,7 +3855,7 @@ M:	Markus Mayer <mmayer@broadcom.com>
 M:	bcm-kernel-feedback-list@broadcom.com
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
-F:	Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.txt
+F:	Documentation/devicetree/bindings/memory-controllers/brcm,dpfe-cpu.yaml
 F:	drivers/memory/brcmstb_dpfe.c
 
 BROADCOM STB NAND FLASH DRIVER
-- 
2.30.2

