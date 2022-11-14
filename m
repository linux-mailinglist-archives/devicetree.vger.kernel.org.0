Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F11F66279D2
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 10:59:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237098AbiKNJ7U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 04:59:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237027AbiKNJ6k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 04:58:40 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 597721FCED
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 01:57:15 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id u11so12406068ljk.6
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 01:57:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MLJtGqbbAuvt7hlzediwejrBOt3AE1EPLmO7ITdmCW0=;
        b=VwezdBBBBhMUCoZtkjAXloTyM2ZV+O+pBIbLLMCGBn3L7cK7zzR7XwviANcdIpQhHg
         rKWoexfpEICTZ8UoRj2j972pt1WzvsP0AN+JnyHPo82y2v5YJ0fKRYTKtA6MIH5PuI3K
         IZq+FumssAVx2Iu7dIkllSMZGlYPxTMN++24I+lY8ghsozFUswBbhm3oTt2J+aMn9XGn
         ++skQDS1I4NB3Hzyv0RwfaeyyPmTnpu1mo+iSdQPIKY2Ts7ipKnwRT2iFWDbyGOZnQuL
         sX2dqYWvFKEfikzpnv/WkDCkCTkDvTOWQVYa61sWrCbZOkDJoX2D0USbQ4sQ+hTiF8Og
         y3sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MLJtGqbbAuvt7hlzediwejrBOt3AE1EPLmO7ITdmCW0=;
        b=C7SvpKESAPmg/Mk91eMw1NxFXPpS3jAQ8y/Ejcpqe4N0uO7AGNyGwL3XYIVgf9Zn59
         0cVSetq6RByIZ0xcDblVxenHl9GsAhVx/uKik5vIzrq5l0Ffg/DnK+HGFLelS6Z7YtA3
         Uz5Mo+tK3VSJKhj6F3cq4SavKA4zf7fgr74yKlDzw5s2/A1xnsVJdRGbHCdBiwdcyAKX
         ErYlANAIeqH+2mmB6CW/Y64BXNgIugw+MX1WOPwO42dSrFzUF8HWRATwlm41FDpF+qAP
         b1FFQET7IY2OBntlGNePgZrzVgd37dieeqyaMr5eLnC6aDPNSfV+j1s3hbqeF6kgCwzu
         mAcQ==
X-Gm-Message-State: ANoB5pk3397ouWjL0Qp4PCB89umfu1HnJChqfib7yuPlIG56Q4uLywf/
        rY0dOvtKEBNBo0fi9A8Hx3+R8w==
X-Google-Smtp-Source: AA0mqf5SqUNrdMbnYxgvsQNWerF5Az4A0cIwG0rn2W6UM9NvXMLW1ijKLtdIqTQT6DF+mAFU4FMDYg==
X-Received: by 2002:a05:651c:1988:b0:278:f1a5:a365 with SMTP id bx8-20020a05651c198800b00278f1a5a365mr2623603ljb.29.1668419827443;
        Mon, 14 Nov 2022 01:57:07 -0800 (PST)
Received: from localhost.localdomain ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id p12-20020a2eb98c000000b00278e7800715sm1832012ljp.16.2022.11.14.01.57.06
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 14 Nov 2022 01:57:07 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: qcom: sm8450-nagara: Add Samsung touchscreen
Date:   Mon, 14 Nov 2022 10:56:54 +0100
Message-Id: <20221114095654.34561-4-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
In-Reply-To: <20221114095654.34561-1-konrad.dybcio@linaro.org>
References: <20221114095654.34561-1-konrad.dybcio@linaro.org>
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

Add device node and required pinctrl settings (as well as a fixup for
an existing one, whoops!) to support the Samsung Electronics
touchscreen on Nagara devices.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
No changes since v1

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

