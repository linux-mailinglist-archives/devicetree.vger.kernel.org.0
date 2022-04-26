Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C025D50FB86
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 12:55:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346346AbiDZK6U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 06:58:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346703AbiDZK6T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 06:58:19 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADB4913F1C
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 03:55:10 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id l18so8608448ejc.7
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 03:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yIvFsxX0+Q109dbe45P3TPReSMp6tBVXSq7c5dxDVXM=;
        b=TlRFQgLT0O75Gps0yxMbaqrAd5i/9QPZi24JgDA89OhqxEgVlp6mYdNpo9+g5o2IOX
         uWu/Y9nSifFxnV64CLxgiwpprO7GAZYSnk/YA87YoZeTjMQFe4NjRRsFmIvcLJE4W/wP
         03EZzU9FUJh+pdyIcS+zH8c+6KXI/jsON4Bfx2/Y1jAe/T3sHHFolkqUJdGGhLVEORxw
         tONTfei/vAheR2zejMCTnAR8Pmc4Jr9LHw3ghzFaMBjM/6MSkYvJNyjUB/pY1WxsDRZc
         yS/oyWL0FjZ2SW71ROPVY9CFWVFvIKQGRYCOiQAkBCdv5dnX6eQblMILc4UGnqqHCCnA
         tv/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yIvFsxX0+Q109dbe45P3TPReSMp6tBVXSq7c5dxDVXM=;
        b=IaOt/2SbbeUgS0Pbsv7Vqg0A00IL79qidd1JyjVgszippaGtToN0Awpd/Ty5cpSxht
         0B+uNghWZY4k1ExFXMOlPg7c9IwJ1YRk2xTZRA0WrN/RZ9LYbdgaSkssLcT+prG++CAG
         YGb5lKO2FPHcJMEx3fifLo64naFszMipmvWF/5rSzAiq+m8wu1Xdxx9Gb4U3TO5HMZs+
         P7DvPUs9VYrRSzSQCSIPTf47v0Nwl8FzCaZU3mOUX+Q6VHBk6gTo9nN+igi8r+3Vnoi0
         jCn+POfG8REdHFihD60KYdjwCGUnrYoHhmgVS0M1pQHD0S27ZRm59Oby+vmMqrBEuOwp
         0i1w==
X-Gm-Message-State: AOAM5332uFpIvc99vEyatyFNHzYyxWH+lCmvb//GvpgvXq28paJWJunN
        NF9jcCAMyVY+s4fEMKko8a0p3Q==
X-Google-Smtp-Source: ABdhPJyPeL0MHaWwVzqnoXqW2YfKIYt+7muVh7oaB/8pBt1FQrNC2nvBkUslHZnOSLQSUrDZD+azpg==
X-Received: by 2002:a17:907:6e88:b0:6da:8f01:7a8f with SMTP id sh8-20020a1709076e8800b006da8f017a8fmr20477453ejc.619.1650970509258;
        Tue, 26 Apr 2022 03:55:09 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s5-20020a508dc5000000b004241a4abbdfsm6062843edh.45.2022.04.26.03.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 03:55:08 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/3] regulator: dt-bindings: qcom,rpmh: update maintainers
Date:   Tue, 26 Apr 2022 12:54:59 +0200
Message-Id: <20220426105501.73200-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220426105501.73200-1-krzysztof.kozlowski@linaro.org>
References: <20220426105501.73200-1-krzysztof.kozlowski@linaro.org>
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

David Collins' email bounces ("Recipient address rejected: undeliverable
address: No such user here").

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/regulator/qcom,rpmh-regulator.yaml     | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 2714a790ff83..842ccef691b8 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -7,7 +7,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Qualcomm Technologies, Inc. RPMh Regulators
 
 maintainers:
-  - David Collins <collinsd@codeaurora.org>
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+  - Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
 
 description: |
     rpmh-regulator devices support PMIC regulator management via the Voltage
-- 
2.32.0

