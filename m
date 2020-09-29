Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFF1F27BB6A
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 05:15:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727480AbgI2DPC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Sep 2020 23:15:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727441AbgI2DOu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Sep 2020 23:14:50 -0400
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com [IPv6:2607:f8b0:4864:20::c42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A015BC0613D9
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 20:14:48 -0700 (PDT)
Received: by mail-oo1-xc42.google.com with SMTP id g26so902443ooa.9
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 20:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7ukIiTp8F3sbAL+dbJDcyEcWM4OSmrW5QsAjDno80kk=;
        b=nnPAC6pZQHwPMTI5KD8bkHf8fYZY9MmYWVsHlSQQjSqav0u3wNZJgpc7/KnLblchWO
         H0AeVtySy98s0/fWJrToEx9Jxl+sMfAfPmUYh69bQ/45eS6cEerQDzypfOavEejnmBi/
         C1M5F3dlrW1dRWJYCtgg/8Ob9UE7Wr4N6D6e9pKafn1KUxt9GRBtZlBh2eKBUBPAqgj5
         jCL43QlOEsZLPklISAXyeaxzXAVZsu8r+jFaxbIG+uJ/Sry6tuwLfgKn5gsfj9eBJDY7
         F69hjNlnbGLPLdVYsoH5vL+lCRRgxyoehdxLu/QRTGFG4XJ6Ag/WB/6YUU/cUQKTsl8T
         0xBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7ukIiTp8F3sbAL+dbJDcyEcWM4OSmrW5QsAjDno80kk=;
        b=Cvw5rj62OMttEBE4Zed8sSF5qQsZ4INfL60lmcry5EH1MSRlck4mxwegFhHkq8w9yy
         9EZrtG8riN9kINegs+IudbHc4oiSQPwhqlC3M47Fptbg23BQdjWWsR11NvddYbPWlvDU
         HEYbxhb3/a564hECG/wGLxrULdRNwQpdNK36CzFPMKOReRg6q5GGS/41GjsjHrxG67qk
         O2LargamUZHVAs64B+dY3xtcCcLZ5F+xJ3hNgR3vmocE1xzcVOkl74yjzMMNxaFvF8yU
         xV5NG204qbAzabH2x+32nyMfMy4kzAEj2Kz8xBnK1SztUYcu1uwFQdgtxKO2+pBUe9zl
         Y9Bw==
X-Gm-Message-State: AOAM532AyzQl/I4dDqIjlb2Ui6CZ5nm0g5S97oradmWbx1/aCz6BTWhV
        qAkUpsf+o/B6fUEkiEwA2YNrVQ==
X-Google-Smtp-Source: ABdhPJyF9Vz4DWQmwAwK0MGT/4bbXyyEVycUyl+aDxPBx4RrVkm2aW6jGZpCiMtnZpZCSEtc9Nmkdg==
X-Received: by 2002:a4a:614f:: with SMTP id u15mr3019878ooe.70.1601349287980;
        Mon, 28 Sep 2020 20:14:47 -0700 (PDT)
Received: from localhost.localdomain (99-135-181-32.lightspeed.austtx.sbcglobal.net. [99.135.181.32])
        by smtp.gmail.com with ESMTPSA id 36sm729548otb.30.2020.09.28.20.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 20:14:47 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Martin Botka <martin.botka1@gmail.com>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pwm@vger.kernel.org
Subject: [PATCH v4 3/4] arm64: dts: qcom: msm8996: Add mpp and lpg blocks
Date:   Mon, 28 Sep 2020 20:15:43 -0700
Message-Id: <20200929031544.1000204-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929031544.1000204-1-bjorn.andersson@linaro.org>
References: <20200929031544.1000204-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The pm8994 contains a 6 LPG channels. The pmi8994 contains 4 MPP
channels and a 4 channel LPG, with TRILED and LUT blocks.

Add nodes for these blocks.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v3:
- None

 arch/arm64/boot/dts/qcom/pm8994.dtsi  |  9 +++++++++
 arch/arm64/boot/dts/qcom/pmi8994.dtsi | 20 ++++++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm8994.dtsi b/arch/arm64/boot/dts/qcom/pm8994.dtsi
index 7e4f777746cb..b5bef687aa3c 100644
--- a/arch/arm64/boot/dts/qcom/pm8994.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8994.dtsi
@@ -86,6 +86,15 @@ pmic@1 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		pm8994_lpg: lpg {
+			compatible = "qcom,pm8994-lpg";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+		};
+
 		pm8994_spmi_regulators: regulators {
 			compatible = "qcom,pm8994-regulators";
 		};
diff --git a/arch/arm64/boot/dts/qcom/pmi8994.dtsi b/arch/arm64/boot/dts/qcom/pmi8994.dtsi
index e5ed28ab9b2d..23f41328d191 100644
--- a/arch/arm64/boot/dts/qcom/pmi8994.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi8994.dtsi
@@ -19,6 +19,17 @@ pmi8994_gpios: gpios@c000 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 		};
+
+		pmi8994_mpps: mpps@a000 {
+			compatible = "qcom,pm8994-mpp";
+			reg = <0xa000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupts = <0 0xa0 0 IRQ_TYPE_NONE>,
+				     <0 0xa1 0 IRQ_TYPE_NONE>,
+				     <0 0xa2 0 IRQ_TYPE_NONE>,
+				     <0 0xa3 0 IRQ_TYPE_NONE>;
+		};
 	};
 
 	pmic@3 {
@@ -27,6 +38,15 @@ pmic@3 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		pmi8994_lpg: lpg@b100 {
+			compatible = "qcom,pmi8994-lpg";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+		};
+
 		pmi8994_spmi_regulators: regulators {
 			compatible = "qcom,pmi8994-regulators";
 			#address-cells = <1>;
-- 
2.28.0

