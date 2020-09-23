Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92A03275CE0
	for <lists+devicetree@lfdr.de>; Wed, 23 Sep 2020 18:08:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726784AbgIWQIQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Sep 2020 12:08:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726723AbgIWQIM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Sep 2020 12:08:12 -0400
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com [IPv6:2607:f8b0:4864:20::82f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C2F6C0613D1
        for <devicetree@vger.kernel.org>; Wed, 23 Sep 2020 09:08:12 -0700 (PDT)
Received: by mail-qt1-x82f.google.com with SMTP id n10so330068qtv.3
        for <devicetree@vger.kernel.org>; Wed, 23 Sep 2020 09:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+ijtmndsaZIAcB91pA5Z9H+hcbXWoB7E+atOzuOp9s0=;
        b=yWM/PoZ76XAnftmuGrfANF9kpouKu9/NfsSleRsk9AJ1AkoSx6OLWDzKzpQLEJu5Dv
         jIdcW4uZjcCzBzkzVegJ1ZpkoJp85zxBkW9DnXFsAkCyxTAo2/x7j81X6ToMmN+YAVc0
         AzNFnxaRdIlnFMEDga8uouhdn9ltY3wnjCXeyupm9t5ArnbK7weYGmCzKryTNEJOx2gx
         rICzr9rl5lXxilT+b2gpXOAd0PiNyVCJrayTcKMKhV2+wrj+sdYfLPalGR9vcA8SVndg
         aB3NhYjUY/S4Oi5VaaW0IItOvEIsE1x7V7Eu3pzERm3gWWVevjIgemomUEiJQ1VSAbJ4
         KH4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+ijtmndsaZIAcB91pA5Z9H+hcbXWoB7E+atOzuOp9s0=;
        b=Hs952MMCUtw3yHOnhjF2JEVSmHxHi8e3vxSArdfheQQBRVzF14H04ZtFIdJhUnRzI8
         HiyTq9NuaQtAwocl8HrgXHBcYyA1N6d62/iaHlSDG28nhpATo/PuLwuSzK8zQV644IUW
         V3EVM7SUISbELoyhMEECG44ia6XM/QYWYyc+wLDuryTjt3V8+ZtzkfHUhmzKTEmoj9XH
         YKc/vcYklHqID3J6eahB55vqeQn1uDI4YQxF14bQ6lRSO992ZhT9mTb7JBReZkOsdQnt
         b1v+mCEXom6mMfwUfG4bi5ideINLMnU4C+p/ZHQy1KXDlcRsoIdeJsJta0waIeFZpUMU
         pJSw==
X-Gm-Message-State: AOAM530xj/F9uishMTa8eC0FheiiKlPtj38B4DZpg42BHnR+BxF7Fo1r
        bkBbBxsSExicfZ+XYxhJJSrqPg==
X-Google-Smtp-Source: ABdhPJxkxDASPogvu4dhQ2L1DMBHAhI0WeHhU1REXysE94Et6S3WHHWWuEul3eTVxDVx2BNv9FIIiA==
X-Received: by 2002:ac8:47cf:: with SMTP id d15mr754029qtr.197.1600877291816;
        Wed, 23 Sep 2020 09:08:11 -0700 (PDT)
Received: from localhost.localdomain ([147.253.86.153])
        by smtp.gmail.com with ESMTPSA id 145sm279159qkf.18.2020.09.23.09.08.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2020 09:08:11 -0700 (PDT)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v3 1/5] dt-bindings: clock: combine qcom,sdm845-videocc and qcom,sc7180-videocc
Date:   Wed, 23 Sep 2020 12:06:27 -0400
Message-Id: <20200923160635.28370-2-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200923160635.28370-1-jonathan@marek.ca>
References: <20200923160635.28370-1-jonathan@marek.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These two bindings are almost identical, so combine them into one. This
will make it easier to add the sm8150 and sm8250 videocc bindings.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/clock/qcom,sc7180-videocc.yaml   | 65 -------------------
 ...,sdm845-videocc.yaml => qcom,videocc.yaml} | 14 ++--
 2 files changed, 9 insertions(+), 70 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/qcom,sc7180-videocc.yaml
 rename Documentation/devicetree/bindings/clock/{qcom,sdm845-videocc.yaml => qcom,videocc.yaml} (76%)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sc7180-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sc7180-videocc.yaml
deleted file mode 100644
index 2feea2b91aa9..000000000000
--- a/Documentation/devicetree/bindings/clock/qcom,sc7180-videocc.yaml
+++ /dev/null
@@ -1,65 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/clock/qcom,sc7180-videocc.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm Video Clock & Reset Controller Binding for SC7180
-
-maintainers:
-  - Taniya Das <tdas@codeaurora.org>
-
-description: |
-  Qualcomm video clock control module which supports the clocks, resets and
-  power domains on SC7180.
-
-  See also dt-bindings/clock/qcom,videocc-sc7180.h.
-
-properties:
-  compatible:
-    const: qcom,sc7180-videocc
-
-  clocks:
-    items:
-      - description: Board XO source
-
-  clock-names:
-    items:
-      - const: bi_tcxo
-
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 1
-
-  '#power-domain-cells':
-    const: 1
-
-  reg:
-    maxItems: 1
-
-required:
-  - compatible
-  - reg
-  - clocks
-  - clock-names
-  - '#clock-cells'
-  - '#reset-cells'
-  - '#power-domain-cells'
-
-additionalProperties: false
-
-examples:
-  - |
-    #include <dt-bindings/clock/qcom,rpmh.h>
-    clock-controller@ab00000 {
-      compatible = "qcom,sc7180-videocc";
-      reg = <0x0ab00000 0x10000>;
-      clocks = <&rpmhcc RPMH_CXO_CLK>;
-      clock-names = "bi_tcxo";
-      #clock-cells = <1>;
-      #reset-cells = <1>;
-      #power-domain-cells = <1>;
-    };
-...
diff --git a/Documentation/devicetree/bindings/clock/qcom,sdm845-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
similarity index 76%
rename from Documentation/devicetree/bindings/clock/qcom,sdm845-videocc.yaml
rename to Documentation/devicetree/bindings/clock/qcom,videocc.yaml
index f7a0cf53d5f0..874be03c33f5 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sdm845-videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,videocc.yaml
@@ -1,23 +1,27 @@
 # SPDX-License-Identifier: GPL-2.0-only
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/clock/qcom,sdm845-videocc.yaml#
+$id: http://devicetree.org/schemas/clock/qcom,videocc.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm Video Clock & Reset Controller Binding for SDM845
+title: Qualcomm Video Clock & Reset Controller Binding
 
 maintainers:
   - Taniya Das <tdas@codeaurora.org>
 
 description: |
   Qualcomm video clock control module which supports the clocks, resets and
-  power domains on SDM845.
+  power domains on SDM845/SC7180.
 
-  See also dt-bindings/clock/qcom,videocc-sdm845.h.
+  See also:
+    dt-bindings/clock/qcom,videocc-sc7180.h
+    dt-bindings/clock/qcom,videocc-sdm845.h
 
 properties:
   compatible:
-    const: qcom,sdm845-videocc
+    enum:
+      - qcom,sc7180-videocc
+      - qcom,sdm845-videocc
 
   clocks:
     items:
-- 
2.26.1

