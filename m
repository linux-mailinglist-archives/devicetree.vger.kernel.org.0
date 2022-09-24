Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C37C5E8C72
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 14:36:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229692AbiIXMgT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 08:36:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231436AbiIXMgS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 08:36:18 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D080EE65F
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 05:36:17 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id z20so2786095ljq.3
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 05:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=+VYxtSYA5OyiLl7gExkakIULMtqhutc086nOHC83lPk=;
        b=Pk42gobi31Pm88gcWY0dliXVdoXZB1oWlCvEO8Nz4ebyNe4xlnzz4xgJ+0I/DrrVZK
         4P5L+rY4aP24dF7TFUvHDbH/cNECmIkbpy5vPFLttoTVEEOwvAo6eLvM/s1HTa/Fl96S
         2A7Bx0K5/XWZr19eYlE9tM0NjLcvBKdUz1rur+l3EpccsCsHjvEYG0ZYflsul1sk20iA
         S5hNnxBIXJsfZNFPmKlwxrdGCo92MBP5VOwdX7p/95L9WIsRPj5nD56BX5BGUeijlEDn
         ZyzXOutODty+Y2E2zTPEfRZHy080nsIVrXa6L57aXmtw4cg2dd8Pd4EFbaiqim13T+ds
         5hLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=+VYxtSYA5OyiLl7gExkakIULMtqhutc086nOHC83lPk=;
        b=m4i/arbtpa9AwuEdKyf9ylFXO3Kyjt1+asIa+xUyJdzFFkAlDDUAMzQ5FiyZle9XgQ
         5/CtSS928diPq2AlMs3vvTiplW67JPalJWu1uGnnKC2xSDtKZhq4rZzWxeZFEnvHG6qP
         vF88xw71QPakrmJcsqwzgWClEqumxX7irtOpC0F1iOZw/rZ3xjrWTFLdG8rVLK2eAnHB
         5pV8NrcVEj6FrFZwtNgn1H7RjOWUjEGWmwaGYJzCXVPwXllMzu69lxlIgfO7T56+u8qy
         ifFbqVA3hCJcKtUL2War81B7iPCrKcK5cpmt4IfVnaXmSqnJfVX9uPAxOAGsfbIwflov
         L2BA==
X-Gm-Message-State: ACrzQf1X7Yg9gpcMxn6i6t0c74N87dVFFHtVOlAKoNXBph+0cYySsi0P
        zD1+rELrKsue3GP6PKGoLC4zaQ==
X-Google-Smtp-Source: AMsMyM51NES3RCACwNbkEyT0lYAlozhLRWFpnLns2BDFA5C0F1f9eA/hhnH/8ncrW25blwnsjWzGMA==
X-Received: by 2002:a2e:bc28:0:b0:26b:d979:fc72 with SMTP id b40-20020a2ebc28000000b0026bd979fc72mr4757161ljf.292.1664022975566;
        Sat, 24 Sep 2022 05:36:15 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u18-20020a2eb812000000b0026c4113c160sm1707269ljo.109.2022.09.24.05.36.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 05:36:15 -0700 (PDT)
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
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 03/12] dt-bindings: display/msm: add interconnects property to qcom,mdss-smd845
Date:   Sat, 24 Sep 2022 15:36:02 +0300
Message-Id: <20220924123611.225520-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220924123611.225520-1-dmitry.baryshkov@linaro.org>
References: <20220924123611.225520-1-dmitry.baryshkov@linaro.org>
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

Add interconnects required for the SDM845 MDSS device tree node. This
change was made in the commit c8c61c09e38b ("arm64: dts: qcom: sdm845:
Add interconnects property for display"), but was not reflected in the
schema.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/dpu-sdm845.yaml    | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
index 3cb2ae336996..a87deea8e9bc 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
@@ -57,6 +57,16 @@ properties:
 
   ranges: true
 
+  interconnects:
+    items:
+      - description: Interconnect path from mdp0 port to the data bus
+      - description: Interconnect path from mdp1 port to the data bus
+
+  interconnect-names:
+    items:
+      - const: mdp0-mem
+      - const: mdp1-mem
+
   resets:
     items:
       - description: MDSS_CORE reset
-- 
2.35.1

