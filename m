Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13DDA29E07C
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 02:22:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729600AbgJ1WEx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 18:04:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728338AbgJ1WBN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 18:01:13 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A764C0613CF
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 15:01:13 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id p5so1089118ejj.2
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 15:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X+9CMR89RIjvhaJgbEWulHsiFiBj9DskJPmBidEwcdM=;
        b=vuCk5p61JvFkHGOOsrLLSTDQjp28EFuXH0Yuw8HCH43YEi24rlqU8xOTf7OLZmMugj
         3LNYAwbQFQBPJ55akO5XMIlgfFmUQ9MHS71A9uPk9ZSz21vX2P4HOEkb/prZ1hDc1OKV
         1n2RAMAccaVCh+Ksp6VQpAWzqtSeYMGkX75SOCb9erH6hu3n3rzZSxvvbU9rb/CrawkQ
         vUR4J/DrAMIammIy4sz/Cp5+Q5WY/o4aZBBVSpBZyFwlaKO4sk+hUcI+19wuf2mdCKJW
         0iqeOQ9Titv6LNeDjHVazmAHhBYO9rDs4cBify151VurI5K0Jq9V2sDGH6jJo3v5xTqZ
         5Pcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X+9CMR89RIjvhaJgbEWulHsiFiBj9DskJPmBidEwcdM=;
        b=ToHt4SqBjYRENrFiBoznMzKmomxa6w+0pI11+NuGdom3XTU8YauQ9VutRUdNqDnXqx
         wDkhPg7ezHIeweikKusp475TyvGAT3UvqL/HaQgyC7VZuRU+hIMtf+kFHS5ddwvvzy3I
         +pvlpA5Uc7n+I4Ch/7hp6hy77INLHVDhQ+XG2exTztRU63nBSLnor6lwguwLN/v/jvMj
         q3IPpMPivsx68Zw8+khXhqKz7NMiEPtZdXVmKcoY3r1IzeMiWr1YMk7cAHwECcS+14Sd
         Te0p9Ox24GVtoaulwczCqK41IQJs9UUbqHqlcd+Xl0Pysejn2hVsOsA5oPB94/RQzRu/
         rAIQ==
X-Gm-Message-State: AOAM530k1Z4s0grujnPT+6uoGfYVp3bJ8HtutBSxX+pnGLjDpKwPKiY6
        dTmIuYuu8gRsB941CcY/3qSVyYwWkuBs4AfM
X-Google-Smtp-Source: ABdhPJx0P/i7X2q9h33qW+hh3xPqphMcYmpKicQgm75nTUdHpbY+h+XSQ+MRSmUCBIkAfiTvPWNsEA==
X-Received: by 2002:a19:2294:: with SMTP id i142mr195623lfi.579.1603912199902;
        Wed, 28 Oct 2020 12:09:59 -0700 (PDT)
Received: from eriador.lan ([188.162.64.219])
        by smtp.gmail.com with ESMTPSA id c7sm52595ljk.59.2020.10.28.12.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 12:09:59 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 2/2] arm64: dts: qcom: rb5: Add support for uSD card
Date:   Wed, 28 Oct 2020 22:09:55 +0300
Message-Id: <20201028190955.1264526-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201028190955.1264526-1-dmitry.baryshkov@linaro.org>
References: <20201028190955.1264526-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Add support for uSD card on RB5 using the SDHC2 interface.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
[DB: disabled 1.8V support to get SDHC to work]
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 41 ++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 1528a865f1f8..aed00f707f1d 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -18,6 +18,7 @@ / {
 
 	aliases {
 		serial0 = &uart12;
+		sdhc2 = &sdhc_2;
 	};
 
 	chosen {
@@ -471,6 +472,20 @@ &qupv3_id_2 {
 	status = "okay";
 };
 
+&sdhc_2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdc2_default_state &sdc2_card_det_n>;
+	vmmc-supply = <&vreg_l9c_2p96>;
+	vqmmc-supply = <&vreg_l6c_2p96>;
+	cd-gpios = <&tlmm 77 GPIO_ACTIVE_LOW>;
+	bus-width = <4>;
+	/* there seem to be issues with HS400-1.8V mode, so disable it */
+	no-1-8-v;
+	no-sdio;
+	no-emmc;
+};
+
 /* CAN */
 &spi0 {
 	status = "okay";
@@ -659,6 +674,32 @@ &tlmm {
 		"HST_BLE_SNS_UART_RX",
 		"HST_WLAN_UART_TX",
 		"HST_WLAN_UART_RX";
+
+	sdc2_default_state: sdc2-default {
+		clk {
+			pins = "sdc2_clk";
+			bias-disable;
+			drive-strength = <16>;
+		};
+
+		cmd {
+			pins = "sdc2_cmd";
+			bias-pull-up;
+			drive-strength = <16>;
+		};
+
+		data {
+			pins = "sdc2_data";
+			bias-pull-up;
+			drive-strength = <16>;
+		};
+	};
+
+	sdc2_card_det_n: sd-card-det-n {
+		pins = "gpio77";
+		function = "gpio";
+		bias-pull-up;
+	};
 };
 
 &uart12 {
-- 
2.28.0

