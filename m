Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9C81B183316
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2020 15:31:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727692AbgCLOao (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Mar 2020 10:30:44 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:56117 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727680AbgCLOao (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Mar 2020 10:30:44 -0400
Received: by mail-wm1-f66.google.com with SMTP id 6so6324956wmi.5
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2020 07:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5XoF79W8hq9UCrrBx/AuXGekRPOiQVW+xhnnvppC058=;
        b=lUAoS3jBfhTrogWCN/eWOlymGPzOVIO6uDkaK0S5k0U9fLUCmKAHSz1LANgPR5TiAi
         5VM0/zo3qGWkTjuUTRBXdLN4WmS1f0NvErUE0RQYO5dNGdbgJoQM9D+W7r1GIBGAKYWD
         eH1UwC7fzN0jFB5oXcbc/8m7wQmDipDdCczvrhkHXqXPxW0MBDnKbHfaBtqA1K67HLbB
         gzVKrxka8Pwf3v+RVW4w6GAQBBIzSWQTJ2RNqILsI4+Iav2+NLcve+b1A9YclVWGy/Gt
         VzsyOSrxJz7fskso54Q8D1ODeKdyxWn/r4vi+lxrFzyL7HB3YDaTPL7jZJFDk8+sxTha
         9qZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5XoF79W8hq9UCrrBx/AuXGekRPOiQVW+xhnnvppC058=;
        b=Jql0/HiQTUV55MSndKqqGgmfYWZ1VTMjdCUWszWW8L6Owcev1jgkmhwqi4I0pyKfeE
         mjPKRdssTzyU1nJF5ysVtSFLgY+rNriGIirBxF8cTZcPPz2imo6KyxoNTVJEvqWajHhb
         DGXvq1wT+xad0VJWR9ROnDe0wp1QoNmw8HWeWF1zSop0Gan+Z+w5B3NOTvgFZvbayLPa
         WsxFUVvqICfRzSYuYtjBwMxjmiYLv5ZkMMgUxKyNS3Cg/dm08V7veaNX50bGtExYZpBg
         HTMUvMiBz+NIB7w0p0a2CnUYX4uYvGMKUN6MvQrpb+G6+xRBuc2Oi7thJ+QSVupf+eHk
         nU9w==
X-Gm-Message-State: ANhLgQ3j3oz8ndERntn6MlgeUwQWKICrNAuPhQnpNomHJaewZM36jhUI
        Z2pava8EJRjNjMzhO4xxGINWBw==
X-Google-Smtp-Source: ADFU+vuuWNlQxlgGu2yhvuHymuCNafA2USYTRTh+T/glr6LKiSEs7bnZmv957ExHfmjBQSq7VJZivQ==
X-Received: by 2002:a1c:2048:: with SMTP id g69mr5253520wmg.187.1584023442365;
        Thu, 12 Mar 2020 07:30:42 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id v8sm72860454wrw.2.2020.03.12.07.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 07:30:41 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, agross@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 3/5] arm64: dts: qcom: c630: Enable audio support
Date:   Thu, 12 Mar 2020 14:30:22 +0000
Message-Id: <20200312143024.11059-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200312143024.11059-1-srinivas.kandagatla@linaro.org>
References: <20200312143024.11059-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch add support to audio via WSA881x Speakers and Headset.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 113 ++++++++++++++++++
 1 file changed, 113 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index b255be3a4a0a..31c22836f84e 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -7,7 +7,10 @@
 
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+#include <dt-bindings/sound/qcom,q6afe.h>
+#include <dt-bindings/sound/qcom,q6asm.h>
 #include "sdm845.dtsi"
 #include "pm8998.dtsi"
 
@@ -353,6 +356,107 @@
 	status = "okay";
 };
 
+&wcd9340{
+	pinctrl-0 = <&wcd_intr_default>;
+	pinctrl-names = "default";
+	clock-names = "extclk";
+	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
+	reset-gpios = <&tlmm 64 0>;
+	vdd-buck-supply = <&vreg_s4a_1p8>;
+	vdd-buck-sido-supply = <&vreg_s4a_1p8>;
+	vdd-tx-supply = <&vreg_s4a_1p8>;
+	vdd-rx-supply = <&vreg_s4a_1p8>;
+	vdd-io-supply = <&vreg_s4a_1p8>;
+	swm: swm@c85 {
+		left_spkr: wsa8810-left{
+			compatible = "sdw10217211000";
+			reg = <0 3>;
+			powerdown-gpios = <&wcdgpio 2 GPIO_ACTIVE_HIGH>;
+			#thermal-sensor-cells = <0>;
+			sound-name-prefix = "SpkrLeft";
+			#sound-dai-cells = <0>;
+		};
+
+		right_spkr: wsa8810-right{
+			compatible = "sdw10217211000";
+			powerdown-gpios = <&wcdgpio 3 GPIO_ACTIVE_HIGH>;
+			reg = <0 4>;
+			#thermal-sensor-cells = <0>;
+			sound-name-prefix = "SpkrRight";
+			#sound-dai-cells = <0>;
+		};
+	};
+};
+
+&q6asmdai {
+	dai@0 {
+		reg = <0>;
+		direction = <2>;
+	};
+
+	dai@1 {
+		reg = <1>;
+		direction = <1>;
+	};
+};
+
+&sound {
+	compatible = "qcom,db845c-sndcard";
+	model = "Lenovo-YOGA-C630-13Q50";
+
+	audio-routing =
+		"RX_BIAS", "MCLK",
+		"AMIC2", "MIC BIAS2",
+		"SpkrLeft IN", "SPK1 OUT",
+		"SpkrRight IN", "SPK2 OUT",
+		"MM_DL1",  "MultiMedia1 Playback",
+		"MultiMedia2 Capture", "MM_UL2";
+
+	mm1-dai-link {
+		link-name = "MultiMedia1";
+		cpu {
+			sound-dai = <&q6asmdai  MSM_FRONTEND_DAI_MULTIMEDIA1>;
+		};
+	};
+
+	mm2-dai-link {
+		link-name = "MultiMedia2";
+		cpu {
+			sound-dai = <&q6asmdai  MSM_FRONTEND_DAI_MULTIMEDIA2>;
+		};
+	};
+
+	slim-dai-link {
+		link-name = "SLIM Playback";
+		cpu {
+			sound-dai = <&q6afedai SLIMBUS_0_RX>;
+		};
+
+		platform {
+			sound-dai = <&q6routing>;
+		};
+
+		codec {
+			sound-dai =  <&left_spkr>, <&right_spkr>, <&swm 0>, <&wcd9340 0>;
+		};
+	};
+
+	slimcap-dai-link {
+		link-name = "SLIM Capture";
+		cpu {
+			sound-dai = <&q6afedai SLIMBUS_0_TX>;
+		};
+
+		platform {
+			sound-dai = <&q6routing>;
+		};
+
+		codec {
+			sound-dai = <&wcd9340 1>;
+		};
+	};
+};
+
 &tlmm {
 	gpio-reserved-ranges = <0 4>, <81 4>;
 
@@ -382,6 +486,15 @@
 		bias-pull-up;
 		drive-strength = <2>;
 	};
+
+	wcd_intr_default: wcd_intr_default {
+		pins = <54>;
+		function = "gpio";
+
+		input-enable;
+		bias-pull-down;
+		drive-strength = <2>;
+	};
 };
 
 &uart6 {
-- 
2.21.0

