Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DB2237009F
	for <lists+devicetree@lfdr.de>; Fri, 30 Apr 2021 20:37:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230363AbhD3Sht (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Apr 2021 14:37:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229954AbhD3Shs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Apr 2021 14:37:48 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 216F3C06138C
        for <devicetree@vger.kernel.org>; Fri, 30 Apr 2021 11:36:59 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id a4so71677358wrr.2
        for <devicetree@vger.kernel.org>; Fri, 30 Apr 2021 11:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NFNZ7i0cF38YBK0xp7pTtVlEjV54KF0wRBddOCem090=;
        b=cv/Wf1QAK11HQZOI0vXfs6ZfFzFZeSZj7zzbYxt2eOBjtwbqHqzO0PA+hrm7lYsx2+
         /4rs2Ov7gsAAfPszq9WTiMvzjNBrLK/N9BAngwec4VkBxuWsf8qRJDTlSd633b7qrVdI
         /Z3ODWHdIOKiFu05Oa+3TFcL4B9bal9e54kOPQNDiI/0mHtBl+X1JQBHtg8ixBRgnxme
         E6quGVm4Rb0w89TKDZ3TSaBfvzc0t2EEuJ5IsnkJ/gQAUFM5YkyC/VRWG6vqXdyEODH0
         7fHdoP0J9XkqS+BcKSUSIS/L5ZSggK6SS3gmHI1g2WIMowSrHtvJVv9543cZZsuDI5UU
         a8pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NFNZ7i0cF38YBK0xp7pTtVlEjV54KF0wRBddOCem090=;
        b=LgmFOE4b+TWS0bXoVGmvcs02ljQIcHt5u1mm5iM1HHGENjPQVAmp5xCKGycLG6h2jd
         7c3B3hb4G+hvoN1VviC5rF5P+QKTY0pVBN7SiC2920OKy5zVAhoTQVAoHCORoXy+mdnP
         43W/VsLIRZewZdBiPTKk+YRlrPKpa81nF6h3FcjAUS2MgWPpeixhwcLRGQWMgXxpy5q9
         A2154kqyfgklqucXYVSL+lG3ankvzm2ea4W4SWZH661rc6FAzBd6a1//FbM63ps5oH72
         1aTAbh3iJner1p0H9tiPFBPxSXU/SnIwN8WM6hOJX7+3VSYKP4OzKHTXYq60BeavuBpT
         993g==
X-Gm-Message-State: AOAM532pLFc2OunnBacFZBUpZM/TVqXQhaPZ2DzkDGYQgydOqR0/sx6q
        wweShVUpDdzIlUNMmyXg1iKrQA==
X-Google-Smtp-Source: ABdhPJyVTlMVqspQZFB2Xwk9VhB3Mi9Ja1/UO42nXr0T9aMT68OKgXA1pPSFePN2Sx31hts9mJpjjA==
X-Received: by 2002:a5d:4e52:: with SMTP id r18mr8544205wrt.179.1619807818496;
        Fri, 30 Apr 2021 11:36:58 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id i2sm3927854wro.0.2021.04.30.11.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Apr 2021 11:36:57 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     robh+dt@kernel.org, vkoul@kernel.org
Cc:     devicetree@vger.kernel.org, dmaengine@vger.kernel.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3] dt-bindings: dma: convert arm-pl08x to yaml
Date:   Fri, 30 Apr 2021 18:36:51 +0000
Message-Id: <20210430183651.919317-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Converts dma/arm-pl08x.txt to yaml.
In the process, I add an example for the faraday variant.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
Changes since v1:
- fixes yamllint warning about indent
- added select

Changes since v2:
- fixed all Rob's comment on v2

 .../devicetree/bindings/dma/arm-pl08x.txt     |  59 --------
 .../devicetree/bindings/dma/arm-pl08x.yaml    | 136 ++++++++++++++++++
 2 files changed, 136 insertions(+), 59 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/dma/arm-pl08x.txt
 create mode 100644 Documentation/devicetree/bindings/dma/arm-pl08x.yaml

