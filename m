Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1AA76B04D0
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 11:40:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231299AbjCHKks (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 05:40:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231197AbjCHKkZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 05:40:25 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA749ADC28
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 02:40:23 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id r18so14897228wrx.1
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 02:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1678272022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7VRi2G4KEj+b07eyuUbygI6sMFWcdu49W+sjsRAYS8M=;
        b=hO8I0bUFQcnMGnrxYs8/YBjnrSOXnpbVZ8zhD6i95pbMuPxPeUww+PZ8y45xlUvNKn
         Yxb08P8YKQ7NjdQelZtIIJ9EFYzIcvMrlmMo7++0V0/LK3WTboslwdEUU+AdGEQHB6EV
         4mb3ArygA/1wR53r1PHEXj8hj+wagQRYe3s57ts4d1P3MpXmWX5EpX51KK7rxLldLVpz
         5MuNMyj1luKVCWX9Cmy56M20o5enhtQkMVTNb9lay5DvpdF7NnPaK/teQXTtjf9dAxgF
         mJXlTR7V+T3JpivJww0TUSI+Bp1a+8RTNZOYsdqMZf78HAcCYcLGwFVYirb73gpm/Zkx
         M6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678272022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7VRi2G4KEj+b07eyuUbygI6sMFWcdu49W+sjsRAYS8M=;
        b=DtCx64Fa6sIZ8M02QwLpHMhkuKmcfuBfQUAYl/1ahx8bCR58A8jVUXqw6QRjXEd40g
         4VChyDA8kFbSgqB7g9WKoKwi/b8ks0f3pNZzStdV9szCufyLXCe33lgbfwV8xV2RqJLW
         zAEHTQZ9WpWhwo0sWppPS+cEjzC+fABcpR8kJPowPc5ga+pARC8VQ4pcczOLRdDiCq6U
         Tv7uY3KbZ5hkrbhFcpxHZTt7VMLWPDrITPwWByR8S6b+QTvq3ksOShrEZweA0wP8EYQC
         Oh+SryrZ3/7XqpGJ2I+Dk4jJziECodTk3+ZvKbMND0V6mHCk8wHCBpkkiO0oDXqdJuJt
         IkXw==
X-Gm-Message-State: AO0yUKVFGpaerrRM8l6tGkpwLo8DzF2sq/rpjUaqTKFXY7sPacjT/u9X
        XJk4pN5aGUgir2po/znRS0CC8A==
X-Google-Smtp-Source: AK7set9lelZGFTTF9YlnT63adLtXhi/OkMhUig2peNQtn061vlw2LCyNIHpLvkz7rM0fsamUlOdE+A==
X-Received: by 2002:adf:e70a:0:b0:2c9:e3d:88ca with SMTP id c10-20020adfe70a000000b002c90e3d88camr11179433wrm.67.1678272022251;
        Wed, 08 Mar 2023 02:40:22 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2326:fd4c:82e3:7e07])
        by smtp.gmail.com with ESMTPSA id v7-20020a05600c444700b003eb0d6f48f3sm20664135wmn.27.2023.03.08.02.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 02:40:21 -0800 (PST)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v4 9/9] arm64: dts: qcom: sa8775p-ride: enable the BT UART port
Date:   Wed,  8 Mar 2023 11:40:09 +0100
Message-Id: <20230308104009.260451-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230308104009.260451-1-brgl@bgdev.pl>
References: <20230308104009.260451-1-brgl@bgdev.pl>
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
index cba7c8116141..1020dfd21da2 100644
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
@@ -93,6 +94,32 @@ qup_uart12_rx: qup-uart12-rx-pins {
 			bias-pull-down;
 		};
 	};
+
+	qup_uart17_default: qup-uart17-state {
+		qup_uart17_cts: qup-uart17-cts-pins {
+			pins = "gpio91";
+			function = "qup2_se3";
+			bias-disable;
+		};
+
+		qup_uart17_rts: qup0-uart17-rts-pins {
+			pins = "gpio92";
+			function = "qup2_se3";
+			bias-pull-down;
+		};
+
+		qup_uart17_tx: qup0-uart17-tx-pins {
+			pins = "gpio93";
+			function = "qup2_se3";
+			bias-pull-up;
+		};
+
+		qup_uart17_rx: qup0-uart17-rx-pins {
+			pins = "gpio94";
+			function = "qup2_se3";
+			bias-pull-down;
+		};
+	};
 };
 
 &uart10 {
@@ -108,6 +135,12 @@ &uart12 {
 	status = "okay";
 };
 
+&uart17 {
+	pinctrl-0 = <&qup_uart17_default>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };
-- 
2.37.2

