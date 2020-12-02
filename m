Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 940E92CC49A
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 19:12:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389055AbgLBSJV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 13:09:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388302AbgLBSJU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 13:09:20 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1F17C061A4A
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 10:07:56 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id v14so9876346wml.1
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 10:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jZdt1XQOEk+ZY/4QVRoY/euZTi8U5G4IRCAkmQbGs68=;
        b=b1ZnkVrON3czjvAmME3sv+C1Q2DlMtLC018KTMqgiMzkOEiyoNgmxWx0O4MnKysUuq
         rJfMglKwVlNglsnW3WVyF8USxs7dvXQW/ncaDXSdM8xMNJe06BfHY3D9TN9sjuacF+VY
         XSP+/XGsDJg4G9Pkc89NUoDNYKVPpv7F+WZrZv6QqXWIpfNhqmu9s70iPPF3XSj7GX7q
         6V9bTof7fjUqxln6UdRy4/zzAl4bUwXzL3h6JIHsy+8+d3s8FRoJmM/0Hv0Rfrp3mtii
         DYvLRcJNy5s80Y6sUMbb+Depks/OrHuEcis5NkGNcnwyfXOxUC+yY8F/4NBx2U9g3f05
         LJaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jZdt1XQOEk+ZY/4QVRoY/euZTi8U5G4IRCAkmQbGs68=;
        b=rM7V+IHV7dvvaqMb7xGlqSvqG21ZqXkjiRSTrdDaaB0P0ZOpuWZJxAEjwYyoIRRmGo
         +S/iOaLrWWJemCtxT53anR8e8eeRockNnRR1htkBa0qyNpruPu3TkYbaZEPrsfNra+wk
         K5CvX43o+1Ng1kxTm8ZT9fDXHKvWEV70oN4CS5rLZxX37AV2z/DlD3OR3d9OVFVfonie
         GfkwRgHRs6r8aVhyfTmIDU7MDOxA0Ko6r214njjvv0TlShBcOY1wbsEgu8hiN72v0Cdj
         Bnz7LRt4lRaUEtKw05gwG0pa5TplBfPRy/HnzSuutl1jjHtcu47DforUsMRcTPLkDcuh
         dgxQ==
X-Gm-Message-State: AOAM532QhJRahAPifBFqKeVw+eI/OVUDo7w2azWQvchw/sMgMZ0fHprS
        MAUkzXqd+KZhAAkQ73/E7Z9Elw==
X-Google-Smtp-Source: ABdhPJxSGpBeUXOr+9w//0NOH2Tf2tOuLBRM6VP7bM7bPUVu4oWFO2vpp+O5rtcaKy21hEsR5aoOwg==
X-Received: by 2002:a05:600c:255:: with SMTP id 21mr4382233wmj.69.1606932475722;
        Wed, 02 Dec 2020 10:07:55 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id a18sm3004404wrr.20.2020.12.02.10.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 10:07:54 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, agross@kernel.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 3/6] arm64: dts: qcom: sm8250: add lpass lpi pin controller node
Date:   Wed,  2 Dec 2020 18:07:38 +0000
Message-Id: <20201202180741.16386-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20201202180741.16386-1-srinivas.kandagatla@linaro.org>
References: <20201202180741.16386-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add LPASS LPI pinctrl node required for Audio functionality on RB5.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 84 ++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index cddbb53db193..ce8ae776160d 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2607,6 +2607,90 @@
 			clock-names = "core", "audio", "bus";
 		};
 
+		lpass_tlmm: pinctrl@33c0000{
+			compatible = "qcom,sm8250-lpass-lpi-pinctrl";
+			reg = <0 0x33c0000 0x0 0x20000>,
+				 <0 0x3550000 0x0 0x10000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpass_tlmm 0 0 14>;
+
+			clocks = <&q6afecc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				<&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "core", "audio";
+
+			wsa_swr_active: wsa-swr-active-pins {
+				clk {
+					pins = "gpio10";
+					function = "wsa_swr_clk";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-disable;
+				};
+
+				data {
+					pins = "gpio11";
+					function = "wsa_swr_data";
+					drive-strength = <2>;
+					slew-rate = <1>;
+					bias-bus-hold;
+
+				};
+			};
+
+			wsa_swr_sleep: wsa-swr-sleep-pins {
+				clk {
+					pins = "gpio10";
+					function = "wsa_swr_clk";
+					drive-strength = <2>;
+					input-enable;
+					bias-pull-down;
+				};
+
+				data {
+					pins = "gpio11";
+					function = "wsa_swr_data";
+					drive-strength = <2>;
+					input-enable;
+					bias-pull-down;
+
+				};
+			};
+
+	                dmic01_active: dmic01-active-pins {
+	                        clk {
+	                                pins = "gpio6";
+					function = "dmic1_clk";
+	                                drive-strength = <8>;
+	                                output-high;
+	                        };
+	                        data {
+	                                pins = "gpio7";
+					function = "dmic1_data";
+	                                drive-strength = <8>;
+	                                input-enable;
+	                        };
+	                };
+
+	                dmic01_sleep: dmic01-sleep-pins {
+	                        clk {
+	                                pins = "gpio6";
+					function = "dmic1_clk";
+	                                drive-strength = <2>;
+	                                bias-disable;
+	                                output-low;
+	                        };
+
+	                        data {
+	                                pins = "gpio7";
+					function = "dmic1_data";
+	                                drive-strength = <2>;
+	                                pull-down;
+	                                input-enable;
+	                        };
+	                };
+		};
+
 		adsp: remoteproc@17300000 {
 			compatible = "qcom,sm8250-adsp-pas";
 			reg = <0 0x17300000 0 0x100>;
-- 
2.21.0

