Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC8896994EA
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 13:53:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230447AbjBPMxU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 07:53:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230462AbjBPMxN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 07:53:13 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C76AB48E0E
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 04:53:09 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id l2so1802493wry.0
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 04:53:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y7uOoIM/ZRg0/gRsck8jf0SfprCY2FGC+Fvuy6yN0cU=;
        b=fPkAi4CQml76sUQkY6HVbTV58puI9K5+Y647bTINfv4YSDC3Lwk1ywAEfNb97YZLMS
         PKryfMPzh4sWPNuJXpcoIJBIYYgO1MJrdA0WxDg1ok3HACqnXaO24w9R7e+KbMVeQt+s
         L0pspxbKqVzg+zFB6hzb0iCxi3dAuq+lnZ3owM8KMQzKfvCBS82qtbYXUlThm21SAIf4
         JsC8SFef6Md824r1IufIKTreB56D37SdnnRPmY1kbOfzuJ2blFPLV94tkK0dAk32UDKe
         xa7xkNLuza7lT0tLahiWWwC5hTqB6rw+KVyoOfZi2E64eR3se2hBtch0AtWAWDzUJtmS
         8lMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y7uOoIM/ZRg0/gRsck8jf0SfprCY2FGC+Fvuy6yN0cU=;
        b=rBbkK9O8iFVqwFEOlS0WZ7lh5n4hsYbeIgD2Nr3lqZg16gU6HKP9S8A2CAmx/GNwHO
         rur/7NFtevchNsTzqMGTsaMqLDfYV1tXAV6GnD21dq7tED/M0OpE9hHkPrUsHB1znEhv
         kyrIlap6U4F9AT7j5suXwdLmkbeL/40OPsdvTNkf1IHc2qXf3O86NH/eSzvkGT9x8ADW
         b7AMj/ExuZUsLzBjTYNJFa/ywI8InKa8s1ZD9guKvM37xy51KhZTF16m+35RVlr29JW5
         fKRM9X81TSna8NCH5lfP+QF6q3apPub2iqO6cZgh1A9y0+lzo7rNtUPxVY0Zq6XYGime
         JWOQ==
X-Gm-Message-State: AO0yUKXc1dDJrHiY83nSpV3dsjUOvpbXyPtXd/IIK4NP9Tz6qDTd13Xs
        qnhIZ2T5N0cak2joNgWSP9FBUA==
X-Google-Smtp-Source: AK7set+/NiMGAZRAJZ7qxw6w9doBfQNzPfKzK290K1n3NTgUPyfQ3H+vcHbgP3WrFvbklGAWJsoPQg==
X-Received: by 2002:a05:6000:180e:b0:2c5:4aad:db85 with SMTP id m14-20020a056000180e00b002c54aaddb85mr4476913wrh.37.1676551989337;
        Thu, 16 Feb 2023 04:53:09 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:7c5b:1160:db5d:72da])
        by smtp.gmail.com with ESMTPSA id h18-20020adffd52000000b002be5bdbe40csm1453292wrs.27.2023.02.16.04.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Feb 2023 04:53:08 -0800 (PST)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v3 9/9] arm64: dts: qcom: sa8775p-ride: enable the BT UART port
Date:   Thu, 16 Feb 2023 13:52:57 +0100
Message-Id: <20230216125257.112300-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230216125257.112300-1-brgl@bgdev.pl>
References: <20230216125257.112300-1-brgl@bgdev.pl>
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

Enable the high-speed UART port connected to the Bluetooth controller on
the sa8775p-adp development board.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 33 +++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index 6f96907b335c..1de3b9d4a05a 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -14,6 +14,7 @@ / {
 	aliases {
 		serial0 = &uart10;
 		serial1 = &uart12;
+		serial2 = &uart17;
 		i2c18 = &i2c18;
 		spi16 = &spi16;
 	};
@@ -89,6 +90,29 @@ qup_uart12_tx: qup-uart12-tx-state {
 	qup_uart12_rx: qup-uart12-rx-state {
 		pins = "gpio55";
 		function = "qup1_se5";
+	};
+
+	qup_uart17_cts: qup-uart17-cts-state {
+		pins = "gpio91";
+		function = "qup2_se3";
+		bias-disable;
+	};
+
+	qup_uart17_rts: qup0-uart17-rts-state {
+		pins = "gpio92";
+		function = "qup2_se3";
+		bias-pull-down;
+	};
+
+	qup_uart17_tx: qup0-uart17-tx-state {
+		pins = "gpio93";
+		function = "qup2_se3";
+		bias-pull-up;
+	};
+
+	qup_uart17_rx: qup0-uart17-rx-state {
+		pins = "gpio94";
+		function = "qup2_se3";
 		bias-pull-down;
 	};
 };
@@ -109,6 +133,15 @@ &uart12 {
 	status = "okay";
 };
 
+&uart17 {
+	pinctrl-0 = <&qup_uart17_cts>,
+		    <&qup_uart17_rts>,
+		    <&qup_uart17_tx>,
+		    <&qup_uart17_rx>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };
-- 
2.37.2

