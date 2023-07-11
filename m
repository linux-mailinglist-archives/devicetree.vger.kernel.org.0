Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B69574F2BD
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 16:52:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233044AbjGKOwC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 10:52:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232071AbjGKOwB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 10:52:01 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00EF5E6F
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 07:51:59 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b6b98ac328so89269181fa.0
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 07:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087118; x=1691679118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EEc51U6MUW0E9UDLNRvePLU7Tl7SvYWxn7zLkIXVfVA=;
        b=VXg3Fj6HcHgb6mr8PyDceNEdy8mX43xllqe5kkVbhx82v0bgoH2BQT4BkMWmVLXRgp
         SZ+MNreUm524yWnz9XhKq9VSjKR1cyMBDFVFQEaRiNMkF6pzmDTxnIR0cpKq/EKXoTP/
         Nadud5dFdDB/OO0S2q8Ivb1H7Z95TDUSsAs3uHHsJBGrbvD/KUk1mHrD6/aKnz6/CYxD
         mJ5iz5araTdRkY5G2Q7/oYUODVD7tp3/D2LzJVZXy1DwUiLTkGFQfqeu/XVIW/x1dmFm
         D19+eYCVU1Akdikif0JWr1nnbTPKcVAHJpCKs6AjBJffNqyGBANRlL/0PxWgwHqemSmd
         WnVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087118; x=1691679118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EEc51U6MUW0E9UDLNRvePLU7Tl7SvYWxn7zLkIXVfVA=;
        b=jVslh8VZYkWShdGZ75RQViM5LymuO+ocCgODvkN5gWRVbav+fYp09mI4LibldHFTTE
         jxuCHjz45deSFqqLBg5A8oa9Wj9jBuri7z9GE/ksQaxupsAY0dva3qp//8+0UX+rwvM/
         F0G7yHEvGT8aMLf1ADsGH8UPYi9TaQGdBAOTssUQ5Z5vpCzQFWwpRny+ySdoRhjyGHJ5
         tNSfLzAj4u5Td9Ge4d6ZNVNFPhDK9tco/KgA3ClYQT9Gqmqnxctq0OuDyslb8iRhSDre
         s600ZYZ7tQ/GgwLjun4fEzfHGhMzTUhIafb30cPC+p7NffACXni/5IwjeF+FcpMef5gC
         sNtA==
X-Gm-Message-State: ABy/qLbB9cCVDOB6w25Jqw14cnscbjYasjgOsuQu2yvc0HfLuf2BQ59p
        DV/ml6FEFuYy95ffqsidWyld5A==
X-Google-Smtp-Source: APBJJlFP/QyDtKSIps7oI3sqXWSrzmnWnhhlR5Txd1rlhvME1KkrGK11nFDAiNWRUoOmH33wkHjDQQ==
X-Received: by 2002:a2e:3317:0:b0:2b6:cb55:72bc with SMTP id d23-20020a2e3317000000b002b6cb5572bcmr13952300ljc.1.1689087118253;
        Tue, 11 Jul 2023 07:51:58 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:51:57 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v4 05/11] arm64: dts: qcom: sdm845: switch UFS QMP PHY to new style of bindings
Date:   Tue, 11 Jul 2023 17:51:47 +0300
Message-Id: <20230711145153.4167820-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 7cb9ee2765f7..30a63f4b19c4 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2575,7 +2575,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			power-domains = <&gcc UFS_PHY_GDSC>;
@@ -2621,10 +2621,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sdm845-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x18c>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
@@ -2632,16 +2630,9 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x108>,
-				      <0 0x01d87600 0 0x1e0>,
-				      <0 0x01d87c00 0 0x1dc>,
-				      <0 0x01d87800 0 0x108>,
-				      <0 0x01d87a00 0 0x1e0>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
+			status = "disabled";
 		};
 
 		cryptobam: dma-controller@1dc4000 {
-- 
2.39.2

