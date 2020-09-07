Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBE9B25F3EF
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 09:27:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727026AbgIGH1U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 03:27:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727016AbgIGH1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 03:27:19 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB7F6C061573
        for <devicetree@vger.kernel.org>; Mon,  7 Sep 2020 00:27:18 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id m6so14665182wrn.0
        for <devicetree@vger.kernel.org>; Mon, 07 Sep 2020 00:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2TPEKZsBaI5ym5zLNPRbwhJVAOFuQ97b5/eUYr0rYDc=;
        b=dfAa5ahKol3nYX5fP99OQv9g8cZuwSDzK9qnmdGDEs4UhWg2EsuzIEILHEyi+3HSU5
         vi0F4k+v6dRExbfz+uRjrnhu2hEkiKEyx58bIMKaUtqz+deWPXWsTlv2taoQnkeSTxrh
         lsfg5NqerMjlWhdaoFeZcPCre1Pyt+jfIFyQY6mgxOi+QrAxD9t7dU6rGl+Bsq0M/k5H
         ChNOh7CEbRBycnHqZkRiWFse28/jViwxWz+F2fQNSiPiqkk2WAxD6WUPEnKunP00eIa3
         KCyKDThMrrS5Zg8iQO21hVuzk5/mqZ1TpGjzPDwQ4IJ4f6K5coQY+mQomK+pjfLbGC8O
         q8gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2TPEKZsBaI5ym5zLNPRbwhJVAOFuQ97b5/eUYr0rYDc=;
        b=ucsxcgPrDQuiaYQ4dQMIeqc7Hb7jJDWt34OnV36P2k0tzAGKQtOEiyQRlmRKsjZYGc
         Se0JyI9zg2bPlkC8uNhhTZr8r/EEiKct6TukHxDFfjA45SmghzVGVlb3yRRsAL8LPriX
         3GjW0N2ZpJWloKAA1CSqUvWVE0AUAt78pU9Kq+i+Z0r0RxfZAl2XFzzUHJZzRNVCvk1o
         oRpWhp6+S5c1G6VjLMsHfZwB8TbF/FRXGtbKsq0eVsbAl+hNB69CzbqlEuHTE6rQL10M
         ke6flrFw/EtXeLJVRxwEu5ZxPgi6TVSZo2l6N3nHT3VxcKkF3EYuJKiBWmSNTVaLEupY
         5kzw==
X-Gm-Message-State: AOAM531AL49gdgnqwGKp0sRBNvbOQ5HpGRyNxruXkrcO3nS2XLuEU7XW
        IVT2WpADRxnSg/4vJXw0ZzNnSA==
X-Google-Smtp-Source: ABdhPJzENjeeo6XRiHnOARoz14tPkStdsIiGG1vknGWVVW2afjDs6Ovn3bt++gumxHsXNXnA7IHj3Q==
X-Received: by 2002:adf:efc9:: with SMTP id i9mr20929383wrp.187.1599463636463;
        Mon, 07 Sep 2020 00:27:16 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5405:9623:e2f1:b2ac])
        by smtp.gmail.com with ESMTPSA id x16sm25560500wrq.62.2020.09.07.00.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 00:27:15 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     kishon@ti.com, devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 1/2] dt-bindings: phy: add Amlogic AXG MIPI D-PHY bindings
Date:   Mon,  7 Sep 2020 09:27:07 +0200
Message-Id: <20200907072708.26043-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200907072708.26043-1-narmstrong@baylibre.com>
References: <20200907072708.26043-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Amlogic AXg SoCs embeds a MIPI D-PHY to communicate with DSI
panels, this adds the bindings.

This D-PHY depends on a separate analog PHY.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/phy/amlogic,axg-mipi-dphy.yaml   | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,axg-mipi-dphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/amlogic,axg-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/amlogic,axg-mipi-dphy.yaml
new file mode 100644
index 000000000000..f7ae1135288b
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/amlogic,axg-mipi-dphy.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2020 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/amlogic,axg-mipi-dphy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic AXG MIPI D-PHY
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,axg-mipi-dphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: pclk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: phy
+
+  "#phy-cells":
+    const: 0
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    items:
+      - const: analog
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - phys
+  - phy-names
+  - "#phy-cells"
+
+examples:
+  - |
+    phy@ff640000 {
+            compatible = "amlogic,axg-mipi-dphy";
+            reg = <0xff640000 0x100>;
+            clocks = <&clk_mipi_dsi_phy>;
+            clock-names = "pclk";
+            resets = <&reset_phy>;
+            reset-names = "phy";
+            phys = <&mipi_pcie_analog_dphy>;
+            phy-names = "analog";
+            #phy-cells = <0>;
+    };
-- 
2.22.0

