Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6430A718719
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 18:12:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229566AbjEaQMj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 12:12:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbjEaQMh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 12:12:37 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6F95125
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 09:12:36 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-39a55e5cfc0so601253b6e.3
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 09:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685549556; x=1688141556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Mgi1xCWZGOa//ARDGoMV+dgV7iPjlGc+gvDlG8j5pY=;
        b=PZnucp9l3cbOJYNS4ueddqjEEZ8mcfJ6W0Ck4NznYJ3LEwRyWjnQW88S048hfUOv/v
         4aW89ZLe6NY8KKzO+clT1PS3V88icDIWjFnQwkY/AR81uwVvRihKIqvb9LsZVIZoTJW8
         AGSSuuZyxbtEa0sCh7fY8vJ66aohXoiCUbIC/Zuv8GOnvb+p14/G7v0K76+If8Sgch7r
         Dro43qtKqIt/tRf50jhZCprtkOYedvPxh0JpcJwK9R5b6tkjWTv9mWLj/LNcbyiH8mXP
         BiRdbbsWCyJNYN5SSvhD/9eFMK9JiEJ0Js3bDVgdr2u/+i2MYzRoGCmHeURBnF+RTOCf
         j8EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685549556; x=1688141556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Mgi1xCWZGOa//ARDGoMV+dgV7iPjlGc+gvDlG8j5pY=;
        b=Km3iEGcuSTFhUW5s4XBLIv+yfPC02RBx9VFKzPG1M1A8gwMR/gv70Fs2eILB+Z1Pjr
         6RkUEklWNsV7EWt2A/3BVFWfS1/Fp4EGhfN5qOEXUHAyq/nH1QPQOBb7hX+uxbaCat7N
         5ZSIu1VeNiVJxJ9+5KahfPlIBIKkqEk9E87cskHd8wwXph0CAjEwiMad5xFRocrOosAN
         VXT8thgLCy7L/PapQ1kSfR5+nLJZNDodOUp1U6isgTcbal8hVP2Ku4B1ZeBozPjpJuQ3
         M4bvFsZeWtTZ9DkinnXA3Z+2p+oWTWbQbn64oeZm7hBcKaYRLFRH689Bm9ohYZL8Ihdr
         NU1A==
X-Gm-Message-State: AC+VfDxczW59ZTSGvuA7o2Z7TF17fIEGy9LbF4/jPkRy7VYJaC52t5Vu
        lNJXtf7IUsfY0izKK2c6KJE=
X-Google-Smtp-Source: ACHHUZ7LVp2g0t8qTz5y+O/1IpqRwIgac7m9ArAcTHcTrsSWH/DIvSNEzahZbFLtX1ZxcUEtuQhC5g==
X-Received: by 2002:a05:6808:244a:b0:39a:5ce7:f9e3 with SMTP id bw10-20020a056808244a00b0039a5ce7f9e3mr789621oib.48.1685549555930;
        Wed, 31 May 2023 09:12:35 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id c3-20020a544e83000000b0039a21e8c620sm684633oiy.3.2023.05.31.09.12.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 09:12:35 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, lucas.tanure@collabora.com,
        kever.yang@rock-chips.com, yifeng.zhao@rock-chips.com,
        sebastian.reichel@collabora.com, andyshrk@163.com,
        jagan@amarulasolutions.com, heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        broonie@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/5] arm64: dts: rockchip: Add sdio node to rk3588
Date:   Wed, 31 May 2023 11:12:17 -0500
Message-Id: <20230531161220.280744-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230531161220.280744-1-macroalpha82@gmail.com>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add SDIO node for rk3588/rk3588s.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 571cdec24a66..6335d5648bc3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1176,6 +1176,21 @@ sdmmc: mmc@fe2c0000 {
 		status = "disabled";
 	};
 
+	sdio: mmc@fe2d0000 {
+		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0x00 0xfe2d0000 0x00 0x4000>;
+		interrupts = <GIC_SPI 204 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_SDIO>, <&cru CCLK_SRC_SDIO>,
+			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		fifo-depth = <0x100>;
+		max-frequency = <200000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdiom1_pins>;
+		power-domains = <&power RK3588_PD_SDIO>;
+		status = "disabled";
+	};
+
 	sdhci: mmc@fe2e0000 {
 		compatible = "rockchip,rk3588-dwcmshc";
 		reg = <0x0 0xfe2e0000 0x0 0x10000>;
-- 
2.34.1

