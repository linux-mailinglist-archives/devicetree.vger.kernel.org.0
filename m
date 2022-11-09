Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 357E56229F1
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 12:13:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230099AbiKILNc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 06:13:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230311AbiKILNN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 06:13:13 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99D5F29C8E
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 03:12:59 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id v27so26703221eda.1
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 03:12:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7ORdNvCZeW1eLAFgDoT00Z0MnsQHTXCI5a/39+Z9Rwg=;
        b=H+DqAPYQ+juP9L8EStGj6rtNPo+W1K7Y9V83bFMIe7nWZmoht8czm8SMlj9aisAmck
         C3uASnAdE3qgYNqg2/UWCBu4Yf3YSKrygbvAo9crUIxFD/xIf5aF7jl7guWQ7k1Y6fTq
         lP5vAyrR9rVC59uTchwPMy1lihErdHwMH1uZRLpNWDggMTLPfGce1KBVJowJl6PnmoOr
         RWYou4rosw1WZkGGnOMLo+TTOhNp+yuG2Ze53DgCLvadpKvKtkSqzl8dqeCtLkLA7ErJ
         SI3J35dq2UOEg71TFsPzwJ9iYy3+f/2mC7rquoe8boLZjAcZqpIFnsAi5DG4fox5TeVX
         6a1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7ORdNvCZeW1eLAFgDoT00Z0MnsQHTXCI5a/39+Z9Rwg=;
        b=bEPl8JxUdl5mImqjW07nGFJHg84DY6ypp2o6cnmYdOzuAgARSgFYZSn8170zbKyZkX
         P/WIir4fhQHc+niz184/Muhsf7LQ2zvry9m/X6IIhOCMEQWjfIoEBSvNPaD0LG8f3Iue
         ex+DFfuolEQy1BFlco0WKer4peynLOycxtzeUAXHdNLk6ADEkvDV5MD8XPv8NA3f2x3Z
         h6nCCAFFzogE8YzzUPuhh3rZjdWhn2tjHnBYvEIs3oBWwukOusSr0G7QbRpWzMb7p0FZ
         1dsNWyn2gHKXOCgfFxEskFGr56P4FzUFf8D6ysxHtKBXmN+HFsdnsp25TxjAdalCSpBS
         QVnQ==
X-Gm-Message-State: ACrzQf2WKidV3VImxCaD6qrxynjS8Ee/nd82Hh2o79sg/JnZs+KsxsEx
        6a0LXI8bRpP1NHxnRw1qRgwVZg==
X-Google-Smtp-Source: AMsMyM455QkPeaIE50OfnLrA6tvN0gkcUk54pjOM6YPFBWmAo9uMmusfVz+yHWHIVJAYWKBKtCyDDg==
X-Received: by 2002:a05:6402:1b01:b0:463:a54a:d551 with SMTP id by1-20020a0564021b0100b00463a54ad551mr44890196edb.428.1667992378115;
        Wed, 09 Nov 2022 03:12:58 -0800 (PST)
Received: from localhost.localdomain ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id k8-20020a1709062a4800b007ad9c826d75sm5825899eje.61.2022.11.09.03.12.56
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Wed, 09 Nov 2022 03:12:57 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 10/10] arm64: dts: qcom: sm6375-pdx225: Configure Samsung touchscreen
Date:   Wed,  9 Nov 2022 12:12:35 +0100
Message-Id: <20221109111236.46003-11-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
In-Reply-To: <20221109111236.46003-1-konrad.dybcio@linaro.org>
References: <20221109111236.46003-1-konrad.dybcio@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a pretty bog-standard-for-Xperias-for-the-past-3-years
touchscreen setup.

The OEM that built the Xperia 10 IV for SONY decided to use some
kind of a GPIO regulator that needs to be enabled at all times
for both the touch panel and the display panel to function.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 .../qcom/sm6375-sony-xperia-murray-pdx225.dts | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
index 17094e588a3a..33083f18755b 100644
--- a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
+++ b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
@@ -78,6 +78,23 @@ &gpi_dma1 {
 	status = "okay";
 };
 
+&i2c8 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	touchscreen@48 {
+		compatible = "samsung,s6sy761";
+		reg = <0x48>;
+		interrupt-parent = <&tlmm>;
+		interrupts = <22 0x2008>;
+
+		vdd-supply = <&pm6125_l13>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&ts_int_default &ts_avdd_default>;
+	};
+};
+
 &pmk8350_adc_tm {
 	status = "okay";
 };
@@ -287,6 +304,20 @@ &qupv3_id_1 {
 
 &tlmm {
 	gpio-reserved-ranges = <13 4>;
+
+	ts_int_default: ts-int-default-state {
+		pins = "gpio22";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-pull-up;
+	};
+
+	ts_avdd_default: ts-avdd-default-state {
+		pins = "gpio59";
+		function = "gpio";
+		drive-strength = <8>;
+		output-high;
+	};
 };
 
 &usb_1 {
-- 
2.38.1

