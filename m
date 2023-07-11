Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30F7174F2C0
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 16:52:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232894AbjGKOwD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 10:52:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233050AbjGKOwC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 10:52:02 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F133910CF
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 07:52:00 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b703a0453fso91618511fa.3
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 07:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087119; x=1691679119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4TP85Sw52C7H7s8rcI4zy2XyYLS/5Z/UH1XDKXoCVO4=;
        b=UsHxGAH/Iaq+RcqvBtK+sBkQDtT1XhL7x+ZYGpxawd2B4tMabt1ncRpi7uRF34RTT+
         l3UMJ1gUpPdhU9iRJbMxjZAU/YEHLtJhk3GnKCkjognmo7DLCkRYx5t81pa8qprmYIDU
         9CQ858StoM1Vo+0AoZq/+2VtCnh0Cf4UIxsESTBcFsP6zdgxguYusI9whXFXEeisF5EI
         yLWpP2R2S1TWuX1DFW4iTfrZ8Ygr37CWRySuOmsq3ZSbBL3/cdIgzhL6h6TZAue/olQT
         9XWpMGDl5D+O1gQA0jne0jDAIuiwXr66PqGEWDj2LCX+2oxMSetoCCWgbA72fMh0e6JV
         TBDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087119; x=1691679119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4TP85Sw52C7H7s8rcI4zy2XyYLS/5Z/UH1XDKXoCVO4=;
        b=HntALqiECcx3S61MLoHhBUA5A7C/K0cp9TmFi3F/vMua4UOrPgZDiZMWjSGA/FK15E
         6fTb0CPTXUJnUaJPD1guxhncis4t8iKCgopRtUlxiWBwMEXqMcFnnhcstRIfzLBxPPTn
         tX8Hm+GAM8YbqtsVRl86VI8KSlgJxRiocvnGerybKdRux+bwsn5+sTTHnX5HXSP7tNvn
         XjFrMGHcsd1CVytaJDAuwG6QNW5ahifAQl/kkoy0H4BBBTwWEgK5FB4FxzBwVw8HEd1O
         Oaa2l1p7tDMP7Z5q5GzH8jDhQ9OwXb7sUwTS9DpAP+NQvICLRE9zuTE2FnBJ2VJvJAYg
         btJA==
X-Gm-Message-State: ABy/qLbluUMJ1RxNRpOCOPH9CHq3oXaoaVkII5Kz0yHwO7sVw5k6EAM6
        14ZOQLu7Ma70PCWu0EqhdnV8Hw==
X-Google-Smtp-Source: APBJJlHpl5PumBOs1mrv+4Zmv/il64KVeVC+wtC9GZma7JCd4jBp9YeEJ+i3cS14nOKaw25q7kNr2Q==
X-Received: by 2002:a2e:7a06:0:b0:2b6:bd82:80b1 with SMTP id v6-20020a2e7a06000000b002b6bd8280b1mr14235518ljc.37.1689087119027;
        Tue, 11 Jul 2023 07:51:59 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:51:58 -0700 (PDT)
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
Subject: [PATCH v4 06/11] arm64: dts: qcom: sm6115: switch UFS QMP PHY to new style of bindings
Date:   Tue, 11 Jul 2023 17:51:48 +0300
Message-Id: <20230711145153.4167820-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
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
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 9f2c968e3ad7..0adbc827ee1b 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -983,7 +983,7 @@ ufs_mem_hc: ufs@4804000 {
 			reg = <0x0 0x04804000 0x0 0x3000>, <0x0 0x04810000 0x0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <1>;
 			#reset-cells = <1>;
@@ -1024,24 +1024,17 @@ ufs_mem_hc: ufs@4804000 {
 
 		ufs_mem_phy: phy@4807000 {
 			compatible = "qcom,sm6115-qmp-ufs-phy";
-			reg = <0x0 0x04807000 0x0 0x1c4>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0x0 0x04807000 0x0 0x1000>;
 
 			clocks = <&gcc GCC_UFS_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
 			clock-names = "ref", "ref_aux";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@4807400 {
-				reg = <0x0 0x04807400 0x0 0x098>,
-				      <0x0 0x04807600 0x0 0x130>,
-				      <0x0 0x04807c00 0x0 0x16c>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		gpi_dma0: dma-controller@4a00000 {
-- 
2.39.2

