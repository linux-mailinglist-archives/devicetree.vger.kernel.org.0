Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DE5359C748
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 20:51:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237937AbiHVSvB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 14:51:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237845AbiHVSup (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 14:50:45 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 354874D140
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:49:05 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id bt10so3563070lfb.1
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=yW/zgiGRRkDA/MVfrxBInFrDTIC51LYTWBpp0NQEfD8=;
        b=IUnejPUHT5pQ9Q9W6PN2D8zRlcRNalnLnHpLk7EYa3s9uyLKfkYvgLOZHNeSath3UM
         HX3pqVzzrlE8CGFIZ9OnddBYRflwJqJa6txIC9HB8nzSenXY3CTj3cxZvR0HDcymGa+M
         DrSObuNl44pUMzg/NOla/4NKIuoD+5uOz6gNumiy1yZKWfm3UN2/RcuKELvDD7f/0cns
         OqJdto02v6mXreeV+mOC122jL8U2Q+RnJw2IBeYACWm9DLg5wNZiB/yGTex0Q70J1MdL
         b43ryCnHpncWUO3K2SiAVdtGEercz+LgjyD0bJnSsygLu/MSHmJ+xVdsZKPyinZDahFK
         caOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=yW/zgiGRRkDA/MVfrxBInFrDTIC51LYTWBpp0NQEfD8=;
        b=nOlvKMk/PwkfNFS6Db/cyFW+1Hg19PV8NRYP7ZylhKezsxDg+H9ToIFV70sjAg7Fh9
         aXPA9QIeMtHVATcBvSFV+pHnIzW6VBDXIb9yOrgQNGopCfKZ6zn9gdekSzLm4x7qiwlv
         2/6K+hpKe6VQGo9TE9UjFHpDV5ysAJnyG8T9sloiB0PbZTPkz8ql8h1OdcgmjpHePEdc
         2ivphgIgApUglPx1AdxwP7hlb56EMVr/pw1rah7AjfpgYYo6yWKHif2kV4T8n7gDPSrn
         rHx3MNuzagSSLhiTKlenDpewBuZXHOYmEH0F8mYb6zTI5wEzNPjdputO9aVjNYEfI5nd
         XxjQ==
X-Gm-Message-State: ACgBeo1cNjLveGirui61fcLT5By49YxGHV9ScJMRs+D15q0fW7KKp4HF
        PpYysYC3ftqfmyFFu5n1cdFB+Q==
X-Google-Smtp-Source: AA6agR4H9k+jzeo4Ilk656p8IX03a6Pbvbfm7v6M3aPwbIQTa0dLaOINaxVU527PebB6Fc6qPsxflw==
X-Received: by 2002:a05:6512:3086:b0:492:c1e7:f5be with SMTP id z6-20020a056512308600b00492c1e7f5bemr7024827lfd.454.1661194144173;
        Mon, 22 Aug 2022 11:49:04 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w11-20020a05651c118b00b00261bc05c461sm1672599ljo.50.2022.08.22.11.49.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 11:49:03 -0700 (PDT)
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
        freedreno@lists.freedesktop.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 3/3] dt-bindings: msm/dp: handle DP vs eDP difference
Date:   Mon, 22 Aug 2022 21:49:00 +0300
Message-Id: <20220822184900.307160-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220822184900.307160-1-dmitry.baryshkov@linaro.org>
References: <20220822184900.307160-1-dmitry.baryshkov@linaro.org>
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

The #sound-dai-cells property should be used only for DP controllers. It
doesn't make sense for eDP, there is no support for audio output. The
aux-bus should not be used for DP controllers. Also p1 MMIO region
should be used only for DP controllers.

Take care of these differences.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/display/msm/dp-controller.yaml   | 26 ++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 52cbf00df0ba..f2515af8256f 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -24,6 +24,7 @@ properties:
       - qcom,sm8350-dp
 
   reg:
+    minItems: 4
     items:
       - description: ahb register block
       - description: aux register block
@@ -112,10 +113,33 @@ required:
   - clock-names
   - phys
   - phy-names
-  - "#sound-dai-cells"
   - power-domains
   - ports
 
+allOf:
+  # AUX BUS does not exist on DP controllers
+  # Audio output also is present only on DP output
+  # p1 regions is present on DP, but not on eDP
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc7280-edp
+              - qcom,sc8180x-edp
+    then:
+      properties:
+        "#sound-dai-cells": false
+        reg:
+          maxItems: 4
+    else:
+      properties:
+        aux-bus: false
+        reg:
+          minItems: 5
+      required:
+        - "#sound-dai-cells"
+
 additionalProperties: false
 
 examples:
-- 
2.35.1

