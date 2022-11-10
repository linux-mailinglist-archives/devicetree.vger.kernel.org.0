Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA88E624DC2
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 23:46:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231841AbiKJWp7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 17:45:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231761AbiKJWpz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 17:45:55 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61A5251C25
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 14:45:53 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id g12so5795975lfh.3
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 14:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u2CHxh4+qa1IUtqHMSX/xLsGY6KjQpT6VVJVrVjdc7I=;
        b=cEphRkUL9M3GrhvAzj190NPj/UFMv1fGcvjPyUdb3JAFQdSo0rQ/bnL3y31/A9wUHc
         S+uhkD5Xzp0FtGyaWW/FWG2EF5wQgpojIBcAm5DqmFkKw7NPM/EaNmRQHD8ur4EnscTl
         Vv3JxfycZaHTAFzqd5U0IelbGdUuvFwdvNDIAnA/AQFShQuCaTXtLlQW10daa6A7Cf5C
         fvifsAmbpobwnIFI8uWi48t6GfzI/Y+E0vHGnRyrlSD2v4jozGGUo0tV4ramsWB1DWLN
         obPydlqAk2qHYEU4rKwADVRwh/t8m9ecc5WvBso1dSWH08Q32Lpv5jhaRR8USE8kBzkC
         yQ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u2CHxh4+qa1IUtqHMSX/xLsGY6KjQpT6VVJVrVjdc7I=;
        b=rnRxPG4QXm3Pv+RKMwheOV0F2ORA6NWML8VO18ZaiX9OkOScesT9+3w7gN94s+oFi9
         WgduiiETdVrsXJEMjzpeV4ncsOmb1svIvbZLBj/LWGmmBStJfoDQQl4tcvytY/SGj+1Y
         PvsN0cWm6gRLl/pV/jBsGqCA1BZ57lXmce0lf7OTlwARw1yOk6lHGKUSD4nv+TCZ43Xu
         ltuP3PToEq+Fe5OXxAJU92GfUzsAxLynWA0mpGtfWi9XALMDIeV5hb8yYpucMMUZyIiN
         srEx2QhDrnTTiJGOnmQxoVBTYTACHjGNF4t5uL8A+3l47dGZpaxUcIHYH9BgZlMYLswF
         csuw==
X-Gm-Message-State: ACrzQf3Id4yjnoWPc/tepRwEEoNV0cyUMrwlyjrmmPzYXv9lxNqYRFFt
        FtFgGzIZvrpYAPjTyz9jJ6aMAQ==
X-Google-Smtp-Source: AMsMyM5c631sJkh1+jBNyYDX2Hb5GF1uvUPvgYBf27t/GfaX28EKYVVOyHG6l5XU3erjBwnn+OuBVg==
X-Received: by 2002:a05:6512:3fa0:b0:4a2:8780:c200 with SMTP id x32-20020a0565123fa000b004a28780c200mr1813053lfa.245.1668120351714;
        Thu, 10 Nov 2022 14:45:51 -0800 (PST)
Received: from localhost.localdomain (95.49.32.193.neoplus.adsl.tpnet.pl. [95.49.32.193])
        by smtp.gmail.com with ESMTPSA id k4-20020a05651239c400b0048a934168c0sm55315lfu.35.2022.11.10.14.45.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 14:45:51 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: qcom: sm8450-nagara: Add Samsung touchscreen
Date:   Thu, 10 Nov 2022 23:39:29 +0100
Message-Id: <20221110223929.134655-4-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221110223929.134655-1-konrad.dybcio@linaro.org>
References: <20221110223929.134655-1-konrad.dybcio@linaro.org>
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

Add device node and required pinctrl settings (as well as a fixup for
an existing one, whoops!) to support the Samsung Electronics
touchscreen on Nagara devices.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../dts/qcom/sm8450-sony-xperia-nagara.dtsi   | 27 +++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
index 0d8d1519a23b..38256226d229 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
@@ -435,7 +435,22 @@ &gpi_dma2 {
 	status = "okay";
 };
 
-/* I2C4 is used, it hosts a Samsung touchscreen, but GPI DMA is broken.. */
+&i2c4 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	touchscreen@48 {
+		compatible = "samsung,s6sy761";
+		reg = <0x48>;
+		interrupt-parent = <&tlmm>;
+		interrupts = <21 0x2008>;
+		vdd-supply = <&pm8350c_l2>;
+		avdd-supply = <&pm8350c_l3>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&ts_reset_default &ts_int_default>;
+	};
+};
 
 &i2c5 {
 	clock-frequency = <400000>;
@@ -566,8 +581,16 @@ &spi10 {
 &tlmm {
 	gpio-reserved-ranges = <28 4>;
 
+	ts_reset_default: ts-reset-default-state {
+		pins = "gpio20";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+		output-high;
+	};
+
 	ts_int_default: ts-int-default-state {
-		pins = "gpio23";
+		pins = "gpio21";
 		function = "gpio";
 		drive-strength = <2>;
 		bias-disable;
-- 
2.38.1

