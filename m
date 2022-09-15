Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DC205B9BEB
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 15:37:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229708AbiIONht (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 09:37:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229572AbiIONhs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 09:37:48 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA9EE5B789
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 06:37:46 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id o2so28255872lfc.10
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 06:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=2rC5Rchk8Av3pvvEimOqZHjNpVOqnGT2anEFSOvGN64=;
        b=IKP/mIBhN/OvoJh22Pux9rpkgDo2Br5ejssgu6BY7UZvH8vz4gl06Wt434iXnPt9Z8
         K6mvF2xXJSMr2h6+1omsJN/ndmTgCprt1tggK5ZHa+NTv+E9WaS4d+6sNIIq/GT7Eydi
         /m2i/HthmD+ES/SUqiP8SP3ljhBeZDgeRSvtFoXaowYn4bYFJikm62Ag2rrrJZw1UZgj
         CxwDJlWrBY7ifE5rEz7jvR7QnoGMIxes5ovd01MG9iw88YxYZyF6UfYm2HB6KyDnH3WC
         8VFfAVFUZxkwCgHDipkkteSi4lN5o+Uls/5G53hlwAVXoJNadbqkZ2lBwso5wwnk2d9+
         5rDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=2rC5Rchk8Av3pvvEimOqZHjNpVOqnGT2anEFSOvGN64=;
        b=OnLfkjuLRDLZfqL74kXCQSH25IKd5sOv41MaHYwG2H7ntfA02Tm/kEn1DmS5c4/Ece
         jt/kmpz+7WgTE67TgoNAdQjlhEiM2LcblmTX3TL8wOf5tx2Z+gse1eJIq2478sFiqq27
         Gtfd5xPTrdHSVKROiKu8JDsOfBrgJLLHK6MW2bI7bpYsamTDYgmq4/UENECDLrkzrx5n
         +x9+si+/OWU7ABDtiGC604t7hoXBRISbGKwNEsnx4zR9RPCU+CBSDIv63/VLa4mL1eI7
         MM5t4U8vGWkXVqCFyjW6DB5ULONZKsLYyVmmagJvtMulSN4h/iljXiTnfJqdNvBO5b0q
         eA9Q==
X-Gm-Message-State: ACgBeo0c34ux9Jbx60bDcUxJ9ruvL/8oG6/xmlFw8IES2puj7NQWGaAg
        3VT6Pa0/zKqzm3v9DBah9TjMrw==
X-Google-Smtp-Source: AA6agR4Osl+CBl9CveKLxgRn7EUt0C6TM2YD+qTGpMXLBbPcTjuyLbj+xXJrCGodRMXTJmXjRKu7iw==
X-Received: by 2002:ac2:4bd0:0:b0:497:abfd:3572 with SMTP id o16-20020ac24bd0000000b00497abfd3572mr12099024lfq.200.1663249064985;
        Thu, 15 Sep 2022 06:37:44 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 2-20020a2e0902000000b0026ad753448fsm3142634ljj.85.2022.09.15.06.37.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 06:37:44 -0700 (PDT)
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
        freedreno@lists.freedesktop.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v7 02/12] dt-bindings: display/msm: add gcc-bus clock to dpu-smd845
Date:   Thu, 15 Sep 2022 16:37:32 +0300
Message-Id: <20220915133742.115218-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220915133742.115218-1-dmitry.baryshkov@linaro.org>
References: <20220915133742.115218-1-dmitry.baryshkov@linaro.org>
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

