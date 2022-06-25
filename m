Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2512355AD73
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 01:27:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233664AbiFYXZ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 19:25:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233680AbiFYXZZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 19:25:25 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C77112638
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 16:25:24 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id o23so6779726ljg.13
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 16:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sEhrVNP4ho0a6wzg1hnkprZhy63vathkG01hxy93+fM=;
        b=r+tBaIp3OCvknjpU5NF+TwgdnsAdEC+S/LB7683mI9TdRtWb4hAhq0rlfgzriG4m2G
         QKIaPDgn9EgR4PmMQxJuuYFMYn8NbR1xvHstmWCCE+L1KnOnh15tgt7QxvZXnGsPYQY3
         Rs42BNwARr//kfVoWUf9EdQaQuLuq6GC/vJTNJIP2LY9v+BHlz+YO6dpRmvsjUfiGm6E
         h3lFuC0VYlPbbEv3HExuJBRCPKuq8AYR3A7gcO1FZ9fWWtOSLG4LXmvWwjZhW3YZ/7n1
         HZYZQwCPq9rcLP8etglqfiXk4panH+J+tHhQ6iSrxHWgZCn5r17i5ytLXkxlFxOpc7le
         T8ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sEhrVNP4ho0a6wzg1hnkprZhy63vathkG01hxy93+fM=;
        b=O5DYUudJ8UCcXMb6N28Veq3eAOr2PFTPlCYlasMUREBSG/izNcE46dPupxI561/E+E
         M+yfdJmLHrirI1/GPTwJ3Xm9pf0lqcdT94lECQWWQMoOfpn2IyScKj9Sw1um16CbRUQ1
         DEwUWIm8mUTXmWJ6MRc6wW6ZpuJ0uJmUIIbPRWIgPzw/97/VO6LWGxe0XzMWJSzWB4vb
         IfsdpRh6RGxhRIOo9X5O56DiMd2hI6SZMfCbMsGKdnkklhcTe7hdvNV+qU6oCNsZs0XH
         9Z4h04xdbkFXuJJo1S0hyYE4kuZlYTCtACjM9ItYAprdSE6GDqmA6GgilS/Bsz9II5Xh
         ozDA==
X-Gm-Message-State: AJIora9mQzXpZoMbvr1lPcbPl0kiiwtuGp6HksGxRtVLr6tF21rsb6EC
        J6Cz8TmZ0XFiAz4jWYsaV9p6mg==
X-Google-Smtp-Source: AGRyM1scWr55DMLw7LMTumP/EB6qyNN54qt7LcCEaF2EEiEPYp2TeJ0HLcQV5tAbVY71hlW4fobTXg==
X-Received: by 2002:a2e:bf14:0:b0:255:b789:576b with SMTP id c20-20020a2ebf14000000b00255b789576bmr3141976ljr.47.1656199523688;
        Sat, 25 Jun 2022 16:25:23 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s8-20020a056512202800b0047f750ecd8csm1093694lfs.67.2022.06.25.16.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jun 2022 16:25:23 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
Subject: [PATCH 08/11] dt-bindings: display/msm: add mdp-opp-table to dpu-sdm845
Date:   Sun, 26 Jun 2022 02:25:10 +0300
Message-Id: <20220625232513.522599-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220625232513.522599-1-dmitry.baryshkov@linaro.org>
References: <20220625232513.522599-1-dmitry.baryshkov@linaro.org>
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

On SDM845 platforms DPU device tree node contains child object
mdp-opp-table providing OPP table for the DPU. Add it to the list of
properties to let sdm845.dtsi to validate.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/dpu-sdm845.yaml      | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
index 0dc16326bf8e..cc95adcf8f11 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
@@ -50,6 +50,10 @@ properties:
     maxItems: 1
 
   operating-points-v2: true
+
+  mdp-opp-table:
+    $ref: /schemas/opp/opp-v2.yaml#
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     description: |
@@ -116,11 +120,12 @@ examples:
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

