Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4A90E17A841
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2020 15:54:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726591AbgCEOyS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Mar 2020 09:54:18 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:38294 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726958AbgCEOxz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Mar 2020 09:53:55 -0500
Received: by mail-wr1-f66.google.com with SMTP id t11so7385571wrw.5
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2020 06:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/7GaYG1V9yvlGZRAenw2HkEK2JVAUFF5h5EVPufKqGg=;
        b=VX47RGMYDdzThxyXqhwBxJcO0pcrOV+YjLetQkI/TCXk/3mFWV83ILoz7U8HwXukvR
         g/aILl08N6i6TFT4UB4WbkiSqE0xGwSxsZ0G7q4WxD0xSssSoxfRXvjtwtAVhsU7EQOc
         lX5P8yY/GwFEhagbCQKLiWk26ERm7r15TXpNXCtnaN/MFROhZVng/ivNk/WHAcKpTtFK
         Krum9oEe6d21Dw7OLGFoPmG5UDxwXpWiDo3sowhVjevEIlCxNaYudzJ3LfopHgBU+YhF
         jP6JzHId2++YhOELM9ikmQQHr91b4nk8DoRI9hhNvDjI3a37Cw3/ghNKOPTM661/AdID
         uKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/7GaYG1V9yvlGZRAenw2HkEK2JVAUFF5h5EVPufKqGg=;
        b=K8zp5C+uU6ABmL0UyhSxsLtIDBRfAKS2EMYD1mnWGgtGh+cic8xYnEEm2H5sSb//se
         ifSM2nJkK5llLDhXje84IJiz5tcntRQgT0AHEmfcbpHVO1/Vd6K04UAnO0mVymN1hhom
         XfOgsSunw/s98XEq0fOOuiIcFXjgAoNXodaTxJl26R+r5Pa4ujn55na7teRRmrOlPl7C
         AX7O8vZK+/cnohPwmvbBzI8X3g+vKdcR8hbOTw2x9cIyHOnlyzTXir7FVZXrPbR9WHWa
         +LffG5Auvsvx8DYuu6/Z/evRmKNjXVK0YP/aK+QSQTwWrnuYfKVis5KX4F7Y1vf0kNpR
         uIlw==
X-Gm-Message-State: ANhLgQ0dS6RXM5ZptHKXK/9g7+NtdVLfOf/XKBTs0ni/PeFEhXy/3sS8
        pQxxWtyHuM4aHRZnosQT35MEfbl6mYI=
X-Google-Smtp-Source: ADFU+vt5FvrEnGBWVeZKz6mJ0TXnqCrAyCnnG8ke4oq2YnIDlLLvui9t+E72hFQLLa9Iys3wkfTD3Q==
X-Received: by 2002:a5d:494c:: with SMTP id r12mr9965765wrs.50.1583420033496;
        Thu, 05 Mar 2020 06:53:53 -0800 (PST)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id f16sm35785985wrx.25.2020.03.05.06.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2020 06:53:52 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, agross@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 2/4] arm64: dts: qcom: c630: Enable audio support
Date:   Thu,  5 Mar 2020 14:53:42 +0000
Message-Id: <20200305145344.14670-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200305145344.14670-1-srinivas.kandagatla@linaro.org>
References: <20200305145344.14670-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch add support to audio via WSA881x Speakers and Headset.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 91 +++++++++++++++++++
 1 file changed, 91 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index b255be3a4a0a..99f5836b9331 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -8,6 +8,8 @@
 /dts-v1/;
 
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+#include <dt-bindings/sound/qcom,q6afe.h>
+#include <dt-bindings/sound/qcom,q6asm.h>
 #include "sdm845.dtsi"
 #include "pm8998.dtsi"
 
@@ -353,6 +355,95 @@
 	status = "okay";
 };
 
+&slim_msm {
+	ngd@1 {
+		wcd9340: codec@1{
+			clock-names = "extclk";
+			clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
+			vdd-buck-supply = <&vreg_s4a_1p8>;
+			vdd-buck-sido-supply = <&vreg_s4a_1p8>;
+			vdd-tx-supply = <&vreg_s4a_1p8>;
+			vdd-rx-supply = <&vreg_s4a_1p8>;
+			vdd-io-supply = <&vreg_s4a_1p8>;
+			swm: swm@c85 {
+				left_spkr:wsa8810-left{
+					compatible = "sdw10217211000";
+					reg = <0 3>;
+					powerdown-gpios = <&wcdpinctrl 2 0>;
+					#thermal-sensor-cells = <0>;
+					sound-name-prefix = "SpkrLeft";
+					#sound-dai-cells = <0>;
+				};
+
+				right_spkr:wsa8810-right{
+					compatible = "sdw10217211000";
+					powerdown-gpios = <&wcdpinctrl 3 0>;
+					reg = <0 4>;
+					#thermal-sensor-cells = <0>;
+					sound-name-prefix = "SpkrRight";
+					#sound-dai-cells = <0>;
+				};
+			};
+
+		};
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
+		"SpkrRight IN", "SPK2 OUT";
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
 
-- 
2.21.0

