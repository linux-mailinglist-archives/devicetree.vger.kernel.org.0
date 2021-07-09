Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8A5E3C2869
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 19:32:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229707AbhGIRe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 13:34:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230180AbhGIRez (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 13:34:55 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE9E4C06178A
        for <devicetree@vger.kernel.org>; Fri,  9 Jul 2021 10:32:09 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id u18so14981982lfl.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jul 2021 10:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lQik2DiDxCRZSgw55nEoC87xQcPQoKmEJ4pXz+846Ts=;
        b=N/R8Nw5EJeAHahExbU8g3SxQB6VyXusLDg9qaxzGll7OH7iFnhpj8tUEX1P2eT/pZy
         IT/w1iJuj2Tpke4ZHHHtd6dXUJZ4zXRAwVZWJvVWvCbA3QFeK/PZpFgtW2dU8EgiWO8I
         ZATV/qbZeH+ZUjnpfZ+UV4/Q5LDgdlMTIWvMCj2EvRQclxuJra28IDiBARb6xPhtplQj
         oufa4l6UdHcIMxS86Z/XHYjdh7XjSoqCrOvqy+6Jpcm9iPwKIb+2WCqfTR7+EObJym9l
         ivZ8eNfsuzYDSAVzp06gyimTo15IdO6q28S/Rz1C/UNRj4HaM7RHCZnK6799MJI7bjZS
         C09g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lQik2DiDxCRZSgw55nEoC87xQcPQoKmEJ4pXz+846Ts=;
        b=KQ4XH1jKH7JJchH4uNa7wAYyG9bIJXZxVsHVfIx9cx/cvrpAYdPhwrcdEy4sgVEYIB
         eu7BS3jaqinrBORiTxuoEGPSkhPbZ6xdFu4omfLNEn+ZIN9NjEdyICGrThOK4Y2ayOSR
         3miBHaq/XkfyOa1/STUyvSaXU+Ctsuob/CQz1zWqohu681Y1uiSr8Dgq4p8DxCowkt3t
         KxpuEMeg/nV34pTCWa4mpxwJUiRBjuweoP70aHRC2eQf+RVs88bNWH0/REH5DEnL0Bwv
         eUsRh5A8l5MSGve18WN0ip2R1VCM5DL/3l1DwdgWX92eXiyjWs+HchwD1MbkcvNt7Ww3
         gVZA==
X-Gm-Message-State: AOAM530N//DLvYYZFXXDPdsiiD+tU5rgUnXALVKkicTILcmfG5jUS5Lj
        kZB2ZeOrRp+lUw370HCtWbFgYQ==
X-Google-Smtp-Source: ABdhPJyPJe/C4rOLGJIz65j8fXup5YIWmX6b+tAarjh8Ktq3o5rma7Hb0KvayG/IAI+1tthl61NX0Q==
X-Received: by 2002:a05:6512:3295:: with SMTP id p21mr29957449lfe.338.1625851928167;
        Fri, 09 Jul 2021 10:32:08 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b14sm511129lfb.132.2021.07.09.10.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jul 2021 10:32:07 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/7] arm64: dts: qcom: sm8250: remove mmcx regulator
Date:   Fri,  9 Jul 2021 20:32:00 +0300
Message-Id: <20210709173202.667820-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210709173202.667820-1-dmitry.baryshkov@linaro.org>
References: <20210709173202.667820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Switch dispcc and videocc into using MMCX domain directly. Drop the now
unused mmcx regulator.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 4c0de12aaba6..2a468b85dc09 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -271,13 +271,6 @@ memory@80000000 {
 		reg = <0x0 0x80000000 0x0 0x0>;
 	};
 
-	mmcx_reg: mmcx-reg {
-		compatible = "regulator-fixed-domain";
-		power-domains = <&rpmhpd SM8250_MMCX>;
-		required-opps = <&rpmhpd_opp_low_svs>;
-		regulator-name = "MMCX";
-	};
-
 	pmu {
 		compatible = "arm,armv8-pmuv3";
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
@@ -2362,7 +2355,7 @@ videocc: clock-controller@abf0000 {
 			clocks = <&gcc GCC_VIDEO_AHB_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK_A>;
-			mmcx-supply = <&mmcx_reg>;
+			power-domains = <&rpmhpd SM8250_MMCX>;
 			clock-names = "iface", "bi_tcxo", "bi_tcxo_ao";
 			#clock-cells = <1>;
 			#reset-cells = <1>;
@@ -2627,7 +2620,7 @@ opp-358000000 {
 		dispcc: clock-controller@af00000 {
 			compatible = "qcom,sm8250-dispcc";
 			reg = <0 0x0af00000 0 0x10000>;
-			mmcx-supply = <&mmcx_reg>;
+			power-domains = <&rpmhpd SM8250_MMCX>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&dsi0_phy 0>,
 				 <&dsi0_phy 1>,
-- 
2.30.2

