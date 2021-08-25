Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 082A13F762A
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 15:43:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239844AbhHYNoa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 09:44:30 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:58788
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239398AbhHYNoV (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Aug 2021 09:44:21 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0BF0540780
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 13:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629899015;
        bh=6Oi8aMYH49du136AxXJWUYSctxKNAWuugX+uDt3wf4I=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=wArecAa+BUzkRncL06+c/T1+4w6FPif32MJetAJz3n2ZnSB9QYIH3R/JT96BaM5nE
         FUS7eX3Cvyuw6olQPdlBGBrczxoXOpq3asxLHhMAWm3CvPHhQOOwiL/xZOC5I8Xbj9
         WwK6T+qhXPnkDCWC96k7ZiOhJLeET0UdN3k6vqHtB2XYD1Zimv0BKflYkRutIxDpMP
         Y3KAjEkCVMPFxJl1Xxp5p7CkQz4qdRFJTjdI41Q7w8E+PB+64yxkGey6snGR7hX0cZ
         8jZhv62N9HfhIhNs5eyze1uiblq5fN6nvemDiNRAGzVob/QD+xwFQcOwW8u3Z+eUgW
         egGdfU0Goi1yA==
Received: by mail-wr1-f71.google.com with SMTP id q11-20020a5d61cb0000b02901550c3fccb5so6649516wrv.14
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 06:43:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6Oi8aMYH49du136AxXJWUYSctxKNAWuugX+uDt3wf4I=;
        b=V11AnZ0I80qdqUqChPnerSGmJFcEjTf73SEMtfjoaQL2ZdrT1yKVJKds3RX3MjP25v
         76SSJFIv7RZbxqggN/sA1IDRhCJmKUe3m3VtyROtikASzqePCnfMSc08VIFBa2dGc0rD
         HdDY9FvjMM2vAfB37zCkwArOrfm0R+OyeNyGrDks1+D3pjES53HuZUXGQEywW/Ak28Ys
         2vvDCJL7oycvul0saoWDGm9DDoHpAe1AqoI6/epQZFqKSw0yFBSFw2q3h5YLGDdMNWQZ
         VUNAL6bWTA/TWOW240B084uB9pG6tfovaIWJ+nIkNAxyARfZ/3DFbvW8rJa3hCAqhd99
         LCtQ==
X-Gm-Message-State: AOAM531oI8CWPwtMnegKktW/IfzDZEqjgk8RbYMhWhKYiK22u/SDRITc
        21CNOXGwadoyXPAwW2pHRxmpDiPZNVJWU193Ei79dPmzvQf0XTw5ZHU4vqOmfOJPOkQp919vlZf
        BRKmAKYIBRQlv3QDoxaQTCPEpv+Q2DQ4ymsRj93k=
X-Received: by 2002:a05:600c:4786:: with SMTP id k6mr6645068wmo.177.1629899014305;
        Wed, 25 Aug 2021 06:43:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz3omNkTbXHLeYkOP/1g8GWU/k3FQUTvU2cs0nMgnl6BM7NsaO0Xb3yuJb6pvrt7fcxdOgelg==
X-Received: by 2002:a05:600c:4786:: with SMTP id k6mr6645038wmo.177.1629899014112;
        Wed, 25 Aug 2021 06:43:34 -0700 (PDT)
Received: from localhost.localdomain ([79.98.113.172])
        by smtp.gmail.com with ESMTPSA id w9sm5238954wmc.19.2021.08.25.06.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 06:43:33 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Sam Protsenko <semen.protsenko@linaro.org>
Subject: [PATCH v3 7/8] dt-bindings: clock: samsung: convert S5Pv210 AudSS to dtschema
Date:   Wed, 25 Aug 2021 15:42:50 +0200
Message-Id: <20210825134251.220098-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210825134056.219884-6-krzysztof.kozlowski@canonical.com>
References: <20210825134056.219884-6-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Samsung S5Pv210 Audio SubSystem clock controller bindings to DT
schema format using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

---

Changes since v1:
1. Include header to fix clock IDs error in example.
---
 .../bindings/clock/clk-s5pv210-audss.txt      | 53 -------------
 .../clock/samsung,s5pv210-audss-clock.yaml    | 78 +++++++++++++++++++
 2 files changed, 78 insertions(+), 53 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/clk-s5pv210-audss.txt
 create mode 100644 Documentation/devicetree/bindings/clock/samsung,s5pv210-audss-clock.yaml

diff --git a/Documentation/devicetree/bindings/clock/clk-s5pv210-audss.txt b/Documentation/devicetree/bindings/clock/clk-s5pv210-audss.txt
deleted file mode 100644
index f6272dcd96f4..000000000000
--- a/Documentation/devicetree/bindings/clock/clk-s5pv210-audss.txt
+++ /dev/null
@@ -1,53 +0,0 @@
-* Samsung Audio Subsystem Clock Controller
-
-The Samsung Audio Subsystem clock controller generates and supplies clocks
-to Audio Subsystem block available in the S5PV210 and compatible SoCs.
-
-Required Properties:
-
-- compatible: should be "samsung,s5pv210-audss-clock".
-- reg: physical base address and length of the controller's register set.
-
-- #clock-cells: should be 1.
-
-- clocks:
-  - hclk: AHB bus clock of the Audio Subsystem.
-  - xxti: Optional fixed rate PLL reference clock, parent of mout_audss. If
-    not specified (i.e. xusbxti is used for PLL reference), it is fixed to
-    a clock named "xxti".
-  - fout_epll: Input PLL to the AudioSS block, parent of mout_audss.
-  - iiscdclk0: Optional external i2s clock, parent of mout_i2s. If not
-    specified, it is fixed to a clock named "iiscdclk0".
-  - sclk_audio0: Audio bus clock, parent of mout_i2s.
-
-- clock-names: Aliases for the above clocks. They should be "hclk",
-  "xxti", "fout_epll", "iiscdclk0", and "sclk_audio0" respectively.
-
-All available clocks are defined as preprocessor macros in
-dt-bindings/clock/s5pv210-audss-clk.h header and can be used in device
-tree sources.
-
-Example: Clock controller node.
-
-	clk_audss: clock-controller@c0900000 {
-		compatible = "samsung,s5pv210-audss-clock";
-		reg = <0xc0900000 0x1000>;
-		#clock-cells = <1>;
-		clock-names = "hclk", "xxti",
-				"fout_epll", "sclk_audio0";
-		clocks = <&clocks DOUT_HCLKP>, <&xxti>,
-				<&clocks FOUT_EPLL>, <&clocks SCLK_AUDIO0>;
-	};
-
-Example: I2S controller node that consumes the clock generated by the clock
-	 controller. Refer to the standard clock bindings for information
-         about 'clocks' and 'clock-names' property.
-
-	i2s0: i2s@3830000 {
-		/* ... */
-		clock-names = "iis", "i2s_opclk0",
-				"i2s_opclk1";
-		clocks = <&clk_audss CLK_I2S>, <&clk_audss CLK_I2S>,
-				<&clk_audss CLK_DOUT_AUD_BUS>;
-		/* ... */
-	};
diff --git a/Documentation/devicetree/bindings/clock/samsung,s5pv210-audss-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,s5pv210-audss-clock.yaml
new file mode 100644
index 000000000000..ae8f8fc93233
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/samsung,s5pv210-audss-clock.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/samsung,s5pv210-audss-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S5Pv210 SoC Audio SubSystem clock controller
+
+maintainers:
+  - Chanwoo Choi <cw00.choi@samsung.com>
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Sylwester Nawrocki <s.nawrocki@samsung.com>
+  - Tomasz Figa <tomasz.figa@gmail.com>
+
+description: |
+  All available clocks are defined as preprocessor macros in
+  include/dt-bindings/clock/s5pv210-audss.h header.
+
+properties:
+  compatible:
+    const: samsung,s5pv210-audss-clock
+
+  clocks:
+    minItems: 4
+    items:
+      - description:
+          AHB bus clock of the Audio Subsystem.
+      - description:
+          Optional fixed rate PLL reference clock, parent of mout_audss. If not
+          specified (i.e. xusbxti is used for PLL reference), it is fixed to a
+          clock named "xxti".
+      - description:
+          Input PLL to the AudioSS block, parent of mout_audss.
+      - description:
+          Audio bus clock, parent of mout_i2s.
+      - description:
+          Optional external i2s clock, parent of mout_i2s. If not specified, it
+          is fixed to a clock named "iiscdclk0".
+
+  clock-names:
+    minItems: 4
+    items:
+      - const: hclk
+      - const: xxti
+      - const: fout_epll
+      - const: sclk_audio0
+      - const: iiscdclk0
+
+  "#clock-cells":
+    const: 1
+
+  power-domains:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - "#clock-cells"
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/s5pv210.h>
+
+    clock-controller@c0900000 {
+        compatible = "samsung,s5pv210-audss-clock";
+        reg = <0xc0900000 0x1000>;
+        #clock-cells = <1>;
+        clock-names = "hclk", "xxti", "fout_epll", "sclk_audio0";
+        clocks = <&clocks DOUT_HCLKP>, <&xxti>, <&clocks FOUT_EPLL>,
+                 <&clocks SCLK_AUDIO0>;
+    };
-- 
2.30.2

