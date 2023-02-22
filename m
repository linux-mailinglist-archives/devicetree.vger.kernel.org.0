Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D580369F9F9
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 18:23:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231896AbjBVRXJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 12:23:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231799AbjBVRXA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 12:23:00 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4467946B2
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 09:22:56 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id z5so8617313ljc.8
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 09:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677086575;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=81Eg8IFjCVRuU9rYgFIp5x0cgMeqnSHlx3m8knRv6/g=;
        b=Fm7eMnwreUyngGKUgoiEmS/OykEqVo7wGXhlCJfMOpVFNOFBfZPQQxwq1Pa/FZSqfi
         Lt4x/qXHV58bvYxfKpvKMUAKDRPbtC2C8702ZY0xaFnTK/SSqI2m8boxFMZ+7Gnppb31
         qJCX7h43TPYrK3GXgdXwYqfRKL8IdO7Y+DDrKWaYRTnn6iW4Fa9Xsr6GFhw2Upp/8FLD
         p3EgFbzzBN+bvUnMMnLEOt0WgFOrYmJND16If0a7g69+1x5oi5Fu+ZtCQVQmBX0PUyEO
         5P6ZhgeaOdCs5AYsef6ns2LDqFtfOGC5CR01/8GP8nDvBKP8o8+58/GFlGGm7Jwl8T76
         x0FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677086575;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=81Eg8IFjCVRuU9rYgFIp5x0cgMeqnSHlx3m8knRv6/g=;
        b=h/oY4j7Xfy6k2R/DXySlTF/hnF/2jRRZGuZyele6owrxj2N8CBj1r3V4mIMuFaQMKG
         xu7Mrj5ltHshhdmU/mXzU87iBHlY7XvHZv+ZxfFc6C/4FlqZj8ymyJykJPvU4NYClGeZ
         0GiQeTzQcs2ZjiSrNh55L1kdSAARD9eZo3722hwQUOhCXV64m5OMhTIL62SVoUDK7MhD
         nV6BRZIoKwtE0NtMXkpq6QMJ/02ltky7PEqA6V0b8fiOkoH1/sjnKf6Dg0wx1auUViS/
         coe3kS528UedWey7aBmTp0aEl8P5pPZCKuBfbQQN7p7UM8L7/ycyQnFncICH8LBZjvdc
         rIGA==
X-Gm-Message-State: AO0yUKUVOvlmVuu5CBROPErwZX+BpbpTDNQRWuMfqnJST5SIpVSw/lwf
        UdmFAOFMZfOJH5LXj/WHpQVs7w==
X-Google-Smtp-Source: AK7set+x92lIoKOT3n0uDDDCWTLeeVofuWBPFxMp/7mAlpY/LmCvLRKoQPz9/G1wPV4lBwcHuMMu+A==
X-Received: by 2002:a05:651c:ba8:b0:293:253c:a435 with SMTP id bg40-20020a05651c0ba800b00293253ca435mr3152017ljb.5.1677086575749;
        Wed, 22 Feb 2023 09:22:55 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id r3-20020a2e80c3000000b0029358afcc9esm805233ljg.34.2023.02.22.09.22.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 09:22:54 -0800 (PST)
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
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v11 06/10] dt-bindings: qcom-qce: document optional clocks and clock-names properties
Date:   Wed, 22 Feb 2023 19:22:36 +0200
Message-Id: <20230222172240.3235972-7-vladimir.zapolskiy@linaro.org>
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

On newer Qualcomm SoCs the crypto engine clocks are enabled by default
by security firmware. To drop clocks and clock-names from the list of
required properties use 'qcom,sm8150-qce' compatible name.

The change is based on Neil Armstrong's observation and an original change.

Cc: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../devicetree/bindings/crypto/qcom-qce.yaml    | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index 84f57f44bb71..e375bd981300 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -81,11 +81,24 @@ properties:
       - const: rx
       - const: tx
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,crypto-v5.1
+              - qcom,crypto-v5.4
+              - qcom,ipq4019-qce
+
+    then:
+      required:
+        - clocks
+        - clock-names
+
 required:
   - compatible
   - reg
-  - clocks
-  - clock-names
   - dmas
   - dma-names
 
-- 
2.33.0

