Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F4F452EC25
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 14:33:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349353AbiETMdM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 08:33:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349321AbiETMdG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 08:33:06 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67E5C1649AC
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 05:33:04 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id br17so1758417lfb.2
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 05:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i/aIUrpsKDFkb2PtZyjpbDt+s3NhcE5u/+lbGK3NjUY=;
        b=iCJRdzkFT1ZubmdfYQd64C1TC5jdqGyIOgk4znR+Rovw/CpGrzVGQNhcJM1GnuEEPH
         r4SX9JbA0OJ7AqIjQcivfCcRsUutBX+y6RKkkbk/VmucoM89/i54Oh5OBN2NmcsI92ZV
         N0VmcFDXDbFqLRSlAoNs5lOSLLzC+aN2gR4rCYEdc9bezb+FPaVs5UbO9Vst67sshQHk
         rZ+YI70q1CchQHpQWRp4cY0ysXTG3JyMe+2s0XdqGNFo1EE31bqejc6ZSeEPcT1VaT3T
         8Vj4JuZXv8tKILaVpksGyGxGVeQP7NTLm91LIEBKnsRfdY+RENnoipm7DrPQzJ6jhraq
         ZPtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i/aIUrpsKDFkb2PtZyjpbDt+s3NhcE5u/+lbGK3NjUY=;
        b=6o12h429sEvQ1gPb1ClsDIf5yvnlSaUCiZXv3snST0cOhFZqWqyyS+TF9YItY4M/o0
         gA0LPhdtk+m2O/G+T2aPF2pG0hgGT4qU8da2Jit8Qi/rinlK1aBl2Shh10vTrcSAQCOs
         HmVm91xyemFCGkM82VfdUxlFNaHFfdiUKgh+1zdr+ZbxgAzd14wU3Exhqq/wjGBaX3rN
         sxUr8i0szUM/aIEPkV7KM+3xX+lW8zYwdSBI8nD5v5eCldbselMOnQGLGrbfpHg2POcH
         S/qt2PW2eMYaJ6KmFy36EsHtFB1anQrLdjEMIY+dE35etrFbEq65xUufTtAJB6Ake63K
         bqcw==
X-Gm-Message-State: AOAM532TO+T36hic8Bgd4HVFlqq9c6B7Xeds034JY5fdb+gfwl/J//xW
        wf3vho9BG/dKRYclU6oa0y3FFg==
X-Google-Smtp-Source: ABdhPJxs7ZiA8bXdf1OPj9XzEyRB83z5mMcZK6wof1lVFn1dYgGffzuCxvEOlE15k9wDlYNs/OzwxA==
X-Received: by 2002:a05:6512:3047:b0:473:cf43:6d8f with SMTP id b7-20020a056512304700b00473cf436d8fmr7157165lfb.380.1653049982540;
        Fri, 20 May 2022 05:33:02 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a14-20020a056512374e00b0047255d211bfsm643973lfs.238.2022.05.20.05.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 05:33:02 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        Vinod Koul <vkoul@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 6/9] dt-bindings: arm: qcom: add missing MSM8994 board compatibles
Date:   Fri, 20 May 2022 14:32:49 +0200
Message-Id: <20220520123252.365762-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220520123252.365762-1-krzysztof.kozlowski@linaro.org>
References: <20220520123252.365762-1-krzysztof.kozlowski@linaro.org>
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

Document several board compatibles already present in Linux kernel.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 71d857dcf6b6..a08f297c9d5d 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -182,6 +182,9 @@ properties:
 
       - items:
           - enum:
+              - huawei,angler
+              - microsoft,cityman
+              - sony,ivy-row
               - sony,karin-row
               - sony,satsuki-row
               - sony,sumire-row
-- 
2.32.0

