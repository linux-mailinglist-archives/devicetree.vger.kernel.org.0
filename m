Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1F636B219F
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 11:38:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231356AbjCIKiM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 05:38:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231307AbjCIKiH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 05:38:07 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B48D10400
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 02:38:05 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id l1so1340945wry.12
        for <devicetree@vger.kernel.org>; Thu, 09 Mar 2023 02:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1678358283;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SP7ogHu4uEwFtspxJxJ7OoykCfesXqAmJ+tahNVJNKA=;
        b=TRC+oJTm6Zc1b++7xNIfOjlLy+Ts7/BZZ/x8NQOaGx272Dp1l2amWSdxhGQ8woXz9t
         Sf+lD275+aGmAE1DiXz4opuuRexUsPLBHLAu6kPfwGf9cluYeiash+VpaIhONMRIpdO2
         tptM75YgR2dU10WL3KH+zUQeU4fAiy+ISqfy/oM8NNxAIqV2JSOGzMSvUWgDT9rnq/fO
         fj/re2TQr1mlJSwtB3N2rC97IHZmJxwuUFehVwkWtGmj0G3PYUPM24E6tH61QCXoVdeN
         ZACfLCYIA4SswA7CDenzWxCKc/v25GAuXwJ7JcxUskufzh1gcaDFplY7Wk/7plb9rl6E
         o2jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678358283;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SP7ogHu4uEwFtspxJxJ7OoykCfesXqAmJ+tahNVJNKA=;
        b=Pmppq9oNMqk3HL9SQwdRDsGe36jRGfABf4wGjoAkJGg94iY4A8S3hK+fKAmIXH9okq
         wevti10mOFUpW/0rOMVRmywdkFBxPd4Vp2nAP5bwGPK9HqyRIV0MUOTzutT+U+FculQB
         qrLXchTpGIwIguBkil+5kZt1BRtujmVvyzaFyN9i8G90F6dAyKfv0U17OpSC0g9OMgWm
         1ky0KjK3XdkUS61DZv2GoDiTmJU8mIjmRxwt4KP48/PtZuIvDX55IkyeCHv1+Eqf48p5
         WDm1BCJkc+N/yhBAFlXgqJ6hTtFi6jCpT855+t7e3haCDnyd+sCntBB8dGA43MdPP7Fz
         q+VA==
X-Gm-Message-State: AO0yUKWwhYJhQFJFMjhH1X+QjfEYuWrlrdB2haSRhC68+UgfyWCQBd9A
        IJtkfLxU3Ty09+6fte0T+NQgWA==
X-Google-Smtp-Source: AK7set+Gkmg9ifYkYsar4c8KmwUa26YsS53gx3ZL9qHYQtzrCCpIZx0iNO9b/XD+6XnZ/WgqPvEjaQ==
X-Received: by 2002:adf:ee86:0:b0:2c5:3fcb:681e with SMTP id b6-20020adfee86000000b002c53fcb681emr14191497wro.4.1678358283505;
        Thu, 09 Mar 2023 02:38:03 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:f14c:2275:50fc:c056])
        by smtp.gmail.com with ESMTPSA id f2-20020a5d58e2000000b002c56af32e8csm17638119wrd.35.2023.03.09.02.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 02:38:03 -0800 (PST)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v5 8/9] arm64: dts: qcom: sa8775p-ride: enable the GNSS UART port
Date:   Thu,  9 Mar 2023 11:37:51 +0100
Message-Id: <20230309103752.173541-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230309103752.173541-1-brgl@bgdev.pl>
References: <20230309103752.173541-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Enable the high-speed UART port connected to the GNSS controller on the
sa8775p-adp development board.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 33 +++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index d01ca3a9ee37..cba7c8116141 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -13,6 +13,7 @@ / {
 
 	aliases {
 		serial0 = &uart10;
+		serial1 = &uart12;
 		i2c18 = &i2c18;
 		spi16 = &spi16;
 	};
@@ -66,6 +67,32 @@ qup_i2c18_default: qup-i2c18-state {
 		drive-strength = <2>;
 		bias-pull-up;
 	};
+
+	qup_uart12_default: qup-uart12-state {
+		qup_uart12_cts: qup-uart12-cts-pins {
+			pins = "gpio52";
+			function = "qup1_se5";
+			bias-disable;
+		};
+
+		qup_uart12_rts: qup-uart12-rts-pins {
+			pins = "gpio53";
+			function = "qup1_se5";
+			bias-pull-down;
+		};
+
+		qup_uart12_tx: qup-uart12-tx-pins {
+			pins = "gpio54";
+			function = "qup1_se5";
+			bias-pull-up;
+		};
+
+		qup_uart12_rx: qup-uart12-rx-pins {
+			pins = "gpio55";
+			function = "qup1_se5";
+			bias-pull-down;
+		};
+	};
 };
 
 &uart10 {
@@ -75,6 +102,12 @@ &uart10 {
 	status = "okay";
 };
 
+&uart12 {
+	pinctrl-0 = <&qup_uart12_default>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };
-- 
2.37.2

