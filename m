Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 716F953DD3D
	for <lists+devicetree@lfdr.de>; Sun,  5 Jun 2022 18:57:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351346AbiFEQ51 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Jun 2022 12:57:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351350AbiFEQ5X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Jun 2022 12:57:23 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A2272DF8
        for <devicetree@vger.kernel.org>; Sun,  5 Jun 2022 09:57:22 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id x5so10868961edi.2
        for <devicetree@vger.kernel.org>; Sun, 05 Jun 2022 09:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3v0LT+L5TRQJB/iw4+CcRfgsTzHHSl9FTGeCvvdSOwc=;
        b=qgHPz3TdaReH1cxeIq3iG4KrUVBqsYSjLu0v6ZXFUu4mSp/VWoQxiRWRgJw4h8ho16
         uNlDNpsXC6iGVELbks/3P6Vz9uee3hvq6SFQBGRqMVhMqlBZmBw/uEP7uc5Ljg5DkzI8
         9c873cCS/ZEOz7l2+jnDZEg3kN8rlsEpIZui0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3v0LT+L5TRQJB/iw4+CcRfgsTzHHSl9FTGeCvvdSOwc=;
        b=DnokeAdhrCI8DROTmb2GrKa5wVmlBlmy0hD+osUkr0OrLWSMG8tJpauic70aMh9uKE
         BhXg/Bmx5lVHzw70GZegcvwFac5r5aoh5wTJnbf/Bc8P5FlITLVNdZKriho1k72GYbUp
         6mWCk+0SnUXYYICBoIi9hD6uARAI6HTUk+mwMLSF2JZyAJdplTnG1Mi1m1pFqIFXLSKJ
         vSzUKsh0t+n6P5+SVIGAkSYqUb+7M2oRWuCjHCZwbuNyxcy49yl8KjrpPcfdqA685wWz
         8KF5kbsQ9y/IeuALxxvSo7H9SJbY8VUA/UNS1pHCwXAfcAtV+WSzA6S3xAn/xyy4Q4Tz
         IJUg==
X-Gm-Message-State: AOAM533ACiO+0vllLASFi733ECEwV2rf3XxN3TIG6y0NgvOZFCl2ZOie
        C4sYs+g+C2ElBpfdARb6602tAXP+EPoWEw==
X-Google-Smtp-Source: ABdhPJyIqsYGrJlIqouyy8UvdJUsQ3odJXmCfIH6JmhZ2556z5SJp5hqcbos3Vx+7ajkmq2Yr/8d3Q==
X-Received: by 2002:a05:6402:4410:b0:427:ab6f:a39a with SMTP id y16-20020a056402441000b00427ab6fa39amr22262247eda.120.1654448240628;
        Sun, 05 Jun 2022 09:57:20 -0700 (PDT)
Received: from localhost.localdomain (mob-83-225-9-201.net.vodafone.it. [83.225.9.201])
        by smtp.gmail.com with ESMTPSA id b12-20020a170906660c00b0070e3f58ed5csm3260761ejp.48.2022.06.05.09.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jun 2022 09:57:19 -0700 (PDT)
From:   Michael Trimarchi <michael@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        "Ariel D'Alessandro" <ariel.dalessandro@collabora.com>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX
        / MXC ARM ARCHITECTURE), linux-kernel@vger.kernel.org (open list)
Cc:     Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        linux-amarula@amarulasolutions.com,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX
        / MXC ARM ARCHITECTURE), linux-kernel@vger.kernel.org (open list)
Subject: [RFC PATCH 3/3] arm64: dts: imx8mn-bsh-smm-s2/pro: Add pmic clock connection
Date:   Sun,  5 Jun 2022 18:57:03 +0200
Message-Id: <20220605165703.1565234-4-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220605165703.1565234-1-michael@amarulasolutions.com>
References: <20220605165703.1565234-1-michael@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pmic clock is connected to svns_rtc using RTC_XTALI pin so we
need to mark this clock as critical. The clock source even the
wifi/bluetooth chipset

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
index c11895d9d582..072d2c480f20 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
@@ -28,6 +28,8 @@ usdhc2_pwrseq: usdhc2-pwrseq {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_usdhc2_pwrseq>;
 		reset-gpios = <&gpio4 27 GPIO_ACTIVE_LOW>;
+		clocks = <&bd71847 0>;
+		clock-names = "ext_clock";
 	};
 };
 
@@ -92,6 +94,7 @@ bd71847: pmic@4b {
 		rohm,reset-snvs-powered;
 
 		#clock-cells = <0>;
+		clock-critical = <1>;
 		clocks = <&osc_32k 0>;
 		clock-output-names = "clk-32k-out";
 
@@ -235,6 +238,8 @@ bluetooth {
 		shutdown-gpios = <&gpio1 15 GPIO_ACTIVE_HIGH>;
 		device-wakeup-gpios = <&gpio1 18 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
+		clocks = <&bd71847 0>;
+		clock-names = "lpo";
 		max-speed = <3000000>;
 	};
 };
-- 
2.25.1

