Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2571B57F559
	for <lists+devicetree@lfdr.de>; Sun, 24 Jul 2022 16:04:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231318AbiGXOEa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Jul 2022 10:04:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbiGXOEa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Jul 2022 10:04:30 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B476B12634
        for <devicetree@vger.kernel.org>; Sun, 24 Jul 2022 07:04:25 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id a23so12043913lfm.10
        for <devicetree@vger.kernel.org>; Sun, 24 Jul 2022 07:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=s0ASRw18lgzywYyTsagXKKvbBg90h5rD8OpC1S5h+xM=;
        b=mdC50YomQRDZdmSUXeSVcoqF2unvVSJwSGOTDBOhGSB6NG9wjTN4yfUDwie7qJQ2D3
         tBoM2jFBm7xUbDt33guWjzjQCWiPJpyeiyo/DA+Xi2+whDBYAxQV0S8atBV3W2OCTKyR
         S4uQpaxBqUzcoG16O5fxb0Ri+Qg+da+Vf4Avri/yEBgjLbn293ZX9oRuyxoT/PCCru9J
         wE5KyYUpU+BiP5pxGxN6bXsoc/ZP/RbFt072hn+rPFH6HnPbnxrgnazK4rjOfzWtwbFQ
         Z2ea2GVhC3WZqY34kKDBSCAddbRNOtFsbmFkGIzgs7YauZloBFsHThH6py/DeA7GZxD3
         Fd4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=s0ASRw18lgzywYyTsagXKKvbBg90h5rD8OpC1S5h+xM=;
        b=h3nxHL90yCb8gs9KQxVcTLrvFKnFwyt2V7WqYxoVKAXrV9tWqVfMR/hkfU0rDIhcwI
         Jh1ghsrKf/HS2Wp1LV+xDS/YVQuTjq8fz52YcfwQzMFrnyAyV1JTnQETNL1BxhlIfmzd
         koXe+wP2pa4gY2qjJMWMGM7ZcroQ1z1DP/l92ANY7e+oaukraD9gE8hcDllXBmdHnv18
         Vn42qJbzKIDJmtAB//HjkZFcDZI6Hy23fXOPv95wW0MmshxpwrS0AKApDeAYCrMvDp1d
         c4kKaYDeE/Uz/uWX6ZDq3ATHOYzmzvPx3EZcb654CV+MAlFV48na03gLgwEpmag+bn34
         aeKg==
X-Gm-Message-State: AJIora/XMTI+FeOl5C84Wt0Xg5uTt0ymG2khJy+PsA/cGVRTRO9tOGq9
        2IlhpzeEo5JAtTefIbsjBbc98Q==
X-Google-Smtp-Source: AGRyM1vIOOLvlHTeWbJYtiX/0i9kEkNs3w/skZ6e1qHR6S0B5uLfGe9xYtt6fYR2nGwubfYk/8lmxA==
X-Received: by 2002:a05:6512:2394:b0:48a:7cfd:72ac with SMTP id c20-20020a056512239400b0048a7cfd72acmr2960663lfv.411.1658671463981;
        Sun, 24 Jul 2022 07:04:23 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s13-20020a056512202d00b00489dedf1dcfsm2192622lfs.289.2022.07.24.07.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Jul 2022 07:04:23 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Yassine Oudjana <yassine.oudjana@gmail.com>
Subject: [PATCH 1/7] dt-bindings: arm: qcom: separate msm8996pro bindings
Date:   Sun, 24 Jul 2022 17:04:15 +0300
Message-Id: <20220724140421.1933004-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220724140421.1933004-1-dmitry.baryshkov@linaro.org>
References: <20220724140421.1933004-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Xiaomi Mi 5s Plus (natrium) and Xiaomi Mi Note 2 (scorpio) use
MSM8996Pro rather than plain MSM8996. Describe this in the arm/qcom.yaml
bindings.

Since MSM8996Pro is largely compatible with MSM8996, keep old compatible
too rather than insiting on qcom,msm8996pro only. This allows the code
that doesn't yet know about msm8996pro to continue supporting these
devices.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index fb1d00bcc847..3892aedd9215 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -223,8 +223,13 @@ properties:
               - sony,kagura-row
               - sony,keyaki-row
               - xiaomi,gemini
+          - const: qcom,msm8996
+
+      - items:
+          - enum:
               - xiaomi,natrium
               - xiaomi,scorpio
+          - const: qcom,msm8996pro
           - const: qcom,msm8996
 
       - items:
-- 
2.35.1

