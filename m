Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC38F63F1C8
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 14:36:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231583AbiLANgp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 08:36:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231578AbiLANgo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 08:36:44 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D16AECA165
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 05:36:42 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id n1so1908533ljg.3
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 05:36:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EPqBNbI09YU2LloFC0dcS/pG8X7Q2MR4/7GlUmzvCcQ=;
        b=SHrlDQdE0KI2hz/+YPtMuVfc61pA79BaYszXXuNDdiNYHbd9jCYtty9SlGOP7E8MmM
         4jT55q8S5zsmQPNenf4iML9wCTTx8/itvlLyVkIg+lIrD4JBx2ohQNyJ3b0G4WiKwNvs
         Kzf7fzYT9RWmR345o9X/LbxWFFkPwkfiSV87Wod55JrXzSv0u+mkOPmyjYeKgZqnrPNw
         UQp/9ozmCjaSUHVIx3/sFwudkuXQLZY8o2Zbcso2x/nW3kyAYS4FViowfh34Y+AXKvOz
         bzmsPLvIpr4c4x+qekLldEfXspx5pduU+lw+pNwqWwZ1Dw1UrXyn/5xVt3ta164iiNns
         JdXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EPqBNbI09YU2LloFC0dcS/pG8X7Q2MR4/7GlUmzvCcQ=;
        b=qGBcOnw7mfLQ57njrnxqXtB+0Y0lM/ka8lrhZ0IXjQyqS4e3/unTsCODCXt/tEDlQA
         +ARff8TOY0dto1Xxpa6tZZUmeLgxYla8h5kVcjIq6jp0WxN0RGBWdcj+9XPFn3lRr+5W
         O1Mkd9BllV0EKnd3Xe/WdT8sMvVNQQOn8oREI1jLn9EBPo+VFo2iVydf6VzFczHkSj9U
         MKUBNfjkzzil9Y6uKKHLD/rx/kgTMZDUw4D9WP3YW4AGO4FTsV5beLttCeVxBOuWBB59
         3ZI0yuZVBMh6vTChcjjxnD+TbzZuEtyqlpSOCWhI9dOuBbU1OnAHruPc9vCSTRir9sVI
         zDlg==
X-Gm-Message-State: ANoB5pkNeKG0fgHPuZlSOgjCaTIemd15DZTxMCkAXzgrO2gJ/n6Y23mt
        X8t3Gtu58IaT32bVDQQHLFszCg==
X-Google-Smtp-Source: AA0mqf6iiQ5r3ydsCnjqQwKGheq2WsT2A75+y8RjMsycMyFRdssEX8qqHJP95PJ58rHz2mPDfV3sTA==
X-Received: by 2002:a2e:b4b7:0:b0:277:f86:ddc6 with SMTP id q23-20020a2eb4b7000000b002770f86ddc6mr21717691ljm.131.1669901801150;
        Thu, 01 Dec 2022 05:36:41 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q15-20020a2e914f000000b0027706d22878sm387209ljg.94.2022.12.01.05.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 05:36:40 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: soc: qcom: apr: document generic qcom,apr compatible
Date:   Thu,  1 Dec 2022 14:36:37 +0100
Message-Id: <20221201133637.46146-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Document the qcom,apr compatible, used by Qualcomm Asynchronous Packet
Router driver.  There are no upstream DTSes using this compatible -
instead we have ones with APRv2 (qcom,apr-v2).  The driver does not make
distinction between both compatibles, which raises the question whether
the compatible is really needed.  Document it (as compatible with v2)
for completeness.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
index 4209c6314996..a6bc3197d5dd 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
@@ -17,6 +17,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,apr
       - qcom,apr-v2
       - qcom,gpr
 
-- 
2.34.1

