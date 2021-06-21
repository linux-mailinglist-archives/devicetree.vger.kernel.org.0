Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 778003AE418
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 09:25:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230351AbhFUH1T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 03:27:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230263AbhFUH1R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 03:27:17 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80F2BC0617A6
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 00:25:01 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id t13so1626383pgu.11
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 00:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+FXbFtToGuPHtOxGpIr0dvHdivz/Q1z9OEfRP1dWFro=;
        b=ownqbAde7ibUTXmaomPwWhKWAEcCtoFyPt61G9Xb2vNCBoM++ysOgTju/3C/+CFCOn
         wf+51wtlD0MKRS1pOFsy+y9UTYr9YYc6ZSrONuFx1q+St/UYyD8LaAu1u6oEGj6rarHZ
         kJ8TGz5wvPUXxuLJIa0VLSryCqeWeu8KFJVC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+FXbFtToGuPHtOxGpIr0dvHdivz/Q1z9OEfRP1dWFro=;
        b=Ix13EPogNZBOJgjiUbQKy3+V1GYoOG37v9T82utLUCZ9E45Yx1/Wg+/3fx9rNQ/QQJ
         ZzQxo262VOwTFD8qR1VSuFVQM9UraLucG4UMF+eIuQFEqz4/aHIxVT1nIhd+b4vFKXqU
         eVMMIGQ1elNPjhFw6WKO2yJvJ9wt5or/M1b0MGdUviWDw+mnyaQR6UyWlpN/VZ/4CwLY
         xIl6fPAB+OEwDSqfeoDLzueT0FCVM4D0ojsdi2M76OglJiqKY1+caw9GxRjIL1JM+lPL
         lN4AxvaPSicl09NYffRtb+LbxZfYOmdeZtUU/Gte+aSEf7/F+k3cVLJNt2abIxTeWYJV
         4afg==
X-Gm-Message-State: AOAM531IfmE6jlnH+I7PHbOuAjl2b1eTyjvjrJeVjXjg+Xh7gdDtoVLM
        h/dKCXJqmROu6Rdryc8KMPBLog==
X-Google-Smtp-Source: ABdhPJyR1XX4kE8GVc5LSmw4hAodEITo1Dr1v/NraHJ76cJclVLPD+cShV85kMW3fABma1FQT+PvkQ==
X-Received: by 2002:a63:ef44:: with SMTP id c4mr22275167pgk.162.1624260301131;
        Mon, 21 Jun 2021 00:25:01 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a884:139:e97f:a55d:7f66])
        by smtp.gmail.com with ESMTPSA id 21sm13951294pfh.103.2021.06.21.00.24.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jun 2021 00:25:00 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Tomasz Figa <t.figa@samsung.com>,
        Fancy Fang <chen.fang@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Anthony Brandon <anthony@amarulasolutions.com>,
        Francis Laniel <francis.laniel@amarulasolutions.com>,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Milco Pratesi <milco.pratesi@engicam.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [RFC PATCH 3/9] dt-bindings: phy: Add SEC DSIM DPHY bindings
Date:   Mon, 21 Jun 2021 12:54:18 +0530
Message-Id: <20210621072424.111733-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210621072424.111733-1-jagan@amarulasolutions.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Samsung SEC MIPI DSIM DPHY controller is part of registers
available in SEC MIPI DSIM bridge for NXP's i.MX8M Mini and
Nano Processors.

Add dt-bingings for it.

Cc: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../bindings/phy/samsung,sec-dsim-dphy.yaml   | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.yaml b/Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.yaml
new file mode 100644
index 000000000000..c5770c8035e1
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/samsung,sec-dsim-dphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung SEC MIPI DSIM DPHY controller on i.MX8M Mini and Nano SoCs
+
+maintainers:
+  - Jagan Teki <jagan@amarulasolutions.com>
+
+properties:
+  "#phy-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - fsl,imx8mm-sec-dsim-dphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Phy Ref Clock
+
+  clock-names:
+    items:
+      - const: phy_ref
+
+  power-domains:
+    maxItems: 1
+    description: phandle to the associated power domain
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mm-clock.h>
+    #include <dt-bindings/power/imx8mm-power.h>
+
+    dphy: dphy@32e100a4 {
+      compatible = "fsl,imx8mm-sec-dsim-dphy";
+      reg = <0x32e100a4 0xbc>;
+      clocks = <&clk IMX8MM_CLK_DSI_PHY_REF>;
+      clock-names = "phy_ref";
+      power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DPHY>;
+      #phy-cells = <0>;
+    };
-- 
2.25.1

