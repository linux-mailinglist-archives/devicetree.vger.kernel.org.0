Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B21AF647707
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 21:14:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229848AbiLHUOQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 15:14:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbiLHUOP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 15:14:15 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3841978B99
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 12:14:13 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id b13so3749128lfo.3
        for <devicetree@vger.kernel.org>; Thu, 08 Dec 2022 12:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aozzPFqxRd+oMbTAlLocE9rL6FXuVwfCXNIHq2pDgcY=;
        b=jDmlVTdDgbZ5hnOclf4N+kR/pg1eGlq3IMik8b8pugkFIeufZ8/JQJMjgZAPVyiXuh
         AoJI4ceKDkKTlOAQJyrvPvq1oTcB9ajO95h+5JDeLBqEtdcuyjXJAv7SDcL7OBxJYNRE
         6A7jc07rcPW4l3Ho0An+uJwlNKj1polmGQbHXZ6Tmwx3egfP0CVtan7eeNwTEfkO9ZTa
         mrEqA+/HOWK69YyWS1yRyOU+YLaNkaJtDA9dJsBxQL3wDC7SoLBFJOLiLdCJyj5vPaKx
         de/QA4CnK7taNVzfFkugS4s0EqymnxdhaBwFdgH2SEFUnZim0957z0+vZMCDarO5mswn
         367A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aozzPFqxRd+oMbTAlLocE9rL6FXuVwfCXNIHq2pDgcY=;
        b=wAbOhr2OPySQwY5pUwaVYg5eA2Qyc84MNIWmU4KhVz837yGAictwPeMLQRgusJ284k
         doMYAANeHX2zmM9UklzEA+6PPU6Sv/+wBwMI4nj6sJrYSGDGfclbI0J5ip5hJMRIKlgV
         SlevnsbC+C2GxEhj371EDwgeMhADHPSbaR8aP0Zcra7RHdGjFnRGlbOjcYyZdjcQFONL
         2/hyjdIiGK679u9jMpHOFZTdJlBhpEagbulV1y5Ecp1CzgQ/EGsidzkWBSe9sYybrl7b
         fYIYme9bG/FqVVNeqhyGAm4COjNbKvnGw7nH71JOzwZ8tCTDxuhpBRW608gEpNKI+kNe
         d+tw==
X-Gm-Message-State: ANoB5pnB+YsJof7nULAf7r0WgIpqoBLFOdQhc63R1Wzest6aD0yP3wSz
        7gVkjcW4C3+oK5inxh0alUWAlQ==
X-Google-Smtp-Source: AA0mqf5D7Qg3EYj900Derv/cKhequGAmhDfRRhQ1+xvMnYj/WncUyjBmNq5j4oGNM/T5a1/qb68S0g==
X-Received: by 2002:a05:6512:2015:b0:4b5:9dc4:e783 with SMTP id a21-20020a056512201500b004b59dc4e783mr960470lfb.568.1670530451603;
        Thu, 08 Dec 2022 12:14:11 -0800 (PST)
Received: from localhost.localdomain (95.49.125.53.neoplus.adsl.tpnet.pl. [95.49.125.53])
        by smtp.gmail.com with ESMTPSA id bi35-20020a0565120ea300b004ac6a444b26sm3466428lfb.141.2022.12.08.12.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Dec 2022 12:14:11 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Iskren Chernev <me@iskren.info>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] arm64: dts: qcom: sm6115: Fix UFS node
Date:   Thu,  8 Dec 2022 21:13:57 +0100
Message-Id: <20221208201401.530555-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In its current form, UFS did not even probe successfully - it failed
when trying to set XO (ref_clk) to 300 MHz instead of doing so to
the ICE clk. Moreover, the missing reg-names prevented ICE from
working or being discovered at all. Fix both of these issues.

As a sidenote, the log reveals that this SoC uses UFS ICE v3.1.0.

Fixes: 97e563bf5ba1 ("arm64: dts: qcom: sm6115: Add basic soc dtsi")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 572bf04adf90..3f4017bc667d 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -704,6 +704,7 @@ opp-202000000 {
 		ufs_mem_hc: ufs@4804000 {
 			compatible = "qcom,sm6115-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
 			reg = <0x04804000 0x3000>, <0x04810000 0x8000>;
+			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 356 IRQ_TYPE_LEVEL_HIGH>;
 			phys = <&ufs_mem_phy_lanes>;
 			phy-names = "ufsphy";
@@ -736,10 +737,10 @@ ufs_mem_hc: ufs@4804000 {
 					<0 0>,
 					<0 0>,
 					<37500000 150000000>,
-					<75000000 300000000>,
 					<0 0>,
 					<0 0>,
-					<0 0>;
+					<0 0>,
+					<75000000 300000000>;
 
 			status = "disabled";
 		};
-- 
2.38.1

