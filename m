Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E2865B3394
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 11:21:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231360AbiIIJUr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 05:20:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230368AbiIIJUp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 05:20:45 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A455AB4409
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 02:20:43 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id u18so1652021lfo.8
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 02:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ylRikkO/bjiVr6cfpMQukwsajH9gmB7MCgQxpA3FZjg=;
        b=Rbp6s+HHlty2tiIFVglQ/FRKyD5ATqB4XPHjipBAH8TzeUvX+65H7CX+s0YbT6FH26
         9TwT92id9gqKOir2zehfw4IlRI068GaYXzKmkGG+5PvDZSBmIrK6oEW1TR7lfr5SB03S
         nV0wymd5Aq3e0GP1Z8wRnZ5eeK/WswjAVc4layeXIfV0MP742IA7RtJ9LHNDdDTTUFzA
         qksspnOEmImqHOjWNcnX5qOSlQAgUFjqQJOqcM6Wg+RzAnkat0CPmANd6o9Lyyq2CqrF
         fuu9w5fV/Qa3klgUhAGtGUx9naCWwsrh17UU5cj1b6VF0W0MmN6wJi4vPQAzGWqcSdoQ
         dUtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ylRikkO/bjiVr6cfpMQukwsajH9gmB7MCgQxpA3FZjg=;
        b=SPtiYvQwrTXzLxwnl8MZ2p/OlZvUFz6Ah8YVQixzI1Iqn3ILaJxmH9HX/Yz5o2XgDs
         oMhN2V6UF6a53FBOzejFfpwUYnE4X1S9KS16uwOtn3kDKrjv+PMGq4UBs2mdIKvZLu4J
         fXVFzZLA+vkBdatnxOKKCJfzrumPATcM7e/VPJPXgsyaMWPzFas/3Ibxuq/f7A8BChyg
         52yHUye0OH2N3/QwPE0k3X2zWxqSuvAW1faq5/YA+oe8zAa7Pr6nYM8Dk42PLNWHJCzg
         fruo4f9Be5KxpHWDy1RGDHLocZfr5rWBfFLfhnU8UlPM/aaXY5CGdbSS5r9G7OoLAuiK
         IqxQ==
X-Gm-Message-State: ACgBeo3LI/PhNqaU7TrkTr9Um/kwcFbfJS2C10sDiBqTy/RUaCvxQaFD
        UPOPR5pq8y4NmkKa4uoDB6NADQ==
X-Google-Smtp-Source: AA6agR6jczCJXyxJLilCEi7CM4ktZLZkRgci+Cx3cUsUO4hcl38+ebPcuAWdK8BhKeG2Ax98uYOKfQ==
X-Received: by 2002:a05:6512:1087:b0:494:a011:2752 with SMTP id j7-20020a056512108700b00494a0112752mr4520199lfg.2.1662715241954;
        Fri, 09 Sep 2022 02:20:41 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s6-20020a056512214600b00498fe38ea0fsm2170lfr.174.2022.09.09.02.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 02:20:41 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 01/15] dt-bindings: hwlock: qcom-hwspinlock: add support for MMIO on older SoCs
Date:   Fri,  9 Sep 2022 11:20:21 +0200
Message-Id: <20220909092035.223915-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220909092035.223915-1-krzysztof.kozlowski@linaro.org>
References: <20220909092035.223915-1-krzysztof.kozlowski@linaro.org>
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

Older Qualcomm SoCs have TCSR mutex registers with 0x80 stride, instead
of 0x1000.  Add dedicated compatibles for such case.  Unfortunately the
binding started using a generic "qcom,tcsr-mutex" compatible without
specifying the SoC part, thus it looks now quite inconsistent.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

If anyone ever says "I want a generic compatible because I am sure all
devices are compatible", that's one more argument they are wrong. :)
---
 .../bindings/hwlock/qcom-hwspinlock.yaml          | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/hwlock/qcom-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/qcom-hwspinlock.yaml
index 1c7149f7d171..de98b961fb38 100644
--- a/Documentation/devicetree/bindings/hwlock/qcom-hwspinlock.yaml
+++ b/Documentation/devicetree/bindings/hwlock/qcom-hwspinlock.yaml
@@ -15,9 +15,18 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,sfpb-mutex
-      - qcom,tcsr-mutex
+    oneOf:
+      - enum:
+          - qcom,sfpb-mutex
+          - qcom,tcsr-mutex
+      - items:
+          - enum:
+              - qcom,apq8084-tcsr-mutex
+              - qcom,ipq6018-tcsr-mutex
+              - qcom,msm8226-tcsr-mutex
+              - qcom,msm8974-tcsr-mutex
+              - qcom,msm8994-tcsr-mutex
+          - const: qcom,tcsr-mutex
 
   reg:
     maxItems: 1
-- 
2.34.1

