Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9134078916D
	for <lists+devicetree@lfdr.de>; Sat, 26 Aug 2023 00:09:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbjHYWJO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 18:09:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229945AbjHYWJD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 18:09:03 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE81126B1
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 15:09:00 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2bcc187e0b5so20874511fa.1
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 15:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693001339; x=1693606139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iph0Yx4fWv/y2FEQbDGd9UzSv78Vg6iuUmzH3nYULq0=;
        b=PhXS8tVA8W4TIHXcGVAMjhPlKxfjY8PP9bGSssfrmI2AVXS+p5KTXTHslyMtS8XVgX
         YT+2kBLRyYCtykxfmZnk2EkMIWrf0yQAJEfcZ2bIk7xiToy6cTXA4XvvqfahCz1kuRyD
         UhwfGTUo1XRTgRv+n72o5dCg5DHv3w1fkzsDyXx7jjBIpHVK9YkrU9gS+9Fa1exBXLMa
         6aAwMEYFuo3IpfAM2/4TeyU9asIrwIJxePiV2P2NLa79yD+0Wcs8JVdJkbF7SZ1jUkJc
         ZvtZ4hYCJet9/3FvmH8KaR1/I9IGWv4Z4BfK9c2b/0WHT9yeb0IDTfj5eZi1zODQdlWG
         nRgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693001339; x=1693606139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iph0Yx4fWv/y2FEQbDGd9UzSv78Vg6iuUmzH3nYULq0=;
        b=aG24/hxJdjtKyXWGkUUHG12Ry3081Qxe/5fFWuaFOopFQrm8pAXRR3UpxO3QtklUat
         TgNiuMNGwFuPbH6WqlsWNoLaPDqcxg5ZumI42aNsU72o27QMcovQFAQJCVtryy7NJzrF
         jbIPFZ370eOPUbhAcBqZIMq/hexZzWHgVLuge6rEe1HxNmuIkGiwcSv6A/rJXZ6yCEZp
         wuxx+HcoJC6YLHq+FVfjGCGDYC26WiYuj5GBRgjIOLmLs9kmeT9/gD23C3R07F+xVSd0
         83qXuJIXubosZS0EBASO3uqE3E1n54/vTIEhSXO0nzjsp2oeCdEE3b/IJ8kYBIE6Ca9g
         NddQ==
X-Gm-Message-State: AOJu0Yy4zU1ppg115DRz2OMCX/0LIw6h2zmQAHLocT/3NjoO85IH1Wkx
        fK91S2fwZWgQUhJrafDpDohvzg==
X-Google-Smtp-Source: AGHT+IE2L139faDsvKPnFyw0/c/hgzObHDgDrqOTwAG2m8l3VQnK/IoWTwFLaQXXNn0RKvoSo5aJUw==
X-Received: by 2002:a2e:9084:0:b0:2b9:f007:9910 with SMTP id l4-20020a2e9084000000b002b9f0079910mr14416022ljg.53.1693001339294;
        Fri, 25 Aug 2023 15:08:59 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u16-20020a2e8550000000b002b9af8422a8sm494951ljj.130.2023.08.25.15.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Aug 2023 15:08:58 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: qcom: sdm845-mtp: enable PCIe support
Date:   Sat, 26 Aug 2023 01:08:54 +0300
Message-Id: <20230825220854.1655162-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230825220854.1655162-1-dmitry.baryshkov@linaro.org>
References: <20230825220854.1655162-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable two PCIe hosts support on Qualcomm SDM845 MTP board.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts | 81 +++++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
index aec3f358d426..9fb41d2453c8 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
@@ -533,6 +533,36 @@ &mss_pil {
 	firmware-name = "qcom/sdm845/mba.mbn", "qcom/sdm845/modem.mbn";
 };
 
+&pcie0 {
+	status = "okay";
+	perst-gpios = <&tlmm 35 GPIO_ACTIVE_LOW>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie0_default_state>;
+};
+
+&pcie0_phy {
+	status = "okay";
+
+	vdda-phy-supply = <&vreg_l1a_0p875>;
+	vdda-pll-supply = <&vreg_l26a_1p2>;
+};
+
+&pcie1 {
+	status = "okay";
+	perst-gpios = <&tlmm 102 GPIO_ACTIVE_LOW>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie1_default_state>;
+};
+
+&pcie1_phy {
+	status = "okay";
+
+	vdda-phy-supply = <&vreg_l1a_0p875>;
+	vdda-pll-supply = <&vreg_l26a_1p2>;
+};
+
 &pm8998_adc {
 	channel@4c {
 		reg = <ADC5_XO_THERM_100K_PU>;
@@ -630,6 +660,57 @@ &sdhc_2 {
 	cd-gpios = <&tlmm 126 GPIO_ACTIVE_LOW>;
 };
 
+&tlmm {
+	pcie0_default_state: pcie0-default-state {
+		clkreq-pins {
+			pins = "gpio36";
+			function = "pci_e0";
+			bias-pull-up;
+		};
+
+		perst-n-pins {
+			pins = "gpio35";
+			function = "gpio";
+
+			drive-strength = <2>;
+			output-low;
+			bias-pull-down;
+		};
+
+		wake-n-pins {
+			pins = "gpio37";
+			function = "gpio";
+
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
+	pcie1_default_state: pcie1-default-state {
+		clkreq-pins {
+			pins = "gpio103";
+			function = "pci_e1";
+			bias-pull-up;
+		};
+
+		perst-n-pins {
+			pins = "gpio102";
+			function = "gpio";
+
+			drive-strength = <16>;
+			bias-disable;
+		};
+
+		wake-n-pins {
+			pins = "gpio104";
+			function = "gpio";
+
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+};
+
 &uart9 {
 	status = "okay";
 };
-- 
2.39.2

