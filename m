Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C41EF428A0B
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 11:46:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231370AbhJKJsh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 05:48:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235711AbhJKJsd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 05:48:33 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6771DC061767
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:46:33 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id e3so20590557wrc.11
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2EEEytKyiHl9MpK92vctIYCtuI6jVdoVhBUl4pU7DhM=;
        b=7QmUw9oUjeAXQ+N4EGb7qUEi7igSPAWW7qJ42AeU3ZI8za+ANUSgJh3Xv1hfT4IXT4
         5pP/KUCQYJF543uBLE2kDaMGxjkLyDn21Okir7Q/O2tQNWdvFDAL7tWKk9ixihm6ie/a
         +uwsStaPyh2DbVnn5FzFE4YxYAWNEPMIr/Drr+o/UICJVlo0iCDp5v8RlF1tmCn2I/Ip
         y6fXyfIpliplrJrnSwG+NcGHbn53x9L8YBCygcwEBpFEFOKyC3/SB9BjmjSEt49Nm04h
         27vxc9r7BRfhAKVy3QeJcYBv2TD7KksKYwcweVu0iffHTIh0nHTMZEgFOQg1bIqCh2f7
         5ysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2EEEytKyiHl9MpK92vctIYCtuI6jVdoVhBUl4pU7DhM=;
        b=Ns8+BbzFQocTaCvww5R5O93jrchUaZFQgTxF4oYVq00A0Dltc5Ne01NENv9ocqOLxn
         IqLjbDCp6vc6dprJxwKOOcPbkSuxmSfDFN336LW1R+vuVSADkdsMvPIBAytD/bIIn8Hq
         UO6vfMRk2QKXeeoIjzCzuTF4bTNQ6UaoEVJXt9HKOtsCPZkzrQNKjdUdpO2W74ThUJDf
         O4nM1lU9hfknxi1tZuOJn1EdYr49o1UWyFQ2b+Lg8ewsRrO7R3vixzubUI3P3C1hTLCg
         ZyNxzusuGgwZR4cykb5MRzbT57nFUBFgxMBK8caQcOGfWe7P+0fHh6z2MAUwOONlnZZ7
         NNCg==
X-Gm-Message-State: AOAM532LBWxuGBG3k5B/Cthi3EJEo4/HUmlt6jebHAvTndXbqhy2wtqx
        C2b3amoxEmDGCchahBr81nTaAg==
X-Google-Smtp-Source: ABdhPJy49jJmzwFQTvOOSCXErrx4sl47Ylj9R8HPx2KuflIOgsK25MWAhOfYiIYYCyLv+vTPAMKitg==
X-Received: by 2002:a05:6000:1689:: with SMTP id y9mr23685780wrd.52.1633945591821;
        Mon, 11 Oct 2021 02:46:31 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900::97e])
        by smtp.gmail.com with ESMTPSA id o8sm21349291wme.38.2021.10.11.02.46.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 02:46:31 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc:     Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v4 2/7] dt-bindings: mediatek,dp: Add Display Port binding
Date:   Mon, 11 Oct 2021 11:46:19 +0200
Message-Id: <20211011094624.3416029-3-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211011094624.3416029-1-msp@baylibre.com>
References: <20211011094624.3416029-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This controller is present on several mediatek hardware. Currently
mt8195 and mt8395 have this controller without a functional difference,
so only one compatible field is added.

The controller can have two forms, as a normal display port and as an
embedded display port.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 .../display/mediatek/mediatek,dp.yaml         | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
new file mode 100644
index 000000000000..f7a35962c23b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,dp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek Display Port Controller
+
+maintainers:
+  - CK Hu <ck.hu@mediatek.com>
+  - Jitao shi <jitao.shi@mediatek.com>
+
+description: |
+  Device tree bindings for the Mediatek (embedded) Display Port controller
+  present on some Mediatek SoCs.
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt8195-edp_tx
+      - mediatek,mt8195-dp_tx
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: faxi clock
+
+  clock-names:
+    items:
+      - const: faxi
+
+  power-domains:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Input endpoint of the controller, usually dp_intf
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output endpoint of the controller
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8195-power.h>
+    dp_tx: edp_tx@1c500000 {
+        compatible = "mediatek,mt8195-edp_tx";
+        reg = <0 0x1c500000 0 0x8000>;
+        interrupts = <GIC_SPI 676 IRQ_TYPE_LEVEL_HIGH 0>;
+        power-domains = <&spm MT8195_POWER_DOMAIN_EPD_TX>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&edp_pin>;
+        status = "okay";
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                edp_in: endpoint {
+                    remote-endpoint = <&dp_intf0_out>;
+                };
+            };
+            port@1 {
+                reg = <1>;
+                edp_out: endpoint {
+                	remote-endpoint = <&panel_in>;
+                };
+            };
+        };
+    };
-- 
2.33.0

