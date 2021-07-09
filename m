Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 467B63C1E5E
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 06:31:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229765AbhGIEec (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 00:34:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231234AbhGIEe2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 00:34:28 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 984DEC061766
        for <devicetree@vger.kernel.org>; Thu,  8 Jul 2021 21:31:44 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id r20so5928248ljd.10
        for <devicetree@vger.kernel.org>; Thu, 08 Jul 2021 21:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lQik2DiDxCRZSgw55nEoC87xQcPQoKmEJ4pXz+846Ts=;
        b=aSFAi4bjjkr02VJzD7+MFneSapjA/FlWVvLGLKh4lC+r6q+9Z4KIYlxSOTLsnDnP0Z
         sdcHHMOMyzuGvkcrFwwzIUeBCKa/wThZdfSMkQGgobBf7SjsVk4umvzrWqUBLyZskCFL
         F4VS3lNPjueMj5STcF0koXJp1IdZEPj+d5/7bdeX9taBRv9V4Jlp/evf2ODxNI195wyv
         wotIQtdMWrvW6C8b3g8nwszZVWI6vieROLoVtb3oi5fLLEHONW78UNrnzOIHkbYwJl+F
         Uw8P9BW+3Eits5ieyCGS2oK52WY2P6A36xuASIqd9yugtrQFS5HoHbeiRGTlgx+HJZ96
         brwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lQik2DiDxCRZSgw55nEoC87xQcPQoKmEJ4pXz+846Ts=;
        b=iTBpXnLRtKTpaT2O90R0nBcsYot9/5MFZL2zYwuEYOJaZsKA+iZQt+JeNFKHanM2/I
         SA0djoPWxK4mph67nR+uUs9vWdkT870V7aJS79npGcY+HhEYU376XDPpdqEbo8ZF5q06
         jk7YJmcfDAEQMmlB1qWdo+gB2q5SkRwZsRQbIqsgMansR4j0vmSYL4RB6ohB4t5YMf4J
         ZEW2UtGD3mfnr3kKMMIyzcK2lkAWEtD6+Og/Ochn6V0XaJPpxPHyKTtiYwxGm+5fenvQ
         a8DlYgCHxrNqn0PNN6KnHbczptrKBUt+dzN5XAgEOmBCq3NxyAnOd+bPWYrrE0yX2GEE
         d1Yw==
X-Gm-Message-State: AOAM533/7mutU+cEcRsond10+hcBq8t4NgxvBDnzQDnqCkVXEp2Zu5Ud
        890JJV0bwjMyOozHL1LT8f+DAQ==
X-Google-Smtp-Source: ABdhPJz30Kzhv47T/zCDlZefUyH/QM5dGJC1yY+kLUyDpjabhKBW9TPmqRT9VHZkUKx2+gTeqlM1Ww==
X-Received: by 2002:a2e:2c11:: with SMTP id s17mr27762313ljs.403.1625805102953;
        Thu, 08 Jul 2021 21:31:42 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h1sm13028lft.174.2021.07.08.21.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jul 2021 21:31:42 -0700 (PDT)
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
Subject: [RESEND PATCH v2 5/7] arm64: dts: qcom: sm8250: remove mmcx regulator
Date:   Fri,  9 Jul 2021 07:31:34 +0300
Message-Id: <20210709043136.533205-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210709043136.533205-1-dmitry.baryshkov@linaro.org>
References: <20210709043136.533205-1-dmitry.baryshkov@linaro.org>
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

