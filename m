Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B11282F988B
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 05:15:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732126AbhARENq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 23:13:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731152AbhARENl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 23:13:41 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DAF5C061795
        for <devicetree@vger.kernel.org>; Sun, 17 Jan 2021 20:12:36 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id c12so9430924pfo.10
        for <devicetree@vger.kernel.org>; Sun, 17 Jan 2021 20:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SajeAnD/bM3T+Qtfi1lyQyoeSgIHCjSTfGa4G04tdEU=;
        b=C03eLdzTC8yp1Gau/ZSxf+IRYVt5U4z483XV1CHyli2tAa8QDkftqwbvma3j9dpbVL
         1EN+rejAmkLtuZ/PPtV2u9V8mTAPzRsSoNoC8UWjxsgQjXWLSyBAg4k+VqvG5LtIHNgZ
         3Hfb8WDEha2d9eTfPCfcmUMTCNoAoG/ZbunD74bFfIaI0K774XBUa7vYFkq+urjO1WDM
         Gmu2wL1XFW3q9DXQuIz6tiQeOPFJxyI2hGWfLEulHzvw0LtMSjiMYzvJHnWU/tmWLIBV
         TabM2X5eVPoVm1SLPRqnzY4Eg17lGf1ERfgpTS/iv86pcBLAgt4vA5b0L+f3/L48rBnD
         hVjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SajeAnD/bM3T+Qtfi1lyQyoeSgIHCjSTfGa4G04tdEU=;
        b=UXcxLV7rRSHlGP6Kg6P7WVHeYn9woIfIBn52UeJhZcsiY2ereGa++2Hrkffju786ez
         VZqZpiZ9Z+pqMcHD50StHbtMsLBeW9Xt9xG9RTYtrYR2ekW46NCJbLHfqNxA/vpQRLd8
         7HyuBPNQSSN5VoBxRNqJ1Z9REjUP1+3sVAS2WDSPNSB8r1d8FfT6ZGh5LXIB7tlQRS9U
         fXolNvLPcEb6i5U1/htPNmrAKvqItaN4e7IDsLFpql4P5QeV+E0FnGtjZ0PZMpT9mbRk
         Fk52tJYEjRhIxYpsgvJtoStCmfOS0skck6NC9YB/DADpwd60WnlZxLvEfIivY8KWOkXI
         aoAQ==
X-Gm-Message-State: AOAM53212qebkXnSQEjF2nCf1L+vO5ALMrtP9+YhsqvtRbofQgRipqZK
        Zk4dX65ZfG+padggoZ6cgB3Okvu/Ix52
X-Google-Smtp-Source: ABdhPJw4926kqojiehh7sKxQnSVQDNFboJxACl+ctCL71e7hu5cMhEIzVGp1inNWucqpUFr4kV1Psw==
X-Received: by 2002:aa7:85d2:0:b029:1a2:73fe:5c28 with SMTP id z18-20020aa785d20000b02901a273fe5c28mr24296279pfn.40.1610943155657;
        Sun, 17 Jan 2021 20:12:35 -0800 (PST)
Received: from localhost.localdomain ([103.77.37.182])
        by smtp.gmail.com with ESMTPSA id h15sm6727319pja.4.2021.01.17.20.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Jan 2021 20:12:35 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
        jassisinghbrar@gmail.com
Cc:     viresh.kumar@linaro.org, ulf.hansson@linaro.org,
        bjorn.andersson@linaro.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 3/5] dt-bindings: clock: Add Qualcomm A7 PLL binding
Date:   Mon, 18 Jan 2021 09:41:54 +0530
Message-Id: <20210118041156.50016-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210118041156.50016-1-manivannan.sadhasivam@linaro.org>
References: <20210118041156.50016-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree YAML binding for Cortex A7 PLL clock in Qualcomm
platforms like SDX55.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/clock/qcom,a7pll.yaml | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,a7pll.yaml

diff --git a/Documentation/devicetree/bindings/clock/qcom,a7pll.yaml b/Documentation/devicetree/bindings/clock/qcom,a7pll.yaml
new file mode 100644
index 000000000000..8666e995725f
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,a7pll.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,a7pll.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm A7 PLL Binding
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+description:
+  The A7 PLL on the Qualcomm platforms like SDX55 is used to provide high
+  frequency clock to the CPU.
+
+properties:
+  compatible:
+    enum:
+      - qcom,sdx55-a7pll
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 0
+
+  clocks:
+    items:
+      - description: board XO clock
+
+  clock-names:
+    items:
+      - const: bi_tcxo
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    a7pll: clock@17808000 {
+        compatible = "qcom,sdx55-a7pll";
+        reg = <0x17808000 0x1000>;
+        clocks = <&rpmhcc RPMH_CXO_CLK>;
+        clock-names = "bi_tcxo";
+        #clock-cells = <0>;
+    };
-- 
2.25.1

