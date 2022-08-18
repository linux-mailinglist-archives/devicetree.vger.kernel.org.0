Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C8B9597E77
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 08:20:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239447AbiHRGRE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 02:17:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239247AbiHRGRD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 02:17:03 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2397194ED7
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 23:17:01 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id w5so874216lfq.5
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 23:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=ho+Nb4Kl/C/aIXeakRLVlBshDy8+kHxnGlegszRANBE=;
        b=HniK3cF6yOKlCinfqd4fC1nP8cvW8vbpSR3UViT4wbZGZ+6LjIgxfCjNomG6n1ZtcR
         9u4t4zP68qB1w8AlQwsPu3IEL02mKJny/ZNe4+Cn9jRHhu3Cod0rrHTFy8Imt88ljjHD
         IDe8wCELy7QoNBYlm6WGXrnIKcCikE52O6U2ekSh9YgnnHj+rMWaquhsREZo4sz5Jz/d
         D0i9zICO4Up63mCL4Cv7pLb3lZclbtIJjsILnEP+19VBKos43BZZl29T1xbdCO1bB9o7
         g1miJ0F7Qbgv1RnamzyjkIQ7m2xvOmxDjBIgPVZH8w7nNnmfbSCb5pbtu7BgU90Ld+hU
         cluw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=ho+Nb4Kl/C/aIXeakRLVlBshDy8+kHxnGlegszRANBE=;
        b=BKyj0eYJ0IZyhsAX2kAlT8oqvYxEwn3UjLthwm1sGjegiIIgKkYy+L+9mEgT4sQMT0
         zTqkl6MjoaMFBM5xiARcO+jxqqI4GYJYHILJ7E69oATu3YMHnLPs2s+b7Es3lWdiqJbe
         Geyn7suUg2gZiPDNR6RP7ZTrSUoYM8R6APr21IwCHwXb0DQAoI6EFpDQzy1VNKEQlpaz
         89SZhQRuARMZ+YXzyIipjz9+PV2urMKAGOn7r0O39YI56ZAJ4S/ZeQuejUvyE4riPN/D
         QjERz2MPc8i+H7pzjJW9Jdvv3nAub0MkqjdcgqTOL7emF4L3Pa8BEBoL6XpRKxHE8HmS
         YM6A==
X-Gm-Message-State: ACgBeo2lajSF8nDtZEgvlo6NoIHOiWz6kTMn/+etmrLtdmHIuNrRwOGb
        d1mOF4NKpcWmIRwAh26VpFcZKg==
X-Google-Smtp-Source: AA6agR4Hie8Ptl9watzP9q3wSRaT1DJ6LQ5bGSYAymhnHao4U9kBrUHbr6CC3vfKu5GI47yddxEqpQ==
X-Received: by 2002:a05:6512:3e07:b0:48b:131:616 with SMTP id i7-20020a0565123e0700b0048b01310616mr544949lfv.475.1660803419504;
        Wed, 17 Aug 2022 23:16:59 -0700 (PDT)
Received: from krzk-bin.. (d15l54bxv1k5c31plwt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:671:aa32:2bd5:8994])
        by smtp.gmail.com with ESMTPSA id k4-20020ac257c4000000b0047f71771969sm93282lfo.113.2022.08.17.23.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 23:16:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Peng Fan <peng.fan@nxp.com>,
        Jia-Wei Chang <jia-wei.chang@mediatek.com>,
        Johnson Wang <johnson.wang@mediatek.com>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: interconnect: restrict opp-table to objects
Date:   Thu, 18 Aug 2022 09:16:53 +0300
Message-Id: <20220818061653.9524-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Simple 'opp-table:true' accepts a boolean property as opp-table, so
restrict it to object to properly enforce real OPP table nodes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. Correct typo in msg.
---
 .../devicetree/bindings/interconnect/fsl,imx8m-noc.yaml        | 3 ++-
 .../devicetree/bindings/interconnect/mediatek,cci.yaml         | 3 ++-
 .../devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml   | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
index fa4f7685ab2b..f7a5e31c506e 100644
--- a/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
+++ b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
@@ -47,7 +47,8 @@ properties:
     maxItems: 1
 
   operating-points-v2: true
-  opp-table: true
+  opp-table:
+    type: object
 
   fsl,ddrc:
     $ref: "/schemas/types.yaml#/definitions/phandle"
diff --git a/Documentation/devicetree/bindings/interconnect/mediatek,cci.yaml b/Documentation/devicetree/bindings/interconnect/mediatek,cci.yaml
index 449c7c988229..58611ba2a0f4 100644
--- a/Documentation/devicetree/bindings/interconnect/mediatek,cci.yaml
+++ b/Documentation/devicetree/bindings/interconnect/mediatek,cci.yaml
@@ -36,7 +36,8 @@ properties:
       - const: intermediate
 
   operating-points-v2: true
-  opp-table: true
+  opp-table:
+    type: object
 
   proc-supply:
     description:
diff --git a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
index c2e697f6e6cf..a4743386c4c1 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
@@ -35,7 +35,8 @@ properties:
     maxItems: 1
 
   operating-points-v2: true
-  opp-table: true
+  opp-table:
+    type: object
 
   reg:
     # BWMON v4 (currently described) and BWMON v5 use one register address
-- 
2.34.1

