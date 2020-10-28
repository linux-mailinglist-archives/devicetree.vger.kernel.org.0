Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2A4229D4FB
	for <lists+devicetree@lfdr.de>; Wed, 28 Oct 2020 22:56:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728056AbgJ1V4A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 17:56:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728657AbgJ1VyJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 17:54:09 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87F0DC0613CF
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 14:54:09 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id i1so692282wro.1
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 14:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pO6LThXOtBiDEi5s3AU4bK7ClmEzefDtSdQh29OfxfE=;
        b=woeDlqOxzaMhYO/W3xE4Xt/FTXjXZS9IYCVk3C7SKpiAoiMc9+QCYQ+gFLGeJ+eNRK
         PNuHm0SaaqEjnGSJxhk/8T47O9l3FZ7YQHqAXVZTkTkjyXxD2oLbNLBLn6w/MSpYO1Wd
         DT0w6zHurgmWD/izmWmZoVnG3+tZhS8W6fx77YFpOKH7vZ9mgo+3wJM1x9MDKSqd77xj
         dJmmAe2mDKXQ3FURd/WCfAAgUbomckzaLd6uKMsmQlLwDPlui065sY4sexKCAtPrB0tI
         zeHC24jIB1Q1AVR1+D5WF4E7KClct/2717U+jut0ytiCntB+tWs6Z61RrMfq1r5dXYfC
         dFyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pO6LThXOtBiDEi5s3AU4bK7ClmEzefDtSdQh29OfxfE=;
        b=HIkcXpxr6qUQ+1OX5JeXC34UJvB/FOoUYrbkY4f9+fIsYG9hV+sf/q6a+UxwWQOoJY
         jkWZORWH5r+UqtCEmzvMPXrAsylngjszN+0LBtjIKUXS8zdjZ3E0JtKrJVFjbjeSDRr1
         SEICfZfi3V3BmrOPbZSKRASOPpqRCvoaXoroF6AA3f+O7CSp5ECy09adDtQ9twJzQgRb
         BxoZ8Z1SPrAq3OqtwSZjw2M5pKd4YVW21tpB9tAC09QIA8ChsAIiOEeCIiOPaagOmNEu
         lWVK7J+6Er50WGTidoWIc0hd/OJEv2ttJVdk6XeQxYnvaYg1Ai6JaNXA/db5o1lhiKuh
         IjlQ==
X-Gm-Message-State: AOAM530lphR+wTxifffuCDIvqxy52Ot+Y8hjlpu+PtKTT4Dh5eIsMxJe
        sAZY4dT3bYRcZ4MFSVWPA9dI//DU4ThlFD9r
X-Google-Smtp-Source: ABdhPJwjC6oLcIeuFDqOhbI7uZMtQ7+6D0eUG7rTCO3UhVflfNApwtNhr9R9z6GC6kYAwnSTX31/rg==
X-Received: by 2002:a05:6512:3102:: with SMTP id n2mr199836lfb.153.1603912198219;
        Wed, 28 Oct 2020 12:09:58 -0700 (PDT)
Received: from eriador.lan ([188.162.64.219])
        by smtp.gmail.com with ESMTPSA id c7sm52595ljk.59.2020.10.28.12.09.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 12:09:57 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 1/2] arm64: dts: qcom: sm8250: Add support for SDC2
Date:   Wed, 28 Oct 2020 22:09:54 +0300
Message-Id: <20201028190955.1264526-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Add support for SDC2 which can be used to interface uSD card.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
[DB: minor fixes: clocks, iommus, opps]
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 45 ++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 457c3e65c0b6..2de4a9f808d5 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -1462,6 +1462,51 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 			};
 		};
 
+		sdhc_2: sdhci@8804000 {
+			compatible = "qcom,sm8250-sdhci", "qcom,sdhci-msm-v5";
+			reg = <0 0x08804000 0 0x1000>;
+
+			interrupts = <GIC_SPI 204 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 222 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hc_irq", "pwr_irq";
+
+			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
+				 <&gcc GCC_SDCC2_APPS_CLK>,
+				 <&xo_board>;
+			clock-names = "iface", "core", "xo";
+			iommus = <&apps_smmu 0x4a0 0x0>;
+			qcom,dll-config = <0x0007642c>;
+			qcom,ddr-config = <0x80040868>;
+			power-domains = <&rpmhpd SM8250_CX>;
+			operating-points-v2 = <&sdhc2_opp_table>;
+
+			status = "disabled";
+
+			sdhc2_opp_table: sdhc2-opp-table {
+				compatible = "operating-points-v2";
+
+				opp-19200000 {
+					opp-hz = /bits/ 64 <19200000>;
+					required-opps = <&rpmhpd_opp_min_svs>;
+				};
+
+				opp-50000000 {
+					opp-hz = /bits/ 64 <50000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+				};
+
+				opp-202000000 {
+					opp-hz = /bits/ 64 <202000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+				};
+			};
+		};
+
 		dc_noc: interconnect@90c0000 {
 			compatible = "qcom,sm8250-dc-noc";
 			reg = <0 0x090c0000 0 0x4200>;
-- 
2.28.0

