Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2B41612B60
	for <lists+devicetree@lfdr.de>; Sun, 30 Oct 2022 16:55:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbiJ3Pz3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Oct 2022 11:55:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229678AbiJ3Pz2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Oct 2022 11:55:28 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43E63217
        for <devicetree@vger.kernel.org>; Sun, 30 Oct 2022 08:55:27 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id p8so15776575lfu.11
        for <devicetree@vger.kernel.org>; Sun, 30 Oct 2022 08:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hW4yNt9fG4pRCpDzEdmb4e/N01zz4GZdn2Oz7sGKOzM=;
        b=i7zIY8rPFE/Aop+MW1pGSVj3BLsZjTJBWHrPOzbGbu//YQMg6OxhKJj5qTb90S70Hl
         0LuR3XyQElzz7sHVmywC8Ld4WDSlVECOJZ5pXNJoYLBq5PlXJiE3pmsQM9JCTWm1MSqp
         8SPsP9cpQdpCdtQz/Psjbz6gPqeVa24Guw+PXH/XuP9NMV8SAIo1jNbKeOvO+8jdWQnz
         LiKRHinhlP7Ut9qU0h556ZUTc93zL830iSCj23Q81lWTFsKqOtcZ/SPoAPDxztCwXalo
         XLEzMACDtqodb/BZPYQiDhW4Q0c9ygXPfBkP+tJG/Jg4tLf82ah4vSvWetBA9cj8m/QT
         azzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hW4yNt9fG4pRCpDzEdmb4e/N01zz4GZdn2Oz7sGKOzM=;
        b=LWzYxovWz2yqCYNzYyhqw3I/ZI00SDvFKCcAk4tjPpogrcwPoiSoPnfodygKhV2imd
         CqFTTyNDY7eZVXgKrFRNZygjxIZ6+vpsFbViNNQMAwydXgxNgU7vxZfKBug0TBt7y9pQ
         TDTBBt4nVqGMyLJLyR/40Jmc0ushMmEq5iSL3dtsuNWiuaCXBPXh5H1MxyFr2rZcAw5T
         ukXKtBhBZqBtDggk6/3+RRvAfjP1MnHXi8HEK17IKLGIT/0Qfna7tWLyR9KMajxSm20X
         GNVKrX4kbbjX9hqDatACMCWludoxr6cK49rnDUIdZ40Zsu0IPT2lfX+GNF0Slfk2AXvC
         58Nw==
X-Gm-Message-State: ACrzQf1ZpPYKQB6Qm8Qkemw0WYAfgU9UhlHbSJv8lxlYyTk7c08fA/Dj
        SQQGKSyz1yVOyFplbFx28I3cNA==
X-Google-Smtp-Source: AMsMyM4fcbuq8F/kSq7u96JBeocme7IOUX14B/0/Gmzy0w1ny8hHpP64zOxO7ffpfPkGaULSWkq2pQ==
X-Received: by 2002:a05:6512:3501:b0:4a1:fa45:5008 with SMTP id h1-20020a056512350100b004a1fa455008mr3503362lfs.42.1667145325556;
        Sun, 30 Oct 2022 08:55:25 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id f4-20020ac24e44000000b00497a1f92a72sm842982lfr.221.2022.10.30.08.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Oct 2022 08:55:25 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 02/11] dt-bindings: clocks: qcom,mmcc: define clocks/clock-names for MSM8974
Date:   Sun, 30 Oct 2022 18:55:11 +0300
Message-Id: <20221030155520.91629-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221030155520.91629-1-dmitry.baryshkov@linaro.org>
References: <20221030155520.91629-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define clock/clock-names properties of the MMCC device node to be used
on MSM8974 platform.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/clock/qcom,mmcc.yaml  | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
index 03faab5b6a41..78473475c68d 100644
--- a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
@@ -99,6 +99,44 @@ allOf:
             - const: dsi2pllbyte
             - const: hdmipll
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,mmcc-msm8974
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Board XO source
+            - description: MMSS GPLL0 voted clock
+            - description: GPLL0 voted clock
+            - description: GPLL1 voted clock
+            - description: GFX3D clock source
+            - description: DSI phy instance 0 dsi clock
+            - description: DSI phy instance 0 byte clock
+            - description: DSI phy instance 1 dsi clock
+            - description: DSI phy instance 1 byte clock
+            - description: HDMI phy PLL clock
+            - description: eDP phy PLL link clock
+            - description: eDP phy PLL vco clock
+
+        clock-names:
+          items:
+            - const: xo
+            - const: mmss_gpll0_vote
+            - const: gpll0_vote
+            - const: gpll1_vote
+            - const: gfx3d_clk_src
+            - const: dsi0pll
+            - const: dsi0pllbyte
+            - const: dsi1pll
+            - const: dsi1pllbyte
+            - const: hdmipll
+            - const: edp_link_clk
+            - const: edp_vco_div
+
   - if:
       properties:
         compatible:
-- 
2.35.1

