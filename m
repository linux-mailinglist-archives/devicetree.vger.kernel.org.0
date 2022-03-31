Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D64674EDDFF
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 17:54:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239355AbiCaP4V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 11:56:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239372AbiCaP4V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 11:56:21 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D12989CFD
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 08:54:33 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id yy13so294765ejb.2
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 08:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oeY2VwpzFpq+ahpdKff0SvoKtIxVNW39tqhBA+XG7Pw=;
        b=MJaMUe/qk1yjvbCPQ3Q772bMz2lvQP82/qsJ9wOFrzbbEd8YtiNmq+mJCHWvYiRcn7
         /glNg+V1E18tiftfxtU2Mwaqz6EPl6zucFqo4Vtv/e641N1JbzuMDveldWn5RDT+Bnci
         OaMsxZpqIIwrO+xT2GmoRYsIBUUH8CviF/01OLw9kLLFWJOlYPkZebZWMzupzofwqDPG
         eDU4/ClQHf1BdOP0DWO0pfoE6nPHuYZD6Nqc/fGwS7vufkf+5T0PVmKQsuOWRZeg+YPe
         l571+rdhqUelnaGyZ62oKBFeFCtxexSuc0TY4Ce68pw7RmPggF46Q8pqGdY3CpByBc6G
         qSrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oeY2VwpzFpq+ahpdKff0SvoKtIxVNW39tqhBA+XG7Pw=;
        b=z+rttAuQRxbPMX9wr6foRzQ6aWs/bOUezPL3j2zl2Gis8zREcdDW8I05MdzH53t6qJ
         1aIivTNYx/PIoiPSl9C/PYvDUwYEn9bKrDBX3Ky3oog6zBxpNrSA10VtNxl59IlQhv+J
         NrlSs3XPEh6QoOGovI0aMNl2s1gr+wm1k9ggvqsIbyMy2+JGLbpE63aPcU1u+2qP4NMK
         N/ZGm4a4G+yYXhAeQcFPLgQrweFdAdRUq2DwWvWC8Xxw/0RgZqWV1m1ZY5llOgjEiHAk
         sAn50H6qa65BOcFoIpm3FB1ln66fz6JxMIXgl8wm9UsV1/gV2dOWGzziMZaNHF4T9dT5
         HnDA==
X-Gm-Message-State: AOAM532r4lS6mWrn2ybvjv8wi2DaMc2lUsEgqJk/AOuyO+oMNnfOaJAt
        frGGHdKnZNw2rflRs5fJYA8rSw==
X-Google-Smtp-Source: ABdhPJyXRh/6gAuPw0hxbQ4ICnzBwAKYOmY9mCFfwJ1sp9IpmF7sj3LjBeuqSbJFPnE6GHMoOwqDuA==
X-Received: by 2002:a17:907:6e03:b0:6e0:15ce:77ba with SMTP id sd3-20020a1709076e0300b006e015ce77bamr5564247ejc.67.1648742071348;
        Thu, 31 Mar 2022 08:54:31 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id g10-20020a056402090a00b004196250baeasm11584077edz.95.2022.03.31.08.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 08:54:30 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org
Cc:     Kuldeep Singh <singh.kuldeep87k@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/4] arm64: dts: qcom: msm8916: align dmas in SPI with DT schema
Date:   Thu, 31 Mar 2022 17:54:23 +0200
Message-Id: <20220331155425.714946-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220331155320.714754-1-krzysztof.kozlowski@linaro.org>
References: <20220331155320.714754-1-krzysztof.kozlowski@linaro.org>
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

The DT schema expects dma channels in tx-rx order.  No functional
change.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index e34963505e07..6e5e7883c747 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1529,8 +1529,8 @@ blsp_spi1: spi@78b5000 {
 			clocks = <&gcc GCC_BLSP1_QUP1_SPI_APPS_CLK>,
 				 <&gcc GCC_BLSP1_AHB_CLK>;
 			clock-names = "core", "iface";
-			dmas = <&blsp_dma 5>, <&blsp_dma 4>;
-			dma-names = "rx", "tx";
+			dmas = <&blsp_dma 4>, <&blsp_dma 5>;
+			dma-names = "tx", "rx";
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&spi1_default>;
 			pinctrl-1 = <&spi1_sleep>;
@@ -1561,8 +1561,8 @@ blsp_spi2: spi@78b6000 {
 			clocks = <&gcc GCC_BLSP1_QUP2_SPI_APPS_CLK>,
 				 <&gcc GCC_BLSP1_AHB_CLK>;
 			clock-names = "core", "iface";
-			dmas = <&blsp_dma 7>, <&blsp_dma 6>;
-			dma-names = "rx", "tx";
+			dmas = <&blsp_dma 6>, <&blsp_dma 7>;
+			dma-names = "tx", "rx";
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&spi2_default>;
 			pinctrl-1 = <&spi2_sleep>;
@@ -1593,8 +1593,8 @@ blsp_spi3: spi@78b7000 {
 			clocks = <&gcc GCC_BLSP1_QUP3_SPI_APPS_CLK>,
 				 <&gcc GCC_BLSP1_AHB_CLK>;
 			clock-names = "core", "iface";
-			dmas = <&blsp_dma 9>, <&blsp_dma 8>;
-			dma-names = "rx", "tx";
+			dmas = <&blsp_dma 8>, <&blsp_dma 9>;
+			dma-names = "tx", "rx";
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&spi3_default>;
 			pinctrl-1 = <&spi3_sleep>;
@@ -1625,8 +1625,8 @@ blsp_spi4: spi@78b8000 {
 			clocks = <&gcc GCC_BLSP1_QUP4_SPI_APPS_CLK>,
 				 <&gcc GCC_BLSP1_AHB_CLK>;
 			clock-names = "core", "iface";
-			dmas = <&blsp_dma 11>, <&blsp_dma 10>;
-			dma-names = "rx", "tx";
+			dmas = <&blsp_dma 10>, <&blsp_dma 11>;
+			dma-names = "tx", "rx";
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&spi4_default>;
 			pinctrl-1 = <&spi4_sleep>;
@@ -1657,8 +1657,8 @@ blsp_spi5: spi@78b9000 {
 			clocks = <&gcc GCC_BLSP1_QUP5_SPI_APPS_CLK>,
 				 <&gcc GCC_BLSP1_AHB_CLK>;
 			clock-names = "core", "iface";
-			dmas = <&blsp_dma 13>, <&blsp_dma 12>;
-			dma-names = "rx", "tx";
+			dmas = <&blsp_dma 12>, <&blsp_dma 13>;
+			dma-names = "tx", "rx";
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&spi5_default>;
 			pinctrl-1 = <&spi5_sleep>;
@@ -1689,8 +1689,8 @@ blsp_spi6: spi@78ba000 {
 			clocks = <&gcc GCC_BLSP1_QUP6_SPI_APPS_CLK>,
 				 <&gcc GCC_BLSP1_AHB_CLK>;
 			clock-names = "core", "iface";
-			dmas = <&blsp_dma 15>, <&blsp_dma 14>;
-			dma-names = "rx", "tx";
+			dmas = <&blsp_dma 14>, <&blsp_dma 15>;
+			dma-names = "tx", "rx";
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&spi6_default>;
 			pinctrl-1 = <&spi6_sleep>;
-- 
2.32.0

