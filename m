Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE26D56CE35
	for <lists+devicetree@lfdr.de>; Sun, 10 Jul 2022 11:00:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229514AbiGJJAx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jul 2022 05:00:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbiGJJAu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Jul 2022 05:00:50 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCB7815720
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 02:00:49 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id bx13so3063225ljb.1
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 02:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=r8uP7epyJQsP5rWLMlZPU+2WIXogmdHgKsCg4a6KbsQ=;
        b=kKvMJpP/ZP5JytTzFf0NPpp8SzSAfBXi7jIqa8Hk+QV/PNSoE+sayfQtZTrEoBYI7g
         zh1795kR7Ag0oYToA8bVBDV63ZDa25O2kr9/slwZOiuq3YVXmZnE/XueoDzXzCK25KC8
         Ja9SHBSKnWtTnKsOHT4hLR5PRhPv1Wili1yg9pfLS0xpOjl2Dy+E7PKoRY6X15LptQAw
         xj9XJmWz98sTcxxSvIAzoSpOutu1J1Usqjf4PzUq9yKQokTadq+1+S/qQPk2/Ru9c6+T
         bKflirilmwVHMJuW/U5LaoJce+IUl9y+PkbmTIIogjjRUJ3NO/aS0mjooKx7edaIv1I7
         9ipQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=r8uP7epyJQsP5rWLMlZPU+2WIXogmdHgKsCg4a6KbsQ=;
        b=1+RwkZcvJVuiJlSzXMgOdyLcad6Zrfp13Of8ETovs1QKTVNvIizktgK8eqOz+H3bAC
         izN7xIfW1aHOpGAR5gCNf8avsyy3s1zuvJq1/13l60f29Y2NRzo0GQHExINLsO9k7Ykv
         xqy79PLNBJRuVUoLC8viACqWxkDLihNseKE1Dof4PXBCvey4+axTONNruiJVpdLRc1NT
         7y6wyn+i3RU7Y49eB61TaewHB+6fBHBZhlRMgVTPL87cDXSSe2AuPNljPXqHPjK5lA/y
         uxF/BVEz8i0kkNeNqwiIQIDHKG94WMIdGxoZChzos135Rb7sb+3u4n6XGsnN1dXR03Uj
         FiQA==
X-Gm-Message-State: AJIora9KI0F54Szo7y5pcToAuEk/eog0ZzoLcuSux+4mPH6sBtAcKw/R
        plWGn/8mmP6HQqLC+gM195MgVw==
X-Google-Smtp-Source: AGRyM1tRRC56ermrH8sFgyeA0GHovNm/nUTSJV/sXXfkIPvFNvOYIpxVOLE4kCIzUkymapoQz2jyjg==
X-Received: by 2002:a2e:82cf:0:b0:25d:490f:4035 with SMTP id n15-20020a2e82cf000000b0025d490f4035mr7391229ljh.290.1657443649443;
        Sun, 10 Jul 2022 02:00:49 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u16-20020a056512095000b004896b58f2fasm822881lft.270.2022.07.10.02.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jul 2022 02:00:48 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v2 10/11] dt-bindings: display/mdm: add gcc-bus clock to dpu-smd845
Date:   Sun, 10 Jul 2022 12:00:39 +0300
Message-Id: <20220710090040.35193-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220710090040.35193-1-dmitry.baryshkov@linaro.org>
References: <20220710090040.35193-1-dmitry.baryshkov@linaro.org>
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

Add gcc-bus clock required for the SDM845 DPU device tree node. This
change was made in the commit 111c52854102 ("arm64: dts: qcom: sdm845:
move bus clock to mdp node for sdm845 target"), but was not reflected in
the schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/dpu-sdm845.yaml        | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
index 2074e954372f..42ff85e80f45 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
@@ -29,6 +29,7 @@ properties:
 
   clocks:
     items:
+      - description: Display GCC bus clock
       - description: Display ahb clock
       - description: Display axi clock
       - description: Display core clock
@@ -36,6 +37,7 @@ properties:
 
   clock-names:
     items:
+      - const: gcc-bus
       - const: iface
       - const: bus
       - const: core
@@ -114,11 +116,12 @@ examples:
                           <0x0aeb0000 0x2008>;
                     reg-names = "mdp", "vbif";
 
-                    clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
+                    clocks = <&gcc GCC_DISP_AXI_CLK>,
+                             <&dispcc DISP_CC_MDSS_AHB_CLK>,
                              <&dispcc DISP_CC_MDSS_AXI_CLK>,
                              <&dispcc DISP_CC_MDSS_MDP_CLK>,
                              <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
-                    clock-names = "iface", "bus", "core", "vsync";
+                    clock-names = "gcc-bus", "iface", "bus", "core", "vsync";
 
                     interrupt-parent = <&mdss>;
                     interrupts = <0>;
-- 
2.35.1

