Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E16C571D0F
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 16:43:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233625AbiGLOnE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 10:43:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233602AbiGLOnB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 10:43:01 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36AD5BB7C0
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 07:43:00 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id r9so6300156lfp.10
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 07:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9Wjg2aNHGHhzVH0rmb+gMIgs2nU+ES+Qag4lawsLAuY=;
        b=puVT3P1p2qJp+NmPSiMqNLoPTA+0Ma9/RXwHTNIccnaJspTHbnbW7GacdWIOtZS3xb
         NjFovWEJweHWtB/B7/MwAjAiPj3FcqFe8FxGrexHv/hXii8LTj6Po7un6Qs+d4OGw/Lh
         +jzZiarCoF+Wn3VpT5ogHARoL1RIp4Gqiv4iXWtPOjaXCc64eVfnoaZqxdZqSwah1qFd
         9wZtGq79QLrbf20QyxxHwDyH9OcU8V+DgdPXoeDjh3dfczmns3kpZd2QGscvA3nDp4O6
         uHi29KLR1SL3H+laWVXpewAERf7Ek/Dc3RkO3lSSN02JHwn4A4DGs2NJvizsgulOj33W
         p7WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9Wjg2aNHGHhzVH0rmb+gMIgs2nU+ES+Qag4lawsLAuY=;
        b=hub/dP6T9xqh6Fb0loV6V3X8K74ojyvjNRtCUmqfWYmFUqZOG2C/X6h30DGNqh2iK+
         RvhDQ0NK3ixJ/YEyYQU+RD3U/tWQURQSjW60LkcrlF9V3vKSKjZPil0KcaFtnTpL5ZAW
         Wleck8Z+YMJQWKY0yE+xWRIsP/ZCxW7lm4a8QOCGnXXjBjXjCuSKYVpeKK5hT0DXzbOR
         y4MjqLztP9ZFKSL3VOGSJy86WyQAoF45IrRsCO18WqC+2gaQPxPoCRAbrnBf85ZYSCzO
         kQlh1KJK/AzDpn/piofOsntKBipdng/orWvq5VkCsOjG+R0EWo/t7Fl2AB5wACfUwJHH
         xT4w==
X-Gm-Message-State: AJIora+dCOu8JmExOoJ/uxi+U0zbqYGQpZCVtXaZxOXKBwRj0f6QmNev
        JNruLigWmtdVQ8o3pqxvHBGnZQ==
X-Google-Smtp-Source: AGRyM1uBu2DHJl3HCjTGsddMKmXgr1sdiOfLGZabWUMPxQUPwM9DZ0e4PJfWBLgoYiW1Q9uT1MF3AA==
X-Received: by 2002:a05:6512:b14:b0:482:a9b1:ea3 with SMTP id w20-20020a0565120b1400b00482a9b10ea3mr15787589lfu.353.1657636978549;
        Tue, 12 Jul 2022 07:42:58 -0700 (PDT)
Received: from krzk-bin.. (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id w15-20020a05651234cf00b00489e88d6a72sm737577lfr.198.2022.07.12.07.42.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jul 2022 07:42:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v3 1/5] dt-bindings: mmc: sdhci-msm: fix reg-names entries
Date:   Tue, 12 Jul 2022 16:42:41 +0200
Message-Id: <20220712144245.17417-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220712144245.17417-1-krzysztof.kozlowski@linaro.org>
References: <20220712144245.17417-1-krzysztof.kozlowski@linaro.org>
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

Bindings before conversion to DT schema expected reg-names without
"_mem" suffix.  This was used by older DTS files and by the MSM SDHCI
driver.

Reported-by: Douglas Anderson <dianders@chromium.org>
Fixes: edfbf8c307ff ("dt-bindings: mmc: sdhci-msm: Fix issues in yaml bindings")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
 .../devicetree/bindings/mmc/sdhci-msm.yaml    | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 0853d0c32dc7..fc6e5221985a 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -60,22 +60,22 @@ properties:
     maxItems: 4
     oneOf:
       - items:
-          - const: hc_mem
+          - const: hc
       - items:
-          - const: hc_mem
-          - const: core_mem
+          - const: hc
+          - const: core
       - items:
-          - const: hc_mem
-          - const: cqe_mem
+          - const: hc
+          - const: cqhci
       - items:
-          - const: hc_mem
-          - const: cqe_mem
-          - const: ice_mem
+          - const: hc
+          - const: cqhci
+          - const: ice
       - items:
-          - const: hc_mem
-          - const: core_mem
-          - const: cqe_mem
-          - const: ice_mem
+          - const: hc
+          - const: core
+          - const: cqhci
+          - const: ice
 
   clocks:
     minItems: 3
-- 
2.34.1

