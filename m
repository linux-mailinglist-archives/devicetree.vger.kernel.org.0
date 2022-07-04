Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1839565A6B
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 17:54:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233731AbiGDPyD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 11:54:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234366AbiGDPyB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 11:54:01 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50752E03C
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 08:53:54 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id c12so1683364lff.2
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 08:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/Z+AMU7vrtO5o4KexqAVpmPzeKjXxbfUDDVj5eR8YgE=;
        b=tltxeR89R1d+E3RURTaxpdDoiJn4DSTbPHpx6diJsRiLXHVybPSAyLL//SE4l71Ypl
         6IZo0+9XJuYSg/limrLsM3a2uroEh1O69dz1ge8rEC0TTM8EZ8Pi79wJTm2kUN0HABXc
         hpt+R39HqM4q38zOUeUEuCn5KItxa+TtvM06JOT9plxulPOHPlkGR6Lvzw+eGuyO1R1S
         FviYHAJkadAtBnzHExVRtIBJwMBIF9q0Bgc7DJGSLGE/PBsMKGVb0Tw2U63pLy4/4tZl
         1XJEafUJlU3DkKpyo41Re3mG0hEwLWHPHeNLOj4x6yWm60/RgAZZyuCFlRI+4TIDkvhE
         XU/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/Z+AMU7vrtO5o4KexqAVpmPzeKjXxbfUDDVj5eR8YgE=;
        b=0ffvDdVfqRjnR1/a+NrDxueZGtvG6Pt8jwZwg85umC1KE6zl5D9gqV108/VQslFunc
         AMqDv8cyfkTlzNT0R2icVsC8bLFTDjlpszXnjklDywjcQyzii9xqk3S/IxFlDC5Ojm54
         Sz0t3YVd5XG++/BoOn/uqFadC4win3DP6XaHMzRqOkp124RzZdQLpcr3uoDMkzGGFU82
         28swuOjK++vyrxq/bKuFQPgbzPXPyH061J8WDtf4Z/fH1BRHPXOkfGvIzIm7T5GfTArX
         4aGC0CKYt+2XXeX7A7/tq3zfJMfBqfvpY0ydMUlelNFgNcq1Sencc2F9aYxugoF3VO4R
         wweg==
X-Gm-Message-State: AJIora9tRAcnIPZJNVDC4/x9+bP8B1gz6mudsbhAZOj5ZlVeYnm8e4UT
        h3vqlDRV1X8vjHLxHBmR4HmUHA==
X-Google-Smtp-Source: AGRyM1vdkO1x8qCRZPGAnR9xLJk/uqAcc/VAtw2Dsr/5duY6ujaitJlQpl2a4qHjOS/8nvZwKrIUvw==
X-Received: by 2002:a05:6512:3f27:b0:47f:a079:eeec with SMTP id y39-20020a0565123f2700b0047fa079eeecmr18525027lfa.46.1656950032922;
        Mon, 04 Jul 2022 08:53:52 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s6-20020ac25fa6000000b0047fbf4c8bdfsm5016165lfe.143.2022.07.04.08.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jul 2022 08:53:52 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: clock: qcom,mmcc: define clocks/clock-names for MSM8996
Date:   Mon,  4 Jul 2022 18:53:49 +0300
Message-Id: <20220704155350.812319-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220704155350.812319-1-dmitry.baryshkov@linaro.org>
References: <20220704155350.812319-1-dmitry.baryshkov@linaro.org>
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

Define clock/clock-names properties of the MMCC device node to be used
on MSM8996 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/clock/qcom,mmcc.yaml  | 33 +++++++++++++++++--
 1 file changed, 31 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
index d02fe6dc79b5..f1d8325be4eb 100644
--- a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
@@ -31,11 +31,11 @@ properties:
       - qcom,mmcc-sdm660
 
   clocks:
-    minItems: 9
+    minItems: 8
     maxItems: 10
 
   clock-names:
-    minItems: 9
+    minItems: 8
     maxItems: 10
 
   '#clock-cells':
@@ -113,6 +113,35 @@ allOf:
             - const: dsi1pllbyte
             - const: hdmipll
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,mmcc-msm8996
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Board XO source
+            - description: Global PLL 0 clock
+            - description: MMSS NoC AHB clock
+            - description: DSI phy instance 0 dsi clock
+            - description: DSI phy instance 0 byte clock
+            - description: DSI phy instance 1 dsi clock
+            - description: DSI phy instance 1 byte clock
+            - description: HDMI phy PLL clock
+
+        clock-names:
+          items:
+            - const: xo
+            - const: gpll0
+            - const: gcc_mmss_noc_cfg_ahb_clk
+            - const: dsi0pll
+            - const: dsi0pllbyte
+            - const: dsi1pll
+            - const: dsi1pllbyte
+            - const: hdmipll
+
   - if:
       properties:
         compatible:
-- 
2.35.1

