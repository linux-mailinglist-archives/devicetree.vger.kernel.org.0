Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B47FE288D30
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 17:45:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389468AbgJIPpe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 11:45:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389466AbgJIPpd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Oct 2020 11:45:33 -0400
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20BDDC0613D5
        for <devicetree@vger.kernel.org>; Fri,  9 Oct 2020 08:45:33 -0700 (PDT)
Received: by mail-lj1-x242.google.com with SMTP id y16so8906832ljk.1
        for <devicetree@vger.kernel.org>; Fri, 09 Oct 2020 08:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IX5J13tHQBhV3OyuAx16FFIRHXqfdlDIoHquJV7x6Go=;
        b=OW/J3NuWgPhMJqoOfdBVFraYf0bvh6VUfD9NDs0qFesTezLa3BEyOQPDm1pGtDqfhz
         DSEiT09DGZOIOPqEKK3b9MqufIMif0m9O2l5cMWpWL3ucBxEm6H94Z9Z55IlK54twjTG
         ctrihc7EcyCpOGY2yWph6/DH6Ej129C5woSLKuyqaz6lngtc2ySk+XsIWBujE/2VPElr
         t05o0iSxbYO50tvhq2vEyMIJm1Lt0kuZBd1hmc2TWuma4fMmeRifl48Jypjild4tSnO0
         JGLcb6Inxn/bpTGUVSowy1gmD8/mOZAqea6rasV0dcad/sREbxOXIjQ/jNu+E1xxloZV
         o7aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IX5J13tHQBhV3OyuAx16FFIRHXqfdlDIoHquJV7x6Go=;
        b=EtceO/uMnb1kpqHCaMC2pF1SPiREg66ksG/xz4N3g7SvjtoZSKkFKaQVG6SwXdZP6U
         CyENFb8nAjJyLAnU2uxszvpGjn+tz6XYSzzMPLKSFfx9ADW5ctw+EEiUijGbjdMmsAul
         7EUc9z/VhKULzKl0IGDkyw2lQlYqxsCXShfYdB8ZWYww5w76tiPOzSx3koLS6fAI/Ylm
         yXkBEs3tzOajpCWlz+B8Y8y0R7w/H+7f5fgM8pjYSyBCGh5OW6R+tT9mfBrULH2ejbmn
         ynOXn3aQ1s9+cs6VSQAgvXLYMqfoSNNNqkaxT930oTRoMF+eg8BLA3eVRjajUI+7QIG/
         T50w==
X-Gm-Message-State: AOAM532gGGkiJw6etbS/Dr/aFFpntgFLqwZmfdW2fI6CQofK4CHln7ME
        MWAQt+kQ+od2fnNlIS/v6f6OXfpiRyclx+DR
X-Google-Smtp-Source: ABdhPJyvn95Q+H4xMOp8MLAZtA/DwvP5V5KUYAIXkHEuyG8JrM0WAG/hVq9f+wA8MbcHlFHscr57Dw==
X-Received: by 2002:a2e:b557:: with SMTP id a23mr5586986ljn.0.1602258331537;
        Fri, 09 Oct 2020 08:45:31 -0700 (PDT)
Received: from eriador.lan ([188.162.65.231])
        by smtp.gmail.com with ESMTPSA id r4sm1505597lfc.162.2020.10.09.08.45.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2020 08:45:30 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Jishnu Prakash <jprakash@qti.qualcomm.com>
Subject: [PATCH v8 10/11] arm64: dts: sm8250-mtp: add thermal zones using pmic's adc-tm5
Date:   Fri,  9 Oct 2020 18:44:58 +0300
Message-Id: <20201009154459.106189-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201009154459.106189-1-dmitry.baryshkov@linaro.org>
References: <20201009154459.106189-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Port thermal zones definitions from msm-4.19 tree. Enable and add
channel configuration to PMIC's ADC-TM definitions. Declare thermal
zones and respective trip points.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250-mtp.dts | 207 ++++++++++++++++++++++++
 1 file changed, 207 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
index 98675e1f8204..95050f7d11f2 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
@@ -24,6 +24,104 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	thermal-zones {
+		xo-therm {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&pm8150_adc_tm 0>;
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+
+		skin-therm {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&pm8150_adc_tm 1>;
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+
+		mmw-pa1 {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&pm8150_adc_tm 2>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+
+		conn-therm {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&pm8150b_adc_tm 0>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+
+		camera-therm {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&pm8150l_adc_tm 0>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+
+		skin-msm-therm {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&pm8150l_adc_tm 1>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+
+		mmw-pa2 {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&pm8150l_adc_tm 2>;
+
+			trips {
+				active-config0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+			};
+		};
+	};
+
 	vph_pwr: vph-pwr-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vph_pwr";
@@ -378,6 +476,115 @@ &i2c15 {
 	/* rtc6226 @ 64 */
 };
 
+&pm8150_adc {
+	xo-therm@4c {
+		reg = <ADC5_XO_THERM_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+	};
+
+	skin-therm@4d {
+		reg = <ADC5_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+	};
+
+	pa-therm1@4e {
+		reg = <ADC5_AMUX_THM2_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+	};
+};
+
+&pm8150b_adc {
+	conn-therm@4f {
+		reg = <ADC5_AMUX_THM3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+	};
+};
+
+&pm8150l_adc {
+	camera-flash-therm@4d {
+		reg = <ADC5_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+	};
+
+	skin-msm-therm@4e {
+		reg = <ADC5_AMUX_THM2_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+	};
+
+	pa-therm2@4f {
+		reg = <ADC5_AMUX_THM3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time = <200>;
+	};
+};
+
+&pm8150_adc_tm {
+	status = "okay";
+
+	xo-therm@0 {
+		reg = <0>;
+		io-channels = <&pm8150_adc ADC5_XO_THERM_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	skin-therm@1 {
+		reg = <1>;
+		io-channels = <&pm8150_adc ADC5_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	pa-therm1@2 {
+		reg = <2>;
+		io-channels = <&pm8150_adc ADC5_AMUX_THM2_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+};
+
+&pm8150b_adc_tm {
+	status = "okay";
+
+	conn-therm@0 {
+		reg = <0>;
+		io-channels = <&pm8150b_adc ADC5_AMUX_THM3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+};
+
+&pm8150l_adc_tm {
+	status = "okay";
+
+	camera-flash-therm@0 {
+		reg = <0>;
+		io-channels = <&pm8150l_adc ADC5_AMUX_THM1_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	skin-msm-therm@1 {
+		reg = <1>;
+		io-channels = <&pm8150l_adc ADC5_AMUX_THM2_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	pa-therm2@2 {
+		reg = <2>;
+		io-channels = <&pm8150l_adc ADC5_AMUX_THM3_100K_PU>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
-- 
2.28.0

