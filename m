Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78A815EED84
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 08:05:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234891AbiI2GFT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 02:05:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233911AbiI2GFB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 02:05:01 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A25D4BC24
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 23:04:56 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id v1so389137plo.9
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 23:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=HerCVeEeEVRuoWPmPeo3XrTCORLU2x9PZu7uVHfJNts=;
        b=qH2UFHbxW/Tc5qAIMeCZwPYYSmKMAPRQkek8QF54aF4tzYfW/duQO1sN9kGkdozrwL
         jp81Kr7M1n6sO6OZBByBUY5w42ML49ZowIdQtzj14cDcGuEQgDo6Y0hUKdTKAUGHlc4s
         aAtcZg++JBOXXuEdyhDJvqDwIdPOFneza9YgKZB9NzfQR4eD4UeKKgpXai9QqRZuzsLA
         xjr2HJp+kS/mkWcZBNEj4/luqo2XsaD9VEwvo5+rtrqhUYrmgm6XHqgNk/MpQTqxECJG
         mi4sve2l8Wq9Ok18n4MKvTH6mbrkmXgqqV+tmjA1P3FS2AHDUWguM8rmN4+gRnyrOiQt
         5frQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=HerCVeEeEVRuoWPmPeo3XrTCORLU2x9PZu7uVHfJNts=;
        b=A6iKsW8dWJcomdtVkgK22QC8YP8K2AYpMIEDP2OkFPhaBqcfxBP6TuQN7Fbv5bFwny
         8F1tlybSfBNg6P66Z8NwgS+aGPZP9H46MgkwNneR9HSf+82L+3wcIVRi/b2Crlj4Jelx
         cz2VtCj5gDeZXyqFZMkjNH6PvB171/XpGHpZM07Eyq1EdUddnFIeW0PhurbbHSJfWtVo
         jLv0koplmDXw8igMdnHNnMrsv5nBxpZ8Bu363xHP7kWqFPCT3PD+V+CRwcAGjHWLIGVR
         XBBea4jAJJpMubAWEu5LLKCAJ0WDFwBdX7PxzN8yRLvq4ouzTNCGN86jKaUvx2q8tONi
         YS9Q==
X-Gm-Message-State: ACrzQf0TPoO1iH+Yl42cgK3jx+Ohg8+McypcWP8pQ+Bj+ULfUb30dN57
        MzIuB2X7pbpbHytZ3WAEPxW+usdYoRzUZg==
X-Google-Smtp-Source: AMsMyM6q/IDq6Ld+HftBnDjBzSVENdfXKdy32ZqWMObw1suKOdLyFu8RdfCHAE4Gx1Fv5GnghrsrtQ==
X-Received: by 2002:a17:90a:9747:b0:205:feff:7d6a with SMTP id i7-20020a17090a974700b00205feff7d6amr1887277pjw.131.1664431495088;
        Wed, 28 Sep 2022 23:04:55 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:3adb:24f8:ac24:2282:1dc7])
        by smtp.gmail.com with ESMTPSA id i1-20020aa796e1000000b00540c3b6f32fsm5037681pfq.49.2022.09.28.23.04.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 23:04:54 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-msm@vger.kernel.org, agross@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org, netdev@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Miller <davem@davemloft.net>
Subject: [PATCH v2 2/4] dt-bindings: net: snps,dwmac: Add Qualcomm Ethernet ETHQOS compatibles
Date:   Thu, 29 Sep 2022 11:34:03 +0530
Message-Id: <20220929060405.2445745-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220929060405.2445745-1-bhupesh.sharma@linaro.org>
References: <20220929060405.2445745-1-bhupesh.sharma@linaro.org>
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

Add Qualcomm Ethernet ETHQOS compatible checks
in snps,dwmac YAML binding document.

Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: David Miller <davem@davemloft.net>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/net/snps,dwmac.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 37f2ed3194de..35ce351a3d0c 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -65,6 +65,8 @@ properties:
         - ingenic,x2000-mac
         - loongson,ls2k-dwmac
         - loongson,ls7a-dwmac
+        - qcom,qcs404-ethqos
+        - qcom,sm8150-ethqos
         - renesas,r9a06g032-gmac
         - renesas,rzn1-gmac
         - rockchip,px30-gmac
@@ -384,6 +386,8 @@ allOf:
               - ingenic,x1600-mac
               - ingenic,x1830-mac
               - ingenic,x2000-mac
+              - qcom,qcs404-ethqos
+              - qcom,sm8150-ethqos
               - snps,dwmac-4.00
               - snps,dwmac-4.10a
               - snps,dwmac-4.20a
-- 
2.37.1

