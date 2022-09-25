Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E17E5E931B
	for <lists+devicetree@lfdr.de>; Sun, 25 Sep 2022 14:32:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229505AbiIYMch (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Sep 2022 08:32:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230009AbiIYMcg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Sep 2022 08:32:36 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22BDD2CDFB
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 05:32:35 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id a14so4721474ljj.8
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 05:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nabam-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=SyIJ4xReYhaGfQD9IOYV1GyBGeZ/knL4/dXn4A3KuoE=;
        b=Pr9jz7KbT19OgX66iH/phdojxtRKaOKcFxrfTjDq7xBaKP8mtxi32TE+qatCpZC8y0
         le+P0+FzawTdPPtnCIQzuyPEfcXgU89k7pPNZVFZKZnWuhIYEKbfMY6ElsG7zJGSq8wx
         LJpEArX4XO4RueOvJLBPv+X9l4RO3BjKLwow9ztk1Dfv0h2bj9JhI8lIDiLlJXE7XLIf
         hSel8yHVyevK9QxSxXTCeogTo2vOvzIJsqA7YnJrTVCJrsqOAGsr+qgtuM7VHSqHEJK0
         LXmpzSRjrGvxPq5gdYcmIMkWO0BMOzHWx5CV/YsM2Q2R4Uaeex11CB9wCu/YMA4AbeGU
         vZDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=SyIJ4xReYhaGfQD9IOYV1GyBGeZ/knL4/dXn4A3KuoE=;
        b=t31HoTrpiI3QTx82mB87/VNAgqHbq0ZSg0XpVeSK4v+lmiDGWM7Qahb6hXzMEQ6f75
         swQUmBRnSffsLgGnkfQ4R8w804HtMxxznqlb/PeJqVNGO7zhq8PqI92hV1F93v/HdLYN
         fcdhPdEh9+a3eQtYVefQw3wfaKqE68UljlwkEyySWdbWiO+BmFY61osBLUQFjCZ7rJst
         9UeEzPlu+rVHuJmCp6eBBexMNdCPDQYo1t/4+djvDsebBkFYzm/f5yINHwz1u0cLTiKX
         o8bzE5xghNnVOgLgV7FUZFtaysI1yM7hy4w26sbAHZk0bwytk4k/yErxhbH4Akqk+rIy
         VwZA==
X-Gm-Message-State: ACrzQf2GOqAWzrIqIfIBBZBDvQups0AuScfwCeLHnrwv/t/ayq0wgjlJ
        mW4LecwFbZOj8IKtDIgug/9p7A==
X-Google-Smtp-Source: AMsMyM5qTBOpkg1FJNpj8S8lFhgO+0g1sh5ifRCx6thJjhYreEe7ogJkgbWKCbl8UMHemr9lz4t0YA==
X-Received: by 2002:a05:651c:1548:b0:26c:61b3:7129 with SMTP id y8-20020a05651c154800b0026c61b37129mr5599032ljp.381.1664109153337;
        Sun, 25 Sep 2022 05:32:33 -0700 (PDT)
Received: from 16-inch.lan (c-7f0d225c.016-470-73746f7.bbcust.telenor.se. [92.34.13.127])
        by smtp.googlemail.com with ESMTPSA id y6-20020ac24466000000b00492e69be4d6sm2202314lfl.27.2022.09.25.05.32.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 25 Sep 2022 05:32:32 -0700 (PDT)
From:   Lev Popov <leo@nabam.net>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Lev Popov <leo@nabam.net>, Peter Geis <pgwipeout@gmail.com>,
        Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: fix quartz64-a bluetooth configuration
Date:   Sun, 25 Sep 2022 14:31:42 +0200
Message-Id: <20220925123144.70639-1-leo@nabam.net>
X-Mailer: git-send-email 2.37.3
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

