Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5CC8569CA1
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 10:08:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235051AbiGGIEq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 04:04:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233939AbiGGIEo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 04:04:44 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E39DCE00
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 01:04:42 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id m18so11329244lfg.10
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 01:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/f9p62fMS99xM7mHr2HHjGLpTbZceR2Zn1lLek1ud1w=;
        b=qcCCSCFt2Fd3xS6h0fNJd8tshWFUhAnilR0zaFXiYC+2gr9VkWb1raxklvKrDw6hlY
         dAPVWf/k1xdeharGHf7BNCouDaAdRErvrpC2wTWIp6eRyFwEw//K9DvEr9pXrm0eMM98
         ajJNzpUIKBBSa0ITyfQfshw1WcAKt3vIi5Iax3LvgTHmzFgkdoxJKuUkFoeK4sIVaHo0
         izNTxua9Yuk1XQBqYn8WrDw7bG2XIqfdtUZ/i4qew913Lmc2Jx2aOkPasA5aYuaylm4v
         1mgTkBoxM9t1sI9y+fK8lLdFgxcZ25BvWviYXcOot4tFhtkMJRA14QfEYhmkmt0Pvvfz
         u1Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/f9p62fMS99xM7mHr2HHjGLpTbZceR2Zn1lLek1ud1w=;
        b=wSwlu26lPn1D2zw82ARg5oODsTCHSSIrpca3rYz2FaoShnJ96uCXnZt2F49vmGWH++
         956aN9sgpnRskFiY6oxbrA//3aoMDPy5xmGKLHAvigofqzLbls/9N0wecihY3ro8qwGv
         SO9+XiwcGj+vC177qiJ9DdlpOY5IeWLdQOEQ9vx+7l+fhkjhBhsvvoFFfZcKIKUZ7vi6
         0N6gzTuIxAX1nOENDdpGFgmiQfZV50RPMka2xihoydVMab53nvGgNgO65rIv3KUHuvq7
         8Nq3F+eFivrJ4tMtlKGMYE0u0WDzC1Uuq92+bU5Vs0b4nce2S085HlnVPO1RXajdAbzG
         sTDw==
X-Gm-Message-State: AJIora8HSPdoHJEPwwKgKsOXOsiqBu7aDolDJ3HL/JD3atYkpY1ZsGRM
        gTbPxd/9Hh1d/KiioldgQR4sbQ==
X-Google-Smtp-Source: AGRyM1uyxLr6utQh6WzGkS/o4ElVNUkS91rxr9fiBUrexVoQfiiRTZ7YoxUejt5fjwk0KqBV2M5Tag==
X-Received: by 2002:a05:6512:169f:b0:482:f605:c19c with SMTP id bu31-20020a056512169f00b00482f605c19cmr10449081lfb.592.1657181079425;
        Thu, 07 Jul 2022 01:04:39 -0700 (PDT)
Received: from krzk-bin.home ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id s6-20020a056512214600b0047b0f2d7650sm6697187lfr.271.2022.07.07.01.04.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jul 2022 01:04:39 -0700 (PDT)
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
Cc:     Douglas Anderson <dianders@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/5] dt-bindings: mmc: sdhci-msm: fix reg-names entries
Date:   Thu,  7 Jul 2022 09:51:47 +0200
Message-Id: <20220707075151.67335-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220707075151.67335-1-krzysztof.kozlowski@linaro.org>
References: <20220707075151.67335-1-krzysztof.kozlowski@linaro.org>
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
---
 .../devicetree/bindings/mmc/sdhci-msm.yaml    | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 31a3ce208e1a..10707c4f7184 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -59,22 +59,22 @@ properties:
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

