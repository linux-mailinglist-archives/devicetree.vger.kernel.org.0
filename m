Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BE415A9443
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 12:23:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233885AbiIAKXV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 06:23:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233483AbiIAKXS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 06:23:18 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E4B71360A7
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 03:23:17 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id j14so13386245lfu.4
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 03:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=2rC5Rchk8Av3pvvEimOqZHjNpVOqnGT2anEFSOvGN64=;
        b=dbnMoUfAf6pS+YKjHJZdmNDN/DndI9NQSGOFgsgyNpj+tbasqmu+9fmWrC0xrY5SMe
         MN8epoqze7+Rtr9CkCOcJSzIV94WyoBrUU8QFlGua/EeJHGqzScRcj0StuHB24wPvBwb
         ri47OtWVDnS3VnzJ6i3oM2tEfelCL60uY1X6TQxJK8dmCN79RJ5TfXICcvhbwHCuMtij
         zupsvE66ZOU2qGzhCqpf5cXijtXJdtjiED5+tATNryFuBwSnG8msjILInjHbH4BoCaXO
         /kR8SOedoCe5jp9HIGWrYs1hn2fDB1NDrs0d+iTkRQvUlVS0WBUl96/dTUdirnelN527
         isXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=2rC5Rchk8Av3pvvEimOqZHjNpVOqnGT2anEFSOvGN64=;
        b=o7j2nioGXWuf23824IRuGGvNwqoFEQVXslPlHibRAKa8OBKWNAv5nFXvvsG85/q68p
         Zw5fozs3MTglVSLfSyrBYbP6wKb5UcWXYWxwZA/G+HlV0ek+3SZ76JANQo3YkIgUxmdC
         edymbt7XeStVPXh0SUMcOAB23wNoM0t/EEGV5z485Tphv4K+zXtmgMv7E/LuRxK0mx4x
         rSQrmvEOffYNg0e4p5gne7HZ49huek+uNChG2306Ro/A2APfn/tw9XIQU+xNtmMVbPIv
         VRSlEYsUUnprFatxB4u45zTA+Y0SynuP0VYbLs0eua1rjhgTr7HSlLftu1ELhDY69O4C
         2i3g==
X-Gm-Message-State: ACgBeo3YF+tArCHk75flrUv77jZjM1A5Rb9WneEEm080uj2IMw1hkPlD
        p8X1+lV6Lhlv1l89Q5IctV2t/w==
X-Google-Smtp-Source: AA6agR4Ql3QKIlEpaBo91GppyG6nGmn/itxwHwWuZw57PLSwF2vvtLkpDhbImRAshWGP0gTDtSxxIA==
X-Received: by 2002:a05:6512:1054:b0:494:8ce3:24c8 with SMTP id c20-20020a056512105400b004948ce324c8mr2043959lfb.360.1662027795865;
        Thu, 01 Sep 2022 03:23:15 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z19-20020a056512371300b004949ea5480fsm123453lfr.97.2022.09.01.03.23.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 03:23:15 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Loic Poulain <loic.poulain@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v6 02/12] dt-bindings: display/msm: add gcc-bus clock to dpu-smd845
Date:   Thu,  1 Sep 2022 13:23:02 +0300
Message-Id: <20220901102312.2005553-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220901102312.2005553-1-dmitry.baryshkov@linaro.org>
References: <20220901102312.2005553-1-dmitry.baryshkov@linaro.org>
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

Add gcc-bus clock required for the SDM845 DPU device tree node. This
change was made in the commit 111c52854102 ("arm64: dts: qcom: sdm845:
move bus clock to mdp node for sdm845 target"), but was not reflected in
the schema.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/dpu-sdm845.yaml        | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
index 7d1037373175..3cb2ae336996 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
@@ -84,6 +84,7 @@ patternProperties:
 
       clocks:
         items:
+          - description: Display GCC bus clock
           - description: Display ahb clock
           - description: Display axi clock
           - description: Display core clock
@@ -91,6 +92,7 @@ patternProperties:
 
       clock-names:
         items:
+          - const: gcc-bus
           - const: iface
           - const: bus
           - const: core
@@ -183,11 +185,12 @@ examples:
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

