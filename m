Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AD8B69F9F7
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 18:23:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232672AbjBVRXI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 12:23:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232674AbjBVRW7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 12:22:59 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD67A7690
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 09:22:55 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id f16so8548813ljq.10
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 09:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677086574;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bNKLwBHwPw1lEE61Bg4S2Go1fSCcBOdaNH5bLSqYv1w=;
        b=EQLZNzI8AvFJUtLVK9f6DK297fposcITZsp2J7KwKNSZWYLlxU4w77W25G1CR7FECR
         yv/31F2Op++wZdwDcMPrEDRyDjOEDPcsquKOeKrkosJs7w2XGuP1AWOFvBszyDnbRHSu
         jDMqlFCFt0a+oL5Hz/JKj0apuqDA/wRExLYJbaISbpwi/T9m08lOgES/ZgSzdBCabFOb
         j9DG9+F7i6Uf+xjBcQInftSQZweSqJI313KlnB2QMg432ULvSRVns0GguqraYCtJtMcg
         VuMthb9hNN9Nsl+ICC/s40UfEilgEUZdKuA5K8TSoFsX4czij2Xk5Fto/2QzjcBk1Pq2
         QHHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677086574;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bNKLwBHwPw1lEE61Bg4S2Go1fSCcBOdaNH5bLSqYv1w=;
        b=2UcAjmlCs1KK7kVQRNb/rrHV/t3xbCmkYkJ/IV5eUkjSCfWKw2e4kMILX3cwdPs1i9
         5fBnu3Dq30kB3x2/ujW+ub0SaDTyb7sYlyHDicTMg184j0s9Sc5hKpMVSGHQRvOxkgtO
         N9vv5+n+uBnsLW6OM+q9Mz96u82RlOY5wAh5jEcsDYOGvegkReibpOkMAEjbNR5MG6zN
         i8RjRpFIJzNih1bxplkgc3SRP1W50nUZR6SI2O+qT+E02+miXgWErWP8RcBYVmx1aA/J
         r4rHkKJt84T2yu93ktGG34ak19c8SEpZ63WO5eZyAuSER+LujE3JPjnMqObkKNG+S3ff
         fwNw==
X-Gm-Message-State: AO0yUKV6NF/JGdWYNQ4VbMGzVo9wqm9/hrSuAKveqYFwGvnYgTTm9MYz
        GGzuYOe/pL9/y3QYbtHGsZR8oA==
X-Google-Smtp-Source: AK7set8IqwOJCZ/gUltz5168tjCvqYLrDlXIy85IPgsxTpPrdxapHrvrE8RxvjWTYrve8QPNPjfM+Q==
X-Received: by 2002:a2e:3008:0:b0:294:70b7:ff90 with SMTP id w8-20020a2e3008000000b0029470b7ff90mr3027118ljw.0.1677086573884;
        Wed, 22 Feb 2023 09:22:53 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id r3-20020a2e80c3000000b0029358afcc9esm805233ljg.34.2023.02.22.09.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 09:22:52 -0800 (PST)
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v11 05/10] dt-bindings: qcom-qce: Add new SoC compatible strings for Qualcomm QCE IP
Date:   Wed, 22 Feb 2023 19:22:35 +0200
Message-Id: <20230222172240.3235972-6-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230222172240.3235972-1-vladimir.zapolskiy@linaro.org>
References: <20230222172240.3235972-1-vladimir.zapolskiy@linaro.org>
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

Introduce a generic IP family compatible 'qcom,qce' and its two derivatives
based on SoC names rather than on IP versions. Having a generic compatible
is only partially sufficient, the QCE IP version can be discovered in
runtime, however there are two known groups of QCE IP versions, which
require different DT properties, these two groups are populated with SoC
based compatibles known at the moment.

Keep the old compatible 'qcom,crypto-v5.1' and document an existing and
already used but not previously documented compatible 'qcom,crypto-v5.4'
for backward compatibility of DTB ABI, mark both of the compatibles as
deprecated.

The change is based on the original one written by Bhupesh Sharma, adding
a generic family compatible is suggested by Neil Armstrong.

Cc: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../devicetree/bindings/crypto/qcom-qce.yaml  | 29 +++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index 4e00e7925fed..84f57f44bb71 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -15,7 +15,32 @@ description:
 
 properties:
   compatible:
-    const: qcom,crypto-v5.1
+    oneOf:
+      - const: qcom,crypto-v5.1
+        deprecated: true
+        description: Kept only for ABI backward compatibility
+
+      - const: qcom,crypto-v5.4
+        deprecated: true
+        description: Kept only for ABI backward compatibility
+
+      - items:
+          - enum:
+              - qcom,ipq6018-qce
+              - qcom,ipq8074-qce
+              - qcom,msm8996-qce
+              - qcom,sdm845-qce
+          - const: qcom,ipq4019-qce
+          - const: qcom,qce
+
+      - items:
+          - enum:
+              - qcom,sm8250-qce
+              - qcom,sm8350-qce
+              - qcom,sm8450-qce
+              - qcom,sm8550-qce
+          - const: qcom,sm8150-qce
+          - const: qcom,qce
 
   reg:
     maxItems: 1
@@ -70,7 +95,7 @@ examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-apq8084.h>
     crypto-engine@fd45a000 {
-        compatible = "qcom,crypto-v5.1";
+        compatible = "qcom,ipq6018-qce", "qcom,ipq4019-qce", "qcom,qce";
         reg = <0xfd45a000 0x6000>;
         clocks = <&gcc GCC_CE2_AHB_CLK>,
                  <&gcc GCC_CE2_AXI_CLK>,
-- 
2.33.0

