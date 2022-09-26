Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24A4E5E9904
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 07:54:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233442AbiIZFyx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 01:54:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233099AbiIZFyv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 01:54:51 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D6C51401A
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 22:54:49 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id a8so9102840lff.13
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 22:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nabam-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=X+VWAsBrIwEfcisjAcclNatXU+W7hYzJIi619hVAYo4=;
        b=5eAEQIvfh6PgVVrKOQDhrOJzQOEWut30eS5UsyvaikF2HxXHMsve8fRLWEzXxS8ZCB
         wV1NrRt4+sTr+4V+mDcRMM3n9AWCwUMqjFzsyyUPauf7r5ZaFkm4XATT+pJNop4OrNN6
         uAIUn1YfQjrG6guqfvBum2afvAxRSzMEKDCot/RKIZFPgJ0t+u0NgpOri+zbAyemAEr5
         bd9eV2SnBaDQF7s9Jv6SFNpSS5B+BVvG5N/9zmlQjE0sjsXMuQIc8duf2j854dnAakAI
         ZlI+x8N3CskA2+K3A67MOgsjU/xAthaRbFL8eWqY4oLqvGdBMC24IS+/6oydquK57vRn
         00BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=X+VWAsBrIwEfcisjAcclNatXU+W7hYzJIi619hVAYo4=;
        b=4h2OG6WJiV2kx6hYV5LQQEAJmtiVMVes9+IkuJeU/O8mZVw+0Vq0kFrcgLIno1T9DW
         OuNTL6iRTKG+21kTzlkfGhiWuyn+zv7A9lHHyRR+wD9R6EZw6Jpkp2EPS2iiJEdrabF2
         19j868OpvTpJw9bTxWcSPxVDY06vNEW5DbqUHDPhfaRubphTeUQ1oGt7d7fXezsSPd3N
         yQmhJRa1OjBSAiuDnSpjGf4aKhbYjKcQMUI3VzPiitREE4wjywIyE2WuOWUjizFJkzEN
         Y4qjsj0gO1km7yuCPalI7GIJKgPQTubH4FDLd7nyu7hqxe1vY2+UxEQaJwliktPqr06l
         jfJA==
X-Gm-Message-State: ACrzQf0Ysk+IZqnNyBglU1HUwlb+JPy4ogDk6gEgwcNslhiE9eBEVwd1
        cOVpziyFzmsZjjv4Q8xvkyD8JA==
X-Google-Smtp-Source: AMsMyM4cZ97MklJ5Y/TZMAOLJPoaymov4ootDnxdWi85A0d8+O+ucKqqpJBuyICClp8AYZbld8h0GA==
X-Received: by 2002:a05:6512:33c6:b0:497:9df1:a25a with SMTP id d6-20020a05651233c600b004979df1a25amr7613701lfg.562.1664171687262;
        Sun, 25 Sep 2022 22:54:47 -0700 (PDT)
Received: from 16-inch.lan (c-7f0d225c.016-470-73746f7.bbcust.telenor.se. [92.34.13.127])
        by smtp.googlemail.com with ESMTPSA id e27-20020a05651c039b00b0026c5ab1883dsm2271114ljp.16.2022.09.25.22.54.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 25 Sep 2022 22:54:46 -0700 (PDT)
From:   Lev Popov <leo@nabam.net>
To:     Peter Geis <pgwipeout@gmail.com>
Cc:     Dan Johansen <strit@manjaro.org>, Lev Popov <leo@nabam.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] arm64: dts: rockchip: fix quartz64-a bluetooth configuration
Date:   Mon, 26 Sep 2022 07:54:33 +0200
Message-Id: <20220926055435.31284-1-leo@nabam.net>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <CAMdYzYpdhJ-wWN9UAppQvaNqK8Y_RadYv2v67gD5S_u=1ZXw0Q@mail.gmail.com>
References: <CAMdYzYpdhJ-wWN9UAppQvaNqK8Y_RadYv2v67gD5S_u=1ZXw0Q@mail.gmail.com>
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

For "Quartz64 Model A" add missing RTS line to the UART interface used by
bluetooth and swap bluetooth host-wakeup and device-wakeup gpio pins to
match the boards physical layout. This changes are necessary to make
bluetooth provided by the wireless module work.

Fixes: b33a22a1e7c4248608e533fc4fa524258b3fae84 (arm64: dts: rockchip: add basic dts for Pine64 Quartz64-A)

Signed-off-by: Lev Popov <leo@nabam.net>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a05460b92415..91908081c5ed 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -740,7 +740,7 @@ &uart0 {
 
 &uart1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn>;
+	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
 	status = "okay";
 	uart-has-rtscts;
 
@@ -748,8 +748,8 @@ bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&rk817 1>;
 		clock-names = "lpo";
-		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
-		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
+		device-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
-- 
2.37.3

