Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A2A66B04C5
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 11:40:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230450AbjCHKk0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 05:40:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230208AbjCHKkX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 05:40:23 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAC8D9F076
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 02:40:21 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id t25-20020a1c7719000000b003eb052cc5ccso932976wmi.4
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 02:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1678272021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=38POzCQRXbyYZW4IlxaDC4+cp8JTJlsDSxILe4G3dTg=;
        b=4TyjJNH1V311c7SUBgd5SkwObW8WR5bD/BPRUAie5mpuowKNbE1KgXVw5YfCtmiSHa
         Cg4+eJ7ZZS0FlDh2jm+UyEVTiSiVR/tUSUJcARX+JKyCXNHiNrygscV05WTiJAiUsQR7
         myqdGwYDTFit2x6wHYMVVALdNPla72Y5b+JL38xQt5E+eLIDp0bcXvd9EizNfOinwHD2
         /tr+cVcFUQl+iHQUtwhKLyUik8L33g8Ql7RPKBMZ5eHaYvljWgoG3FgyR5Tiq2nmo0hx
         ssEGzu7YRrTd7UToDYRy7wkeEE/+trn7JKjAH8/zufIYw83rrn3dd+UUqWSdSgJGm2un
         Sdkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678272021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=38POzCQRXbyYZW4IlxaDC4+cp8JTJlsDSxILe4G3dTg=;
        b=f3sp9Dh/73vD7nn3n9Kj63mdlHOFzYLeDSWpq9O8fiBCT5g94EJmojr9wf0L5+/ACC
         l29tTItVY8O18YWrdu23kdEqY+UcX9qeQqGovOJ+VrAudVNW4vr+qR8Ugjj/cmgkCan8
         nHTiAOWHXAy1uBeoqortJwqjZmNEY6ddV97321M3DuwW9UCBMFkNbOhgtCx5o84TBuNa
         ydCC6zpGqtYrG2c4WcCw32mMshJeaHJDuSs4Umt1JXP/QzCFiS8ECTrBQld5QDtAjdkt
         OrQRdyXPOAqwXQi5CxTLTiSEYrIEI413A23EPBzOYALBESiGdp4AUCjh7QIqgVN8ng0f
         9CMA==
X-Gm-Message-State: AO0yUKW64KzLqEGgnO/a67OWq04nZ81yx1WGV1LAPAn6M1bXzeQehvez
        ZdUW/2H5pxiTwZLJdRdwvGVJ9g==
X-Google-Smtp-Source: AK7set9qXIMGbPxBXxskaJpk8Or7rSusQoSGJR9QO5FS01fi3V5Zm5XAmyNjcbarNFEsV29FwLsl6Q==
X-Received: by 2002:a05:600c:1d01:b0:3eb:38e6:f65d with SMTP id l1-20020a05600c1d0100b003eb38e6f65dmr15465346wms.11.1678272021458;
        Wed, 08 Mar 2023 02:40:21 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2326:fd4c:82e3:7e07])
        by smtp.gmail.com with ESMTPSA id v7-20020a05600c444700b003eb0d6f48f3sm20664135wmn.27.2023.03.08.02.40.20
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
Subject: [PATCH v4 8/9] arm64: dts: qcom: sa8775p-ride: enable the GNSS UART port
Date:   Wed,  8 Mar 2023 11:40:08 +0100
Message-Id: <20230308104009.260451-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230308104009.260451-1-brgl@bgdev.pl>
References: <20230308104009.260451-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Enable the high-speed UART port connected to the GNSS controller on the
sa8775p-adp development board.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
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

