Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E02E627C149
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 11:32:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728051AbgI2JcP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 05:32:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727740AbgI2JcM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 05:32:12 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7309BC061755
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 02:32:12 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id x14so4525223wrl.12
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 02:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X+jktKSyt59M1RlyoUXQDUiIneqQcY7EbqJCiazlG1Y=;
        b=myLb+Hr6JRovq+G7HcalEjWrE9xtAR8ykHBBv4s3xwlJeTdJdrmjx5VFHI1pfytwo0
         mUhQu3iL2Ournn0t/Lt6tDQ3/R9CILOjnCnviUv35KudZ+7Z0Cyqa6UqD51Ty3Y5saOH
         DPgDtkvBjlZFIF0UWJbr2hnHzKdCQ3B6ZnhmoQ22CZQxn7r+xVYRMH+e15Ix7p/1x4sQ
         ZBViLZCSHqniJskizbyN1oVpwM0zko+0kfPvaMnTFXoJekFnX5H/LifKQR0CxpegdAbz
         Exzywj3HVGjLH7WUraTq7YMKLUmk8jmUNTCzDRkWrTGwX8OyTIGx56u7uitDsmr4TIDV
         HwuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X+jktKSyt59M1RlyoUXQDUiIneqQcY7EbqJCiazlG1Y=;
        b=naDhmUaB7XAw9aHWjRktCVups9vqUk8MSoyFaRI/yyb3qIx2xwdvs7CJWU75JF3Yyl
         Pj4XmQ62wxMwXBuW4aC/TrlbTD9mdWlFrd97pRhdoTajBZTuLPGbDPRFdq2G3KrW7GxL
         BrKbCrzIfPAtvUQk9v+Zw6d9Bz3zNhzbp00pTuHX1JcuD/OcMtUQ6PZnUz8XWb3O7Ac3
         ZB2GfSrUdtTqA96f85/K+NgubLAH2upkBBOw6dJHiYSjAIT1bBLU5uiebAGB7Lm/cS+j
         ql2oaHehPdezU8hGD9vV5rSvBUGt8Jvm0geQb33qjUXpJ5RkJfqt8x2QwJbFI0OIy4/a
         a2jg==
X-Gm-Message-State: AOAM531oG1OytibQ2oBNyRikPErlIXbxm+p7mwTPJhxyWyh2S5g3+ncZ
        SybwdK/Et/5dGyPDzgscUpnEhA==
X-Google-Smtp-Source: ABdhPJzXi4MqKZk/mmRCSffYTu1+LpmIZUNXQbMDjC5qAe67PTCaW4S2MNtIm7Lxjh1GKuVCkefxSA==
X-Received: by 2002:adf:81c6:: with SMTP id 64mr3103257wra.176.1601371930925;
        Tue, 29 Sep 2020 02:32:10 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:d50c:1ee4:fec5:ad12])
        by smtp.gmail.com with ESMTPSA id a10sm4596107wmj.38.2020.09.29.02.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 02:32:10 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     kishon@ti.com, devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: phy: add Amlogic AXG MIPI D-PHY bindings
Date:   Tue, 29 Sep 2020 11:32:02 +0200
Message-Id: <20200929093203.337954-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200929093203.337954-1-narmstrong@baylibre.com>
References: <20200929093203.337954-1-narmstrong@baylibre.com>
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

