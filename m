Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF7C160F04F
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 08:31:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234420AbiJ0Gbq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 02:31:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234598AbiJ0GbS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 02:31:18 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7070C165500
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 23:31:09 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d24so459640pls.4
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 23:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=henhCPd8lraNCdDJWnoPIO23RxmIlqkGqlJr0QeoFWY=;
        b=WE/Xq3QwBPWoeDATpRNcL8M/G3ZKU2pYBLzvWJrmuGUvxW0GUAe1AmVjKmfKMgSzLb
         PUSSfPAITJLPvPEgGfkFysS0VwoZe9bMHVTM/0n+Hs36qUa6lJVsNBu7SP8MaR27ujgA
         WccP0bqYy2igcJ7O0h6IquokzIsz/GUepMurdUx6TzHcvD1nTkZ1F7RhOILXqM9oiSVl
         k4kCu4S2qzetpkIh4iVSMzzbQz8ZfmRwr2e3eCDtkDPNLFJUpzJdE1BWXkHx8UZjFAxg
         E7ghOFIcBGZX8rXlWcg9bEG8c4h5vM7jLsHQTrKjHwfpD+Q/ZUBUQcRpcycoB2Nvs22F
         eSvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=henhCPd8lraNCdDJWnoPIO23RxmIlqkGqlJr0QeoFWY=;
        b=oZNs0NcLSApi9FQVnilxmxUGteOFprRFIDI9h6kWdL27hOtV89WEAHzESokPojz99B
         9OMmyr0/w+/zuCw/wUxvtJVJbZwC4gFFhAAMKads04kUir6kmYMt4xB1hLX7AJ4PdeZ0
         FSsWOBY7gtDXMbygdHQ3lJ3+Nj+cSh7BYpHOc4E/TZVgARbu6AHaZVU3CWZb1bVdtvFZ
         gW3dGnzYsiEa6+UwulfqlGpa8+I3PhD8gOzwo72QbiGJ/X/rqzoQYDv3P3A/rX673OZY
         /5QzcvKqdXwPlwNDEBt/OVamihVNqukGquRqopteyB5WdNZuWFOG30PchGs7pN2kFjPo
         mkOA==
X-Gm-Message-State: ACrzQf3Ibafp4/Xg1zQgoJoSCB7B+h9QXRKJsscEWjifYAJLGpc64Gjr
        Hwh2FdaRkbIj3nJgIW7jsEe/
X-Google-Smtp-Source: AMsMyM6r5m8xHEeOyHEYSqVROVYNLWpCgVzv+sw9X1/TV9wpB2SPnM0rPpLNuEnIbWYMni4dN3ycNg==
X-Received: by 2002:a17:902:8bc3:b0:178:8563:8e42 with SMTP id r3-20020a1709028bc300b0017885638e42mr47814600plo.0.1666852268489;
        Wed, 26 Oct 2022 23:31:08 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.123])
        by smtp.gmail.com with ESMTPSA id i126-20020a626d84000000b00561d79f1064sm446041pfc.57.2022.10.26.23.31.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 23:31:07 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org
Cc:     konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, johan+linaro@kernel.org,
        quic_jprakash@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 11/11] arm64: dts: qcom: sc8280xp-x13s: Add PM8280_{1/2} ADC_TM5 channels
Date:   Thu, 27 Oct 2022 12:00:06 +0530
Message-Id: <20221027063006.9056-12-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221027063006.9056-1-manivannan.sadhasivam@linaro.org>
References: <20221027063006.9056-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ADC_TM5 channels of PM8280_{1/2} for monitoring the temperatures from
external thermistors connected to AMUX pins. The temperture measurements
are collected from the PMK8280's VADC channels that expose the
mesasurements from slave PMICs PM8280_{1/2}.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index babf594384f2..fe6b75551ab9 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -259,6 +259,74 @@ pmr735a-die-temp@403 {
 	};
 };
 
+&pmk8280_adc_tm {
+	status = "okay";
+
+	sys-therm1@0 {
+		reg = <0>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM1_100K_PU(1)>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	sys-therm2@1 {
+		reg = <1>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM2_100K_PU(1)>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	sys-therm3@2 {
+		reg = <2>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM3_100K_PU(1)>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	sys-therm4@3 {
+		reg = <3>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM4_100K_PU(1)>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	sys-therm5@4 {
+		reg = <4>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM1_100K_PU(3)>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	sys-therm6@5 {
+		reg = <5>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM2_100K_PU(3)>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	sys-therm7@6 {
+		reg = <6>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM3_100K_PU(3)>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+
+	sys-therm8@7 {
+		reg = <7>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM4_100K_PU(3)>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+		qcom,hw-settle-time-us = <200>;
+	};
+};
+
 &qup0 {
 	status = "okay";
 };
-- 
2.25.1

