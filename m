Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EF11550E3E
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 03:03:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236971AbiFTBDI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 21:03:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235521AbiFTBDG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 21:03:06 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E896E1027
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 18:03:05 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id b7so10253374ljr.6
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 18:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Aq9g/wDzsIqQecRl2cJJ+5IocI39Htj97JGHlen04Z4=;
        b=rzWWUU/x8NNpQ4kYJA2bz7B4zeXB5TlPFwvd1Dzpr9/2yiGHMMQ6oMRmJYdPDcFKJ7
         x7DTkbWx+P6bWWEMdCLW1zsHOC5JczWXdt0huzvyifxRT5iH93gX/JUeZokIlDlFw1P/
         50LXGRU0gJlNjAajBraevzzoSscrhG8DJCDewaNIorLEG5IkZ1zUdxXNpiQnQXqK8UHW
         aBl5QAURdwuChEPqsjeloudpaZAgVd8mp4GGIBW+EUqh9RNWy2Gw66roJb36ocxbxP6t
         k8kcdWRhkOmaYp5yoXT/MtLrTKFCr8zE8M5YDCZj/AUp17BwiYJBsCZ8B7ImIopP+IDi
         U6uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Aq9g/wDzsIqQecRl2cJJ+5IocI39Htj97JGHlen04Z4=;
        b=K3+YEoOkV41Hm3kfh87iwKXIdMoX72+t/cBTuU6g302AG+5oYiXXTrzXCBMVotwmy6
         lmDjLU85dZ8oMaVO88Dthz/QUauNDEKw+ppuN1leaad96avhU9GIUaJGQUP70FWs0w/p
         FS/zvjUSjmNvklB4s0xfzSzkKdROkj6rfVv8CxgY07mNaMVBh0n7XDuSUnZy0mYeRaB4
         iN0Mp4DJWa/Z/bso1Vm2ICqtgd/T+Gi/nedqIRG5jqv6gsZLmFeYamUwNC1Ojmyul5Ht
         pd1J8pIZS5Wd2lBH+sy6t3lqnxiCSOHZNrxy2Y28MrucB2appVGfMszgMk6cGoBEoJGp
         hsqQ==
X-Gm-Message-State: AJIora+lcrE/54GcUYEWTyRHL2jWGWeIhadPtQ+MT3EAHuVvy2ED27/W
        M1DNBbs53LW9sgAv9dYikxGDwb16vSEq3CAh
X-Google-Smtp-Source: AGRyM1uVUKJ2MrHi+briVhJofI8k8bmYZztVJLPfNEu18XPV559iKEfxeDHvfTNlP5xg79FHoXwuSw==
X-Received: by 2002:a2e:a911:0:b0:25a:53dc:82b2 with SMTP id j17-20020a2ea911000000b0025a53dc82b2mr6706463ljq.341.1655686984315;
        Sun, 19 Jun 2022 18:03:04 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a1-20020a19e301000000b00477a6c86f17sm1550334lfh.8.2022.06.19.18.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 18:03:02 -0700 (PDT)
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
        freedreno@lists.freedesktop.org
Subject: [PATCH v2 1/3] dt-bindings: phy: qcom,hdmi-phy-qmp: add clock-cells and XO clock
Date:   Mon, 20 Jun 2022 04:02:58 +0300
Message-Id: <20220620010300.1532713-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620010300.1532713-1-dmitry.baryshkov@linaro.org>
References: <20220620010300.1532713-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
index eea2e02678ed..41e6492d4a0f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
@@ -28,12 +28,14 @@ properties:
       - const: hdmi_phy
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
     items:
       - const: iface
       - const: ref
+      - const: xo
 
   power-domains:
     maxItems: 1
@@ -44,6 +46,9 @@ properties:
   vddio-supply:
     description: phandle to VDD I/O supply regulator
 
+  '#clock-cells':
+    const: 0
+
   '#phy-cells':
     const: 0
 
@@ -75,9 +80,12 @@ examples:
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

