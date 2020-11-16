Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 240842B408B
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 11:15:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728079AbgKPKNY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 05:13:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726172AbgKPKNX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 05:13:23 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 233E0C0613D2
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 02:13:22 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id b6so18037424wrt.4
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 02:13:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X+jktKSyt59M1RlyoUXQDUiIneqQcY7EbqJCiazlG1Y=;
        b=i5E0jmsmNyqdoUSm84mjuIsvNHBhir03FpDaC3SMoi9kLZUyAn5LtMejHw4iI2aD/C
         kJkp37MNw6Il00+yD+5jr2D4No4GLU3VRbioOxxFlTNsT7y39QsT7tJ7Jz1aauH5VO+B
         jizfQ79qJlsFiS+JhJiAZ+v0f5WBBOe74o045qBHQglWGuVPNGYGqHTVwSRZtWSFSWrk
         GWfka0JgYa1hBg5Vf5CKdxFhWg0KB3NPBM6AOmOd+rcGPJz0W8LIv/UCPV/vnf9NILzV
         WxpW5iWo0UTjYl5UbLc2gctXbyI+lYc7yeTcnzQxvm1tgO0KuRcaTrA3+HRwghvmYpzw
         pa/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X+jktKSyt59M1RlyoUXQDUiIneqQcY7EbqJCiazlG1Y=;
        b=YU1LN5C7oDu7Ur1cMaYNa9olXc24td+rjSV9M/75WmWHg60tj8bbDk0Li7VDFRTTyM
         epdoLJ7JuFSqhqnUHdNeVJxLEgwT07TFQe9p2PypoypiT6FhVIkN169XqvhVmZnA+MS9
         pl0ATE5+3s6TU553FidzKB4JEKwlCuaYgsIj1Wh6R8Mpu7Z/6omwslpHbGg6N9lBjxR7
         +eaV48nswfIzjAnd68zsbTJj4EPNWr1KJL1r56WprJyMiqDhPDHN1EUHj3ADoFzTh/pU
         7hHvP974l4i2pI9LztKWS4g0gZXS3liqN+6vrUk4/E2bG1GqjlFgNfaGO5zWJDm1eIkb
         xQ1Q==
X-Gm-Message-State: AOAM533WJ+IISWNkWxu3cqie8xU/7euP0NoIo2eD1ZdyGonBzt3fDj/D
        Lxg2TzRIZOQ9B6wwoaEgQ5rHQ987yizvpOqE
X-Google-Smtp-Source: ABdhPJzzawClAU+KtOLWRR/v6L2Sy0PuBtshrLlL9wKHSAIMeuqAUnlakL7MgC7U+8MHRcgIcEiPrQ==
X-Received: by 2002:adf:9407:: with SMTP id 7mr19583282wrq.182.1605521600399;
        Mon, 16 Nov 2020 02:13:20 -0800 (PST)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:edb9:72a:9e35:6eb])
        by smtp.gmail.com with ESMTPSA id g66sm19082228wmg.37.2020.11.16.02.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 02:13:19 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     devicetree@vger.kernel.org, kishon@ti.com, vkoul@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH v3 1/2] dt-bindings: phy: add Amlogic AXG MIPI D-PHY bindings
Date:   Mon, 16 Nov 2020 11:13:14 +0100
Message-Id: <20201116101315.71720-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201116101315.71720-1-narmstrong@baylibre.com>
References: <20201116101315.71720-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Amlogic AXg SoCs embeds a MIPI D-PHY to communicate with DSI
panels, this adds the bindings.

This D-PHY depends on a separate analog PHY.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/phy/amlogic,axg-mipi-dphy.yaml   | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,axg-mipi-dphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/amlogic,axg-mipi-dphy.yaml b/Documentation/devicetree/bindings/phy/amlogic,axg-mipi-dphy.yaml
new file mode 100644
index 000000000000..be485f500887
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/amlogic,axg-mipi-dphy.yaml
@@ -0,0 +1,70 @@
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
+additionalProperties: false
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
2.25.1

