Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3ECD0748710
	for <lists+devicetree@lfdr.de>; Wed,  5 Jul 2023 16:59:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232846AbjGEO7Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 10:59:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232837AbjGEO7P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 10:59:15 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 136A91727
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 07:58:52 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9939fbb7191so158629866b.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 07:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688569128; x=1691161128;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d3B6kr7Lxcy3rhLGZetfRhn9zDBpmsrI8WaJOkcBkNE=;
        b=LmHh3M3PtlNIgcL/xhO+yn8V04hH55VsFohxdSqo63hZNjaV/hNkESYho2/9GAVEYg
         FTEGEcVPZ7v4lbDkGVlZjSyznPCxC/1ctJkNgIFBXR1AfqiUa3Xo3lvMvBF845Cu479U
         XYHLK0OdhVbEJjtG9cJlIQrZgnxpiPXDQZNV4AfmUyBqpHNxrjQkW8rjQ681VmxgJe/B
         m+REEuwrQAVAEI2qlcS/pt9Uq7A0SjT9Imw7Uo6JRK6Fvzd5cXRDnTin2zvQhaDX0Sib
         +jy5FXJanXJskBH9hMoqo8lhr5OMChgKWypTpvuLkdpo9paYyM+5tbRC4YOZT1N2PApr
         NSAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688569128; x=1691161128;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d3B6kr7Lxcy3rhLGZetfRhn9zDBpmsrI8WaJOkcBkNE=;
        b=k1nlpTWvjjJ6FW/XzbF1tp7vS45NvyfsMynLxv83lr06HjM1E6tAxa3cD9Y/PN94L0
         6nKE6dFQIIVLdjKG5dQOmsS1hVFBT/1t/WDDMOShgIFEM7Mna+ZO4BecuPlGI0Vaa3i2
         qKXsaDwql6dIQViwOHliholyi/IDwcz/JfN4JCbVxFbxBc5ivtaFYBH6JJozWoa3nELK
         FbctnMckAORWmCaLHV7ZOrPsvOrApkeFmP44lxHBjc5KQ4xnHZ8IZdlk3dR2hhoN+HK7
         k5Q4ErTBODYUvAbha4eiFVLpqRly59jPAlCZwbIako5O6THVwwL20JzNWKPQStaYnnIm
         TTbQ==
X-Gm-Message-State: ABy/qLYDzBNjACE2RkjHToc4IoY1uaj808VAXNnRauu/dpRryRsu9tVQ
        Q/y6EhIy2u0rOK/LfLLWyhugSA==
X-Google-Smtp-Source: APBJJlEpWcoYGPQDMPXmq2h9as+VXR3kNJPlbI9soc1LvbUD2tGcCmGsIYcyDn6K5cxGgAali2fFxQ==
X-Received: by 2002:a17:907:7296:b0:991:d414:d889 with SMTP id dt22-20020a170907729600b00991d414d889mr2085671ejc.15.1688569128539;
        Wed, 05 Jul 2023 07:58:48 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id l23-20020a170906939700b00993a508b818sm733421ejx.1.2023.07.05.07.58.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 07:58:48 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: sprd: add missing space before {
Date:   Wed,  5 Jul 2023 16:58:44 +0200
Message-Id: <20230705145844.293112-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing whitespace between node name/label and opening {.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/sprd/sc9860.dtsi      | 2 +-
 arch/arm64/boot/dts/sprd/sp9860g-1h10.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/sprd/sc9860.dtsi b/arch/arm64/boot/dts/sprd/sc9860.dtsi
index e27eb3ed1d47..2b8867fad285 100644
--- a/arch/arm64/boot/dts/sprd/sc9860.dtsi
+++ b/arch/arm64/boot/dts/sprd/sc9860.dtsi
@@ -113,7 +113,7 @@ CPU7: cpu@530103 {
 		};
 	};
 
-	idle-states{
+	idle-states {
 		entry-method = "psci";
 
 		CORE_PD: core_pd {
diff --git a/arch/arm64/boot/dts/sprd/sp9860g-1h10.dts b/arch/arm64/boot/dts/sprd/sp9860g-1h10.dts
index 6b95fd94cee3..de468189a4fb 100644
--- a/arch/arm64/boot/dts/sprd/sp9860g-1h10.dts
+++ b/arch/arm64/boot/dts/sprd/sp9860g-1h10.dts
@@ -24,7 +24,7 @@ aliases {
 		spi0 = &adi_bus;
 	};
 
-	memory{
+	memory {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0 0x60000000>,
 		      <0x1 0x80000000 0 0x60000000>;
-- 
2.34.1

