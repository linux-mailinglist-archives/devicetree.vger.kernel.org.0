Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8845056AD9C
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 23:32:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236672AbiGGVcT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 17:32:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236751AbiGGVcR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 17:32:17 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FDE633E10
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 14:32:11 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id t25so33277798lfg.7
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 14:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FQ3ulOTd9YQetXSjeiiQJmb1xAaBiHtF+6lK/e/6dKE=;
        b=NP9Hf6Lj/UnC4B3F+w8ENKeepJJ11z2mUCuaJuqcVosGX0WztK6UPJcMPebyFA45bL
         03tJnpGkfCD6tvUQuzOVHXwYI8Zp2f+F9sL0+YwkXBKGyWo/4VLPai/2b2IivS6eAp52
         9yB6Deuv9ts382p1qnlGzvZZcYVqiClmjHFHPD6zZWKUy8KMqQLBbbiEdEMNmHlugmLZ
         1cuNL+9akEgDglzfMBpgRvq6DSHvJvkE+p36OvbfbVo/jzkY1D5wMpbvFJzibKoBmw/1
         KxyGAAyNGZ1Sc+WZK/5w2WZ6QV5oYp/tlPUyAs3KSaOrBe3iCIJyuAd/W56gOeIuI8Mn
         Vvcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FQ3ulOTd9YQetXSjeiiQJmb1xAaBiHtF+6lK/e/6dKE=;
        b=RC9wpnmpO6tZpWuEPFpmhgsxOgyaKLUQ+/f1URarVT2NoA759TbYAsDwDAm66SNAPA
         vQIbIUdcd8Zxg+No2P5c7R2goVfzcKL0a80sj9RkQhXAcv9qAfI1msEeEaXhxS95kTXo
         QQQ8uM06HvDQ/2r9Zde58o4t6gDuWWEew1g+vinjBkhTDn/U/raDt9xV+NT+jZiK1hUW
         htiDiYJxoMt2KB+0WfbvPEr5u1LuQElzXoDr27j3N9DyJ+kq69ekwVomYJSRfXXv964i
         XtGgAQijELPIqfsbpG67iCOUokNnI+uWHdrM4m0h87Wvnka0Q1QwXgoEaNtFwHMt2/w1
         lAcA==
X-Gm-Message-State: AJIora+n0DBCQFenzAAmVadu0fh7pZfcN14MfxWDxUzQ6Fq2EAdw43NU
        JXTwNrSEPeqFICTxFaFYPJp7Zw==
X-Google-Smtp-Source: AGRyM1vw3ulfh2afxtg/pP0/p/ek20FusHvC8eHTLJ93RWMOeI4sRSsmM9E7qrOgiJHh02iIDzPyAg==
X-Received: by 2002:a05:6512:3d89:b0:481:bcf:cecd with SMTP id k9-20020a0565123d8900b004810bcfcecdmr124021lfv.511.1657229529643;
        Thu, 07 Jul 2022 14:32:09 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o19-20020ac24e93000000b0047f8cb94004sm7046709lfr.35.2022.07.07.14.32.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jul 2022 14:32:09 -0700 (PDT)
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
Subject: [PATCH 4/9] dt-bindings: msm/dp: add missing properties
Date:   Fri,  8 Jul 2022 00:31:59 +0300
Message-Id: <20220707213204.2605816-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707213204.2605816-1-dmitry.baryshkov@linaro.org>
References: <20220707213204.2605816-1-dmitry.baryshkov@linaro.org>
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

Document missing definitions for opp-table (DP controller OPPs), aux-bus
(eDP AUX BUS) and data-lanes (DP/eDP lanes mapping) properties.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/dp-controller.yaml          | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 75344694466f..f00eae66196f 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -73,9 +73,21 @@ properties:
   operating-points-v2:
     maxItems: 1
 
+  opp-table: true
+
   power-domains:
     maxItems: 1
 
+  aux-bus:
+    $ref: /schemas/display/dp-aux-bus.yaml#
+
+  data-lanes:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 4
+    items:
+      maximum: 3
+
   "#sound-dai-cells":
     const: 0
 
-- 
2.35.1

