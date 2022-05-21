Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9014052FE62
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 18:48:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355415AbiEUQq1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 12:46:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354568AbiEUQqD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 12:46:03 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BCC99FD8
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 09:45:57 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id bq30so19049156lfb.3
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 09:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1r3MzwauWaIoVC/t9Wof1eR9vYn35tgHkPRT49zGfzo=;
        b=sCHVNtCoKG9ycNG1dhogT1zgnQRWB7XJKz//JHBgx/BMw0ckGEio0t3JIG32fw+kSg
         m4sSBahBcu0HNsrLzaCRJI3oPX7Y9K/NB2/rKZhkSGE98Z/If7gzeyy3uGDmrw8dBrjR
         LO63MeQxyBZY6DzNI7sMVdc/Qv/tJE3SAeXEYFqqWhe5L632ZgUJm7Y84xA/Tx6Byy2F
         1jm0l+gdHLhhb//hQw7+VKiXIsDRGBRhOguxl1CUAcaGC+vDojUFWAAkxHIvz6fYn2Uq
         RcwHJziuwVO/TkmuJj2uQh3WB/31P2ZHEtfJT6EohdaFJ1Er65IK9OFLqfEmG8eoptsV
         LDGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1r3MzwauWaIoVC/t9Wof1eR9vYn35tgHkPRT49zGfzo=;
        b=Ugyh2FlSt4zPwskbahxau/SksGeTSR3/q4/AOfqd8og0jH8BfgsS3Lty889Mq3LorK
         IWj7/uRJdlea/u1paZblDwrSQWwR9eZYgPKNI61ZBVh9fFHSEzBMf6wwCwK6QEHq0jXd
         Yf4CcDXx0JGKkigrEbgAjmoPsPFnxhthaG6rgP+u/OxobCpr7eiVxo+Fe8P11eGwt7AD
         H0At/B022uWnTFft5JDEFnrQ8K8Lz/IdO3ZKac9cbolSU22oCeT5cTWW1exSJ736zeWV
         tUsnBF6zXJBSFq8ILzn2yS0cWklUkAMaDChzHtWVyiuChmxbfuE9fk2v7GDglJzDn+0K
         T2lA==
X-Gm-Message-State: AOAM53398ThUilhVG6OLupdSVdeav76jg9rQ95X20+a5RqcJgq5FWYw1
        rXeqVY0yh+64h5IFlNmXvDKsHA==
X-Google-Smtp-Source: ABdhPJwursX+MKBrp1X/wkjHzxSZ6f+7LunSU5KhOnba6G12GCFM6N124n4nk0MQNSXgpR5qMrU1Sg==
X-Received: by 2002:a05:6512:746:b0:477:ca80:f369 with SMTP id c6-20020a056512074600b00477ca80f369mr9253392lfs.467.1653151555902;
        Sat, 21 May 2022 09:45:55 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f26-20020a19ae1a000000b0047255d211cesm1114282lfc.253.2022.05.21.09.45.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 09:45:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 03/12] dt-bindings: arm: qcom: add missing MSM8992 board compatibles
Date:   Sat, 21 May 2022 18:45:41 +0200
Message-Id: <20220521164550.91115-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220521164550.91115-1-krzysztof.kozlowski@linaro.org>
References: <20220521164550.91115-1-krzysztof.kozlowski@linaro.org>
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

Document board compatibles already present in Linux kernel.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index ac995de501e7..7a6e098c5670 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -176,6 +176,13 @@ properties:
           - const: qcom,msm8916-v1-qrd/9-v1
           - const: qcom,msm8916
 
+      - items:
+          - enum:
+              - lg,bullhead
+              - microsoft,talkman
+              - xiaomi,libra
+          - const: qcom,msm8992
+
       - items:
           - enum:
               - sony,karin_windy
-- 
2.32.0