diff --git a/Documentation/devicetree/bindings/dma/arm-pl08x.txt b/Documentation/devicetree/bindings/dma/arm-pl08x.txt
deleted file mode 100644
index 0ba81f79266f..000000000000
--- a/Documentation/devicetree/bindings/dma/arm-pl08x.txt
+++ /dev/null
@@ -1,59 +0,0 @@
-* ARM PrimeCells PL080 and PL081 and derivatives DMA controller
-
-Required properties:
-- compatible: "arm,pl080", "arm,primecell";
-	      "arm,pl081", "arm,primecell";
-	      "faraday,ftdmac020", "arm,primecell"
-- arm,primecell-periphid: on the FTDMAC020 the primecell ID is not hard-coded
-  in the hardware and must be specified here as <0x0003b080>. This number
-  follows the PrimeCell standard numbering using the JEP106 vendor code 0x38
-  for Faraday Technology.
-- reg: Address range of the PL08x registers
-- interrupt: The PL08x interrupt number
-- clocks: The clock running the IP core clock
-- clock-names: Must contain "apb_pclk"
-- lli-bus-interface-ahb1: if AHB master 1 is eligible for fetching LLIs
-- lli-bus-interface-ahb2: if AHB master 2 is eligible for fetching LLIs
-- mem-bus-interface-ahb1: if AHB master 1 is eligible for fetching memory contents
-- mem-bus-interface-ahb2: if AHB master 2 is eligible for fetching memory contents
-- #dma-cells: must be <2>. First cell should contain the DMA request,
-              second cell should contain either 1 or 2 depending on
-              which AHB master that is used.
-
-Optional properties:
-- dma-channels: contains the total number of DMA channels supported by the DMAC
-- dma-requests: contains the total number of DMA requests supported by the DMAC
-- memcpy-burst-size: the size of the bursts for memcpy: 1, 4, 8, 16, 32
-  64, 128 or 256 bytes are legal values
-- memcpy-bus-width: the bus width used for memcpy in bits: 8, 16 or 32 are legal
-  values, the Faraday FTDMAC020 can also accept 64 bits
-
-Clients
-Required properties:
-- dmas: List of DMA controller phandle, request channel and AHB master id
-- dma-names: Names of the aforementioned requested channels
-
-Example:
-
-dmac0: dma-controller@10130000 {
-	compatible = "arm,pl080", "arm,primecell";
-	reg = <0x10130000 0x1000>;
-	interrupt-parent = <&vica>;
-	interrupts = <15>;
-	clocks = <&hclkdma0>;
-	clock-names = "apb_pclk";
-	lli-bus-interface-ahb1;
-	lli-bus-interface-ahb2;
-	mem-bus-interface-ahb2;
-	memcpy-burst-size = <256>;
-	memcpy-bus-width = <32>;
-	#dma-cells = <2>;
-};
-
-device@40008000 {
-	...
-	dmas = <&dmac0 0 2
-		&dmac0 1 2>;
-	dma-names = "tx", "rx";
-	...
-};
diff --git a/Documentation/devicetree/bindings/dma/arm-pl08x.yaml b/Documentation/devicetree/bindings/dma/arm-pl08x.yaml
new file mode 100644
index 000000000000..3bd9eea543ca
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/arm-pl08x.yaml
@@ -0,0 +1,136 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dma/arm-pl08x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM PrimeCells PL080 and PL081 and derivatives DMA controller
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+allOf:
+  - $ref: "dma-controller.yaml#"
+
+# We need a select here so we don't match all nodes with 'arm,primecell'
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - arm,pl080
+          - arm,pl081
+  required:
+    - compatible
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - arm,pl080
+              - arm,pl081
+          - const: arm,primecell
+      - items:
+          - const: faraday,ftdma020
+          - const: arm,pl080
+          - const: arm,primecell
+
+  reg:
+    maxItems: 1
+    description: Address range of the PL08x registers
+
+  interrupts:
+    minItems: 1
+    description: The PL08x interrupt number
+
+  clocks:
+    minItems: 1
+    description: The clock running the IP core clock
+
+  clock-names:
+    maxItems: 1
+
+  lli-bus-interface-ahb1:
+    type: boolean
+    description: if AHB master 1 is eligible for fetching LLIs
+
+  lli-bus-interface-ahb2:
+    type: boolean
+    description: if AHB master 2 is eligible for fetching LLIs
+
+  mem-bus-interface-ahb1:
+    type: boolean
+    description: if AHB master 1 is eligible for fetching memory contents
+
+  mem-bus-interface-ahb2:
+    type: boolean
+    description: if AHB master 2 is eligible for fetching memory contents
+
+  memcpy-burst-size:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 1
+      - 4
+      - 8
+      - 16
+      - 32
+      - 64
+      - 128
+      - 256
+    description: the size of the bursts for memcpy
+
+  memcpy-bus-width:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum:
+      - 8
+      - 16
+      - 32
+      - 64
+    description: bus width used for memcpy in bits. FTDMAC020 also accept 64 bits
+
+required:
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - "#dma-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    dmac0: dma-controller@10130000 {
+      compatible = "arm,pl080", "arm,primecell";
+      reg = <0x10130000 0x1000>;
+      interrupt-parent = <&vica>;
+      interrupts = <15>;
+      clocks = <&hclkdma0>;
+      clock-names = "apb_pclk";
+      lli-bus-interface-ahb1;
+      lli-bus-interface-ahb2;
+      mem-bus-interface-ahb2;
+      memcpy-burst-size = <256>;
+      memcpy-bus-width = <32>;
+      #dma-cells = <2>;
+    };
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/reset/cortina,gemini-reset.h>
+    #include <dt-bindings/clock/cortina,gemini-clock.h>
+    dma-controller@67000000 {
+      compatible = "faraday,ftdma020", "arm,pl080", "arm,primecell";
+      /* Faraday Technology FTDMAC020 variant */
+      arm,primecell-periphid = <0x0003b080>;
+      reg = <0x67000000 0x1000>;
+      interrupts = <9 IRQ_TYPE_EDGE_RISING>;
+      resets = <&syscon GEMINI_RESET_DMAC>;
+      clocks = <&syscon GEMINI_CLK_AHB>;
+      clock-names = "apb_pclk";
+      /* Bus interface AHB1 (AHB0) is totally tilted */
+      lli-bus-interface-ahb2;
+      mem-bus-interface-ahb2;
+      memcpy-burst-size = <256>;
+      memcpy-bus-width = <32>;
+      #dma-cells = <2>;
+    };
-- 
2.26.3

