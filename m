Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CE0A5EA889
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 16:36:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234376AbiIZOgN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 10:36:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234912AbiIZOf2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 10:35:28 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11C1D69F77
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 05:54:05 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id a14so7309286ljj.8
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 05:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nabam-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=iorYNtrLY89hA3M2uo9zu8tdCvtrF7NjwvF7WRrO/5U=;
        b=xYYLm7cOGYF2Vyoz2KFZEOJkJtBx7Mx4jZdHDj2GC5WchtiPipydI7B2UvI5zXbOEN
         4DDNHjDfB+yMD6Tas5eZXn/Of2DdF/Ns4MdH6R0oQ4gnGeTfQ04ieE4meBgsCCa8AOg0
         risAwjwrUpUUlI81j9m21RtaFHMLUgiNMa30fU1tJNU7uzxGi9DR/tb9s7nAgKJ+HuY8
         qU7dpSVj9dsq/DCWSgaf1aX4ziMiI8MWZSLzVUQyPM3U34QYPp8g4KHkkIg52ZWCepj9
         sUSZVcAaxPPoFUWV9Xqs2FLoKTpl1kCAeZYIVMAqZgTKX8bIVQ/RkFD8f9vobSO0v7+A
         NVcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=iorYNtrLY89hA3M2uo9zu8tdCvtrF7NjwvF7WRrO/5U=;
        b=2M5IlGzxUiI68EiIruEELp2dfl7l6GeDyGE2kYenOOn2okIbYjD195PliC6H/1dYFf
         zfSIgT2RgwhTHK7PyBM1572+GZWYlYIOXaqzzRlFEzbzoHNfikKsNI4MDCjNHTVAfsrx
         dFw/CnOp4ufMtbtwVeZvaHbm0qRrm58gr2RsBWZjPSNY0neVVuvXGY5YE8ipT0OBYBLM
         gG2SKHK1N5XwG3fHFHA2myJgXvRRX8vybcmVqAlTdq0CKhGgtAA9JNMTBc0E3+n23wDH
         WTMdYapZ12erb3259Q5J8v9T9lJ1XQwMo0zncqAtJFXVYAZWLYgM0GL7oPQdRFAnRE32
         chXA==
X-Gm-Message-State: ACrzQf1kEcXp82oPuU0eFJcq/pY7LPMQKZLPEa7eqCH7Ad06Vzeqtv8t
        plp5vUIx24Ay8bCt9gp86/0FZpLwnkzINTA2jj8=
X-Google-Smtp-Source: AMsMyM50SWU4pS4xYv36iF42UW3GLEr4IvXbLPJoedh4+BC08jAN8LA9ONtEaabueblTk6/kUm64JA==
X-Received: by 2002:a2e:a30f:0:b0:26d:9162:9451 with SMTP id l15-20020a2ea30f000000b0026d91629451mr2755347lje.164.1664196843171;
        Mon, 26 Sep 2022 05:54:03 -0700 (PDT)
Received: from 16-inch.lan (c-7f0d225c.016-470-73746f7.bbcust.telenor.se. [92.34.13.127])
        by smtp.googlemail.com with ESMTPSA id d25-20020ac25459000000b0048af4dc964asm2530772lfn.73.2022.09.26.05.54.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 26 Sep 2022 05:54:02 -0700 (PDT)
From:   Lev Popov <leo@nabam.net>
To:     Lev Popov <leo@nabam.net>
Cc:     Dan Johansen <strit@manjaro.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4] arm64: dts: rockchip: fix quartz64-a bluetooth configuration
Date:   Mon, 26 Sep 2022 14:53:48 +0200
Message-Id: <20220926125350.64783-1-leo@nabam.net>
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

Also set max-speed on the bluetooth device as it's not automatically
detected.

Fixes: b33a22a1e7c4248608e533fc4fa524258b3fae84 (arm64: dts: rockchip: add basic dts for Pine64 Quartz64-A)

Signed-off-by: Lev Popov <leo@nabam.net>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a05460b92415..25a8c781f4e7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -740,7 +740,7 @@ &uart0 {
 
 &uart1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn>;
+	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
 	status = "okay";
 	uart-has-rtscts;
 
@@ -748,13 +748,14 @@ bluetooth {
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
 		vbat-supply = <&vcc_sys>;
 		vddio-supply = <&vcca1v8_pmu>;
+		max-speed = <3000000>;
 	};
 };
 
-- 
2.37.3

