Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 528B167EE17
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 20:21:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232935AbjA0TVq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 14:21:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232132AbjA0TVo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 14:21:44 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C94BB7B79A
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 11:21:42 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id e19-20020a05600c439300b003db1cac0c1fso6044364wmn.5
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 11:21:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=am7T/jMJPDKlVlAlmog486rwt56SKaL1/RHw4+B1xi4=;
        b=CNyxn1WT2iL7fR5KpGpcObiAMoxvq3kkOO/liNiZRXdikTzdwIzWMA+FPp0trR9jUW
         0N6x6pDGy4RP08YSyPlwkNdLosrx6mJl47Nh+u+Wfxi+K1CaolHS8OiCj3K3as7JrQIO
         G39WJ4TJh0ugTLq5RncrXxTbFI6VgDZVI4BUTtWDladvmIVHUfxeZNclLCLjt5SHBD/z
         V1l1qktLYgxvPtneBTIBwY7ohleZIcHzsTAZyrJk/jjiEGWY1uLgTNxbAW8odWOBTfU9
         zGW/eDQ2cLiPTEK58gqpK/9WGK+4yf95ilHj7lp2qs0ORUWaNi21jFi9f2Mq5TPA+W3q
         reDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=am7T/jMJPDKlVlAlmog486rwt56SKaL1/RHw4+B1xi4=;
        b=FQYxdJMChYRW42JU+ndWYTS4BzKgPyYy9m5BsaIiMMJ2OAkqEGuBb6fg1IYjydK3fa
         foO8K5r7bA0jOWflaT68zqbp1IViar+TIM27sjEDBqn8KJg0Pfwn8pOHgb1iZJY9wb5B
         9y64zzWJs8isemkwn4OzFvXYxmXUlD3eAX+3YhLZWThRAMXkKBupxLE23Tx3yLktYUsp
         JcdC1FogFD3+Ps2Hl2M7YH78b3lCLlqqaJVPnmHJG8krpc4D69hQ+D+B4HXnZ8I/U1+R
         ubafFofGOETgR4XhcvTkySu+w4Yh69nGNP+TOYHNaYrb0weLc8GXWSAZAbd4h3m+rAbA
         1QUQ==
X-Gm-Message-State: AO0yUKUKNvAs0AaInw6So1O09DnrFbg6eNvjISbwmxVRrcSKplXyI+l1
        QhJUlBBifKZZ37spPyYiCjN7Ww==
X-Google-Smtp-Source: AK7set8R7E/Nw6npvADSfuUxvM2mH8WhXpk7uaWrPp7FTXTQRl7GSnOhn4oiyOIncOFkEQfq8aTkWw==
X-Received: by 2002:a05:600c:1994:b0:3dc:43cf:7302 with SMTP id t20-20020a05600c199400b003dc43cf7302mr661057wmq.3.1674847301391;
        Fri, 27 Jan 2023 11:21:41 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:624:f1a4:edb9:78d5])
        by smtp.gmail.com with ESMTPSA id v6-20020a05600c444600b003db09692364sm9625479wmn.11.2023.01.27.11.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 11:21:40 -0800 (PST)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH] dt-bindings: firmware: qcom,scm: add qcom,scm-sa8775p compatible
Date:   Fri, 27 Jan 2023 20:21:39 +0100
Message-Id: <20230127192139.299228-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add a compatible for the sa8775p platform's Secure Channel Manager
firmware interface.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
index 4193492ba73e..fd3c787e44a8 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
@@ -39,6 +39,7 @@ properties:
           - qcom,scm-msm8996
           - qcom,scm-msm8998
           - qcom,scm-qdu1000
+          - qcom,scm-sa8775p
           - qcom,scm-sc7180
           - qcom,scm-sc7280
           - qcom,scm-sc8280xp
-- 
2.37.2

