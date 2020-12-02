Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E2142CC4A0
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 19:12:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389269AbgLBSJd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 13:09:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389108AbgLBSJa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 13:09:30 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CFCBC061A53
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 10:07:59 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id i2so5052661wrs.4
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 10:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CqM9q6N4Zo+VkJ7lg9KQfgHn+D5C3chvwEDQouNf3x8=;
        b=MZbOjrD+wIo7l/H/D3+/L62fRo2GJL2/P1FX1b7sNlW6LlTKgNxsxLDqlRQgVV+4o7
         aZLuDyLhAmAP+HL5VnCL92DsnsB1wU1RNsnh4X1yAWQA0s4Xbp0cXNureLXOFQn+nhwj
         +E1wAk5v5BdeaPH93sGth468fFyVpl2Hcd8ZtWP3bA6pnZKOigAIhYTuKQJjtQfV0r01
         wp9pz5JsCSMNFq48nx48NclkdeA0XGTrg7h6YgR7YGlDN8VBPPMPpzklmMGMDOeSrqiR
         YOK2FjTEPbAGoYdx8X8M3GX5PH/krJ1PdYgOadeb28UzyUPGpJ1oYnSm1/pZ/9I7XJeR
         Fmwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CqM9q6N4Zo+VkJ7lg9KQfgHn+D5C3chvwEDQouNf3x8=;
        b=sf5RV/GZXxvGamPiaLqEqO3Nm2NpY1wY7h+E3m2VofVZ5fM48PzmkUBONXqhLe5S7Q
         Gry51IGQSZF6lwC30Y0wHuNo04rjCIFHJjjc+oL3yienExU2NbgY8USvw8dOQ+nRdaZr
         mkY9EYoWbpnQEHhyJ1pAZOPIsl4P2zmJB+2O/HPd/lg3Mn0+x5m2gQyvm2A23nbvA7Rv
         RM7DeBsnSrCHLy2jYzRnGNF9Md1giPF2OwRIHdm1jduTofBAkUoG6RWwbAlKCVyvEZpf
         IaL6TlaJ7V5SwRBhhZA/J4nvEcgCfb2xHDmoR0589hiBN9Kcj0cfIb1zCO4knYkG8pD5
         1DmA==
X-Gm-Message-State: AOAM531Ml5Y68rH+qrhtLdsaZRR86wZJBqFzhQy1wqwW0gXpUe2/5gAJ
        nvOHar+0GjVg6bEWcs4+J7CVWg==
X-Google-Smtp-Source: ABdhPJy3z9DpLEev3Hi7BG7XtQENGi/zx5Vx6nm8QcxzKTYVgjCa/XY9xIXOwyIDx4sQ5UCROV+6Kg==
X-Received: by 2002:adf:e481:: with SMTP id i1mr4771642wrm.282.1606932478279;
        Wed, 02 Dec 2020 10:07:58 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id a18sm3004404wrr.20.2020.12.02.10.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 10:07:57 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, agross@kernel.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 5/6] arm64: dts: qcom: sm8250: add mi2s pinconfs
Date:   Wed,  2 Dec 2020 18:07:40 +0000
Message-Id: <20201202180741.16386-6-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20201202180741.16386-1-srinivas.kandagatla@linaro.org>
References: <20201202180741.16386-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add primary and tertinary mi2s pinconfs required to get I2S audio.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 55 ++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index d2ade3ab3389..51cffdae631c 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -1884,6 +1884,37 @@
 			gpio-ranges = <&tlmm 0 0 180>;
 			wakeup-parent = <&pdc>;
 
+			pri_mi2s_active: pri-mi2s-active {
+				sclk {
+					pins = "gpio138";
+					function = "mi2s0_sck";
+					drive-strength = <8>;
+					bias-disable;
+				};
+
+				ws {
+					pins = "gpio141";
+					function = "mi2s0_ws";
+					drive-strength = <8>;
+					output-high;
+				};
+
+				data0 {
+					pins = "gpio139";
+					function = "mi2s0_data0";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+
+				data1 {
+					pins = "gpio140";
+					function = "mi2s0_data1";
+					drive-strength = <8>;
+					output-high;
+				};
+			};
+
 			qup_i2c0_default: qup-i2c0-default {
 				mux {
 					pins = "gpio28", "gpio29";
@@ -2480,6 +2511,30 @@
 					function = "qup18";
 				};
 			};
+
+			tert_mi2s_active: tert-mi2s-active {
+				sck {
+					pins = "gpio133";
+					function = "mi2s2_sck";
+					drive-strength = <8>;
+					bias-disable;
+				};
+
+				data0 {
+					pins = "gpio134";
+					function = "mi2s2_data0";
+					drive-strength = <8>;
+					bias-disable;
+					output-high;
+				};
+
+				ws {
+					pins = "gpio135";
+					function = "mi2s2_ws";
+					drive-strength = <8>;
+					output-high;
+				};
+			};
 		};
 
 		apps_smmu: iommu@15000000 {
-- 
2.21.0

