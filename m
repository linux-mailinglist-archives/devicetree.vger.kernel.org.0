Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83A39565AAC
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 18:11:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233917AbiGDQLy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 12:11:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233153AbiGDQLx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 12:11:53 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9564C6175
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 09:11:52 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id c12so1754448lff.2
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 09:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=33SMaLh1eoDBAxmhXTjcVQWnyDJ3mzNy1PP5WaC9dV8=;
        b=rspOa5EajZPOfNl0ESTchvhQgYhmUu8/ueOoPO44oe2+2Wog+oNj1fpANVwPGESYrF
         5XvBIRqQLRYgoJfdxt/vk4TpyHZd/ZEG3sxCaKFGtFfeS7whXyDPggGmA71CDY9s6915
         2IXUgtBd9BuBTr7dW+Vb0erOlBGKLD9G+mUSlioCNwkwLtOpcyOPF/h2BL/lC0s1St6n
         xSs7vPhyOP4B4CEwjE8N+BvQHR3TqjV/3JDffKSzfuBG2SCG/3t7D65UOJLTD/pdI1dC
         7/DNB/IFANuvTq/u4p1D+IxF+djQM0Lg8QSBwGoja6RbCIA6rpxflr5DfuZTRdhECOd0
         lwNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=33SMaLh1eoDBAxmhXTjcVQWnyDJ3mzNy1PP5WaC9dV8=;
        b=QNGGmohVgAByCfgAczjI18ionmzibvau5SZRZ8ts9SfiUTXCrPrAR9xEtL50e8vqzj
         X9S+RL0WvJOCOI0en+rxUSB7fm9MG9lu6VaxMX35vCbPhc9zG1JUVveuvE59uP73ieqC
         MslGXJcU8S3LmXCBid3GEGYPHcG2rYp/2wFbvUTYBX/rREN6sz2Gt0Z5+XxhSHlwvIAJ
         oeAWdhtOvLhuzLoFdQ4T/9LrIlDIKHiY+CI/PoQBLqWwihznQ3yLLMTMhAFgM/m7ozYz
         h+AqQReqS8AbS1LX/vnLQhXsj6U1ZKBvVX0C8mYd4W8gmu4wVaBFzsB3meNt08Fy4FXb
         k12A==
X-Gm-Message-State: AJIora88kUbUdFnYIYDwH2krVbx4zY0lUOzN2wvbgp0uoboiSF2zQcYh
        3b9yJSIUudvuJfzjelRUFT/1EA==
X-Google-Smtp-Source: AGRyM1tME+0Mf2I5nShZjoogNnmb77dv/j/FemxX3GyQsTed1mGiCD2xsSlfShkpWOGQKuQxOnKESQ==
X-Received: by 2002:a05:6512:3b9d:b0:47f:7712:3ece with SMTP id g29-20020a0565123b9d00b0047f77123ecemr18483411lfv.127.1656951110999;
        Mon, 04 Jul 2022 09:11:50 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id bj16-20020a2eaa90000000b0025d254180d7sm381273ljb.113.2022.07.04.09.11.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jul 2022 09:11:50 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: phy: qcom,hdmi-phy-qmp: add clock-cells and XO clock
Date:   Mon,  4 Jul 2022 19:11:46 +0300
Message-Id: <20220704161148.814510-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
References: <20220704161148.814510-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As the QMP HDMI PHY is a clock provider, add constant #clock-cells
property. For the compatibility with older DTs the property is not
marked as required. Also add the XO clock to the list of the clocks used
by the driver.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/phy/qcom,hdmi-phy-qmp.yaml           | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
index eea2e02678ed..83fe4b39b56f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
@@ -28,12 +28,15 @@ properties:
       - const: hdmi_phy
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
+    minItems: 2
     items:
       - const: iface
       - const: ref
+      - const: xo
 
   power-domains:
     maxItems: 1
@@ -44,6 +47,9 @@ properties:
   vddio-supply:
     description: phandle to VDD I/O supply regulator
 
+  '#clock-cells':
+    const: 0
+
   '#phy-cells':
     const: 0
 
@@ -75,9 +81,12 @@ examples:
                   "hdmi_phy";
 
       clocks = <&mmcc 116>,
-               <&gcc 214>;
+               <&gcc 214>,
+               <&xo_board>;
       clock-names = "iface",
-                    "ref";
+                    "ref",
+                    "xo";
+      #clock-cells = <0>;
       #phy-cells = <0>;
 
       vddio-supply = <&vreg_l12a_1p8>;
-- 
2.35.1

