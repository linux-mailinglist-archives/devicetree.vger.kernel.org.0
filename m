Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77F0761774E
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 08:11:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231180AbiKCHLJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 03:11:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231255AbiKCHKk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 03:10:40 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA07718391
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 00:10:30 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id y4so1107265plb.2
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 00:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YXjotbp4XPu3PRod81r/QLTNrvEzekXOSUQtWFcnvmc=;
        b=Ec4ehpQPDSgFfP8mfI8RI+xV6KG4sj0UTy630JsqYuku/HBDM0IANsjY4eIbKIEkrR
         5wavJWBm0FQud0qz1tnGM0KSTUGIboYTGiosfzfGuWVwHCVTGwNa+r4kvzQckrDvQJQp
         4fLPMszttJq/MW87OVeAkJbpJJB6AmZwsgh44tVuPFgDJK0o80TsFynG/W5i/AN9Gex5
         qsg2fqnnvO3IdaIkE9MGNl7VhGULksDNKdQv2qYDB1Y/V0eFVsJeAZY889RTFABQ/hK8
         HiqNQcxkZOlwjazW6UeVQIEcefYznYTy55odulSj3dAKPs929jvfm8mVnKsqc5cXTlFf
         ZUYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXjotbp4XPu3PRod81r/QLTNrvEzekXOSUQtWFcnvmc=;
        b=0Nn92edlREaoPVtb9GELjx4YbvLi989j8j8HKsbW13eh8J5p/x+CfRt3elp3lebODm
         le/hldQbTw8Gh3Q34eQcaRnRxct189/nNyvW1HGQW8BAHe9s3G4EzBebLANmlYnuCt4E
         YW4k+9O4CwsoswOPp7+gHfcfsyNG+EEKhSHT/ZQLw1mkimtCwKXpNWeSKXysWZtyHRZV
         Rl/ENTnr9WTKBAjHw/6WDFTn4uMfMxmW7lnWtku14X2+qut8Jtci+Z1jzBBWFp1AyGC2
         LQ/NFcR09j14QYdNfCW9hDOF4Wep3d8hmpOuhj6L4GkW4s8kc+ZRH20eeiyTvJrUrkPU
         JvAA==
X-Gm-Message-State: ACrzQf1hRnWkwRvyw5L2H7L6DJ+RObeZpkl/4DanAwU2KqL6OynMsW27
        cWEsCc29rEMFatwqDgRsm5YfA4XmDOs7
X-Google-Smtp-Source: AMsMyM7zubYthMkUto1azMsYnDoXByeydIcgwBc/9BEZI/xY+68+/TfnRWaOtO9ZIVmNGrdqrj3URw==
X-Received: by 2002:a17:90b:3510:b0:214:2af4:f8ae with SMTP id ls16-20020a17090b351000b002142af4f8aemr7906107pjb.173.1667459430076;
        Thu, 03 Nov 2022 00:10:30 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.64])
        by smtp.gmail.com with ESMTPSA id s9-20020a170903214900b00186748fe6ccsm9451244ple.214.2022.11.03.00.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 00:10:29 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org
Cc:     konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, johan+linaro@kernel.org,
        quic_jprakash@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        steev@kali.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 11/12] arm64: dts: qcom: sc8280xp-x13s: Add PM8280_{1/2} ADC_TM5 channels
Date:   Thu,  3 Nov 2022 12:39:10 +0530
Message-Id: <20221103070911.20019-12-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221103070911.20019-1-manivannan.sadhasivam@linaro.org>
References: <20221103070911.20019-1-manivannan.sadhasivam@linaro.org>
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

Add ADC_TM5 channels of PM8280_{1/2} for monitoring the temperature from
external thermistors connected to AMUX pins. The temperture measurements
are collected from the PMK8280's VADC channels that expose the
measurements from secondary PMICs PM8280_{1/2}.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index d0077c7a7a6e..fdeb7718a596 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -259,6 +259,74 @@ pmic-die-temp@403 {
 	};
 };
 
+&pmk8280_adc_tm {
+	status = "okay";
+
+	sys-therm@0 {
+		reg = <0>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM1_100K_PU(1)>;
+		qcom,hw-settle-time-us = <200>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+	};
+
+	sys-therm@1 {
+		reg = <1>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM2_100K_PU(1)>;
+		qcom,hw-settle-time-us = <200>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+	};
+
+	sys-therm@2 {
+		reg = <2>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM3_100K_PU(1)>;
+		qcom,hw-settle-time-us = <200>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+	};
+
+	sys-therm@3 {
+		reg = <3>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM4_100K_PU(1)>;
+		qcom,hw-settle-time-us = <200>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+	};
+
+	sys-therm@4 {
+		reg = <4>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM1_100K_PU(3)>;
+		qcom,hw-settle-time-us = <200>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+	};
+
+	sys-therm@5 {
+		reg = <5>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM2_100K_PU(3)>;
+		qcom,hw-settle-time-us = <200>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+	};
+
+	sys-therm@6 {
+		reg = <6>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM3_100K_PU(3)>;
+		qcom,hw-settle-time-us = <200>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+	};
+
+	sys-therm@7 {
+		reg = <7>;
+		io-channels = <&pmk8280_vadc PM8350_ADC7_AMUX_THM4_100K_PU(3)>;
+		qcom,hw-settle-time-us = <200>;
+		qcom,avg-samples = <2>;
+		qcom,ratiometric;
+	};
+};
+
 &qup0 {
 	status = "okay";
 };
-- 
2.25.1

