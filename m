Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1248B571E65
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 17:09:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234067AbiGLPJl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 11:09:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234194AbiGLPJV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 11:09:21 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8851BFAE3
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 08:02:45 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id bp17so6561849lfb.3
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 08:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QeR3DFLgzM8qo6wNayqmpjIsz3WLvihoJpHEg++lMwQ=;
        b=cHtxZBN53KqaaF99bN6sBOFjotvE88Ii8x8gdQNe6QNOjfXQ2vj15EjV37z3fklU8X
         jAgYEFflUP9x99z1gV2vYgMwUrqpQeEQ9XQ5p45ffgpQFdqRxinhSlg7opiajfVJJbi3
         zPFnroZbjjrReouhkmqycGT36ACNVfYqqsqTj9pBOlm0QKQj6SKxQJ2DKgcZRgRZ0eRb
         CIrKFWKfiggAMSBQPoyd502u3WetuLNAlz6GrO9uyDLEL612bU2g4jmdi5Sh0vPtTDJ4
         UmOtyzen3vI9YGiOFgpR4fN9ikniVKG0xI7F5zoYnZ6LZz+55Bg+abLRM3IdQWvZcsMd
         vOvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QeR3DFLgzM8qo6wNayqmpjIsz3WLvihoJpHEg++lMwQ=;
        b=0cBQi3nVbFNMWw618dhulvOUDn4aNVsVHu9Q8YuhqgNC2khG5blFZaM4qajSCTLw0g
         WsMUkzx04ISlxjtA8pnHG1HEFG0JMY7u3vaEocN/8ntMPxYmStDUgR8q6CHXH9AXCmKk
         aWrCox7VDBwcx7i8/V5xFmsCRCzkI0PNf2HEVFhaSyAPxGCFM7pKkEA5Srd09OCZCBrb
         PaNiL2AClmgKLdeBt4vIxEkUJs3eFvf/bavPP+JCuKajMazHxcioqGaw6zDgn4XMMQfd
         cnnqjhbBY2kEXBAd/oWb2onK866hMWgYiIFLH4O+VV7xtsShnfQCSX3nPkAZgiA+mWgB
         5CZg==
X-Gm-Message-State: AJIora/2vDgyZC69SNzYx3gj37+ktRzOLpV95+OLshr3oyfvEIKu+hTX
        ACfHRc4GPcoOG4v9hd4PIvu8xQ==
X-Google-Smtp-Source: AGRyM1sgMwtb/vMeSl0IGd0qOGshKzGkSHsqTQLPg/s8WeGU9SsAxVKlgMD2HFmn/2J4/1Gi3pjGsA==
X-Received: by 2002:a05:6512:239c:b0:489:cc5c:177e with SMTP id c28-20020a056512239c00b00489cc5c177emr11600310lfv.645.1657638163762;
        Tue, 12 Jul 2022 08:02:43 -0700 (PDT)
Received: from krzk-bin.. (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id 4-20020ac25f44000000b0047f9614203esm2224649lfz.173.2022.07.12.08.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jul 2022 08:02:43 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 1/3] dt-bindings: mmc: sdhci-msm: add MSM8998
Date:   Tue, 12 Jul 2022 17:02:17 +0200
Message-Id: <20220712150219.20539-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220712150219.20539-1-krzysztof.kozlowski@linaro.org>
References: <20220712150219.20539-1-krzysztof.kozlowski@linaro.org>
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

Add a MSM8998-specific SDCC compatible, because using only a generic
qcom,sdhci-msm-v4 fallback is deprecated.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>

---

Cc: Konrad Dybcio <konrad.dybcio@somainline.org>
Cc: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: Doug Anderson <dianders@chromium.org>
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 31a3ce208e1a..0853d0c32dc7 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -30,6 +30,7 @@ properties:
               - qcom,msm8992-sdhci
               - qcom,msm8994-sdhci
               - qcom,msm8996-sdhci
+              - qcom,msm8998-sdhci
           - const: qcom,sdhci-msm-v4 # for sdcc versions less than 5.0
       - items:
           - enum:
-- 
2.34.1

