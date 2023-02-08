Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0506B68F724
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 19:39:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231192AbjBHSix (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 13:38:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230443AbjBHSiY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 13:38:24 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C9529749
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 10:38:18 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id l14so11820029eds.4
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 10:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=seDN7hLl5swt4J3XJglUIV2zzqtOSiYmNP6OJCG/0cc=;
        b=Vb5ztwSumtqb2AB0kziEEW5EbhUthUpiOANbKW6VF+Np5gKsFzuhYqYjxzZ3M398Q3
         DGAayObtSCsTqCgKdKBec95E17hC16j/qqyWWIaUMJ9Zdy0v3L+Vz89mgOwnvMrNp8Tv
         icUlj9/ErrnolSiksCWHbKyB4I2VRRIMYJzjfVDleHSxOli6A6uwyLJE7upSTC+h7bnl
         ypD3IdhRp4A9rODPxSK7rNDKBM/6UcXcjw9oRKtA7Hi5vX4CWM90mRI16Y3ecTmBTQJo
         ufMO/Wb65MP/SnSIB+ctt4JSSiQr3QzAdBs9zU/bngEn85oUusQyl+B9wGX49OW+gBfu
         2awg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=seDN7hLl5swt4J3XJglUIV2zzqtOSiYmNP6OJCG/0cc=;
        b=2a8OTRv7YPbanuFF25InuD9TdoW8NIe458lImeRd7fPzgDg95SMrfTb7NUAxMxtsqg
         3OD/Cj9gNnmttqia1z73RvIyd4aq/zMyIj9RI3zspxaiamTehbC0xPG6jRSs0XJZAJk7
         6meoQ4ClNy2YiBasE/OqDvvuivlO/9b1zeOS2V2h5VFq1tQKEUzCoVQmY7NPRBLHwoQY
         KkUjUWhh6XGZlEVQZMFCWqjIj6iCddHTKdCPnb9cjnbaw+QBzL8zRK75YO6RdC1c+/fU
         Jk5oOQnOgfolyE4vXnAUxTJln9goragm0KnlzIu0y0i9R3/nG8uwKzd1g+0LNZP+NzAc
         vYKg==
X-Gm-Message-State: AO0yUKVF11gQ+/+yDtjJgymRIO/mnghwgAEnFAQ/OkCPchnKYKqkSGo/
        Q9tFZyzMudH3SB83nzdgd8TtiQ==
X-Google-Smtp-Source: AK7set+y4vkuO6iCpFVJRNS7wp74veH5JnO0RdabOe4YWDYh+5U6S4gBwdKJ8pFaGEI7pgC9E7iKLw==
X-Received: by 2002:a05:6402:51d2:b0:4a2:64d7:16bc with SMTP id r18-20020a05640251d200b004a264d716bcmr9494711edd.4.1675881497254;
        Wed, 08 Feb 2023 10:38:17 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id d22-20020a50cd56000000b004aaa8e65d0esm5179663edj.84.2023.02.08.10.38.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:38:16 -0800 (PST)
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
        linux-crypto@vger.kernel.org
Subject: [PATCH v9 05/14] dt-bindings: qcom-qce: Add new SoC compatible strings for qcom-qce
Date:   Wed,  8 Feb 2023 20:37:46 +0200
Message-Id: <20230208183755.2907771-6-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230208183755.2907771-1-vladimir.zapolskiy@linaro.org>
References: <20230208183755.2907771-1-vladimir.zapolskiy@linaro.org>
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

Change QCE IP version specific compatible to two QCE IP family compatibles
based on SoC name and populate these two IP families with particular SoC
specific IP compatible names, which are known at the moment.

Keep the old compatible 'qcom,crypto-v5.1' for backward compatibility
of DTB ABI, but mark it as deprecated.

The change is based on the original one written by Bhupesh Sharma.

Cc: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../devicetree/bindings/crypto/qcom-qce.yaml  | 24 +++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index 4e00e7925fed..f6f1759a2f6e 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -15,7 +15,27 @@ description:
 
 properties:
   compatible:
-    const: qcom,crypto-v5.1
+    oneOf:
+      - const: qcom,crypto-v5.1
+        deprecated: true
+        description: Kept only for ABI backward compatibility
+      - const: qcom,crypto-v5.4
+        deprecated: true
+        description: Kept only for ABI backward compatibility
+      - items:
+          - enum:
+              - qcom,ipq6018-qce
+              - qcom,ipq8074-qce
+              - qcom,msm8996-qce
+              - qcom,sdm845-qce
+          - const: qcom,ipq4019-qce
+      - items:
+          - enum:
+              - qcom,sm8250-qce
+              - qcom,sm8350-qce
+              - qcom,sm8450-qce
+              - qcom,sm8550-qce
+          - const: qcom,sm8150-qce
 
   reg:
     maxItems: 1
@@ -70,7 +90,7 @@ examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-apq8084.h>
     crypto-engine@fd45a000 {
-        compatible = "qcom,crypto-v5.1";
+        compatible = "qcom,ipq6018-qce", "qcom,ipq4019-qce";
         reg = <0xfd45a000 0x6000>;
         clocks = <&gcc GCC_CE2_AHB_CLK>,
                  <&gcc GCC_CE2_AXI_CLK>,
-- 
2.33.0

