Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D39E3C1D0F
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 03:31:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230436AbhGIBdi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jul 2021 21:33:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230385AbhGIBdg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jul 2021 21:33:36 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18E63C061764
        for <devicetree@vger.kernel.org>; Thu,  8 Jul 2021 18:30:53 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id p16so20010492lfc.5
        for <devicetree@vger.kernel.org>; Thu, 08 Jul 2021 18:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lQik2DiDxCRZSgw55nEoC87xQcPQoKmEJ4pXz+846Ts=;
        b=Vvn7xfp/i6tzTdBjRg4q4hkQrI5vAlJtd542sc1SnDneVWbxGp0Q6D4BiURKBIRrph
         39EnnYZXl2keLaFTkd3REZGtpgvLFBMRDQnQFvF5PRyF9s85oRC+VT8pZTzV4B/1KPaH
         TG5HpoFc1yJG76mGR8NLZaXCxcs5ydxRPRsKnLjb/7SL4BcDRGIHB0Nea3Yb+s3f5zTY
         ZYR5emnAR85K5J/oTb3pS5Yo9lw9N55LTomd4uzL8nOHWX2C9KDuujncRH0bCiz8Tpdz
         4adWuyeVRWZYG6+nGdMNKForDKr0JJ2L0vLQXa2Mrsokxw8BTdrNugKu/PlUnr0d6PtM
         7WJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lQik2DiDxCRZSgw55nEoC87xQcPQoKmEJ4pXz+846Ts=;
        b=DLDYD1PXF6aswrxCaVRXH/Z8kELWxyeXJse9x0b3Bd20M7Bp/EJPZHYcwIuoIsGqQu
         xW3Gm7ndxpQ3r6wuEptDk9auGkO686IDQ1vI3def9E1OhzTfAbGUXZubUkm9lMxvsP53
         X+etCtHLmv25NFoWD0xAlMdiKM53QuJvongO8fUGIiNJiOiWYx+n8QspP7oyvAY1o8Q6
         WPavLfUzS7quV3EBnF9lIrqkWspISIG5p0tfyJqIs5lfl2PLcO3wzw7sXlvfVcWcZKlY
         4F1pPATWJosptMtV0NUYbDNoXHus8Jgo+zbhHR9cpDy84kujE376Z/A8nu7gn2m0Zl8n
         XTtA==
X-Gm-Message-State: AOAM530cqakXOiLdKGTFkbql3pKTcvugZDHG/D5zJEvdSGtc2iF6xn7s
        cMYpS2MyhUdYqA/KDiI4gT5RGQ==
X-Google-Smtp-Source: ABdhPJwQJqxBZXp8ON7DxXSc+GUdT3tYpLXQKuSw/TWxa+82eSulzlY7niZiGl+0tIbKjxkk1hbBbw==
X-Received: by 2002:ac2:4c55:: with SMTP id o21mr22983322lfk.122.1625794251485;
        Thu, 08 Jul 2021 18:30:51 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u16sm405637ljj.113.2021.07.08.18.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jul 2021 18:30:51 -0700 (PDT)
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
Subject: [PATCH v2 5/7] arm64: dts: qcom: sm8250: remove mmcx regulator
Date:   Fri,  9 Jul 2021 04:30:41 +0300
Message-Id: <20210709013043.495233-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210709013043.495233-1-dmitry.baryshkov@linaro.org>
References: <20210709013043.495233-1-dmitry.baryshkov@linaro.org>
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

