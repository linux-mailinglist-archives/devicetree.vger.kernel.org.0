Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 511C1428A0D
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 11:46:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235599AbhJKJsi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 05:48:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235710AbhJKJsc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 05:48:32 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8610AC061766
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:46:32 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id r10so54222158wra.12
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ARx59XBBf9xiaLASctE1UnOxwnjT+44aKGxoCxv5924=;
        b=wH5/AFiG/pk0F3/+fdIuZ5eutQLWnapkGISNxFkIZieo/UEz4Ix6re/D37+O2GyEqz
         W8x7fwu3lSc6hiK1eLI8vByqmWxRejpPJ2LnFrwIim9yf3LbAjOmqpLhKc9bdhoiYOop
         VmCN/qTe1mN4rYi+VjS2MW16iiJjDss7tpihdMox1Z7usShIm776pnW69N3O/drT8p2s
         ZfKjluXycxDVysWdy3x3e1za0tDy+5MCZ2DiVOqX2bmXrMJeBb+rqQA989yuE7kH0Qmo
         LCSzhPYjN5+rVYsyMuUkbzPNRhPEfuOE1xZX3kySP7f0GaLkY2MmL7UAjAeQO4Fdmf4C
         4ABQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ARx59XBBf9xiaLASctE1UnOxwnjT+44aKGxoCxv5924=;
        b=kv4ah6jtElwNty4tMOj70PqfeY/kkjlAG2MFiZSQ2LvuD8TzBp4K9K9924SzeB9Nue
         /GWtAiZuxL20zXxYY2oOOPO1ipsK4RnJRRpQC0wOJfc9eKfk+NgcF8y+Omq+Ifudz1mC
         WKdTlBaeMHxixyUNtvjk02lfQkB/qJQX9Vs2b9kKUIMFZPFXd9ckeGJ+9Bki4NonHMN8
         0I0CmAVxbKHPR9vdwCPxxDVz/QS+yufznQdzMJ6AuWBKMdK1g8AfVZ2RvHx2tIALoKNn
         e9RTG3sY8FybRFEr+X/GaTcmSSuu3O0ps1Vz3TB5f/MutLvZAGmCxFlhtD1EqmzcL0sP
         yfoQ==
X-Gm-Message-State: AOAM532A02W4CRV4jqFsJoxPfcDP0wi1E0gKHQduKMp4nsBzXJaHmnQj
        SkkLDVyZpfqY/XHvXgjHeMge5A==
X-Google-Smtp-Source: ABdhPJzRNgDcBGyRyTExetCumakD9+88IM6+d91MTPJf4q5LLxEXlaKFMJ6bv7zxNMY3zF0cUaw7RQ==
X-Received: by 2002:a05:600c:1c97:: with SMTP id k23mr2586839wms.80.1633945591075;
        Mon, 11 Oct 2021 02:46:31 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900::97e])
        by smtp.gmail.com with ESMTPSA id o8sm21349291wme.38.2021.10.11.02.46.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 02:46:30 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc:     Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v4 1/7] dt-bindings: mediatek,dpintf: Add DP_INTF binding
Date:   Mon, 11 Oct 2021 11:46:18 +0200
Message-Id: <20211011094624.3416029-2-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211011094624.3416029-1-msp@baylibre.com>
References: <20211011094624.3416029-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DP_INTF is a similar functional block to mediatek,dpi but is different
in that it serves the DisplayPort controller on mediatek SoCs and uses
different clocks. Therefore this patch creates a new binding file for
this functional block.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---

Notes:
    Changes v3 -> v4:
    - Fixed clock names in the example as the clock patch series is merged into
      next now
    - Add missing ports decleration to the example
    
    Changes v1 -> v2:
    - Move the devicetree binding from mediatek,dpi into its own binding file.

 .../display/mediatek/mediatek,dpintf.yaml     | 86 +++++++++++++++++++
 1 file changed, 86 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml
new file mode 100644
index 000000000000..3b5e0c148c97
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,dpintf.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek DP_INTF Controller Device Tree Bindings
+
+maintainers:
+  - CK Hu <ck.hu@mediatek.com>
+  - Jitao shi <jitao.shi@mediatek.com>
+
+description: |
+  The Mediatek DP_INTF function block is a sink of the display subsystem
+  connected to the display port controller.
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt8195-dpintf
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: hf_fmm Clock
+      - description: hf_fdp Clock
+      - description: Pixel Clock
+      - description: DP_INTF PLL
+
+  clock-names:
+    items:
+      - const: hf_fmm
+      - const: hf_fdp
+      - const: pixel
+      - const: pll
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      Output port node. This port should be connected to the input port of an
+      attached display port controller.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/mt8195-clk.h>
+
+    dp_intf1: dp_intf1@1c113000 {
+        compatible = "mediatek,mt8195-dpintf";
+        reg = <0 0x1c113000 0 0x1000>;
+        interrupts = <GIC_SPI 513 IRQ_TYPE_LEVEL_HIGH 0>;
+        clocks = <&vdosys1 CLK_VDO1_DP_INTF0_MM>,
+             <&vdosys1 CLK_VDO1_DPINTF>,
+             <&topckgen CLK_TOP_DP>,
+             <&topckgen CLK_APMIXED_TVDPLL2>;
+        clock-names = "hf_fmm",
+                  "hf_fdp",
+                  "pixel",
+                  "pll";
+
+        ports {
+            port {
+                dpintf1_out: endpoint {
+                    remote-endpoint = <&dp_in>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.33.0

