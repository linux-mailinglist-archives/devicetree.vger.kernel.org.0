Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2925170E770
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 23:38:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238204AbjEWVih (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 17:38:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238625AbjEWVig (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 17:38:36 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B700119
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:38:35 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-392116ae103so210382b6e.0
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684877914; x=1687469914;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Mgi1xCWZGOa//ARDGoMV+dgV7iPjlGc+gvDlG8j5pY=;
        b=hXs8XQ+VsM0uKKwxB8QRLNQNK78Qca3/YA7XW2GEi+5SxI1BvHOMq29cvWlDDyWCRx
         LQMPDyJicTszBjUZFqQyb8dBZSRpecRDiOFuHGbfBALS3FpsWm/qn0i8U0+sb2ugQiaN
         Vv0EFEe1LsPAVWJn/ZvOxE5NGXNnhhLg8+ZW61HWZD/lfitjOcL8lAx9rcHrS39YkMek
         OT/pvEmzZ7UiwrzhchcRME1csW3c6bfihfCgAS0D6GGK48WYYcwk8jR6U40GO1xuTxwo
         QwWzLRpHI1F3C1g50tKvyelhXzCwSq63TCB6ACBIZ/w5MQa29W26kACfzo0c7lXYY3oz
         mgXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684877914; x=1687469914;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Mgi1xCWZGOa//ARDGoMV+dgV7iPjlGc+gvDlG8j5pY=;
        b=JFR3dDXNPtVnLLCZB9VdC6TfBEN/abl5Z0d57Y1nWhaGnOIJWMB7asLae3VzJXfXcW
         WxV7xMW7bAKXrP8qYvfEpimPezvKjplOX+WUZZuuGYMjLVEtfeJiin6sQtekM7a2b8T4
         BAJ2tsyVMbF/uqXgmvILhKRvWXyWXQn18iZU4sDWNnHjxOwRkw3diRSooO7BODYZTaqh
         W3OVcRdDDkfpEQXXWzBjKuXuWXOumysreAoAZV7leNEJq8lOUfxljz/2Mi+kCr1rKvUh
         VuiqHX03oC3Jlu2BefI6dC0RjPdhVJKrBdtWIPohV7oiReXroDhtuTaOxIyxxpun2UTP
         V8uQ==
X-Gm-Message-State: AC+VfDyicSEM/lNnJTyG4SL8s9mV+mWx+Uvg/pN6zdvBQYgZkbLvmMhp
        4ze8Uy0+xZAl1IQO9h/ryYc=
X-Google-Smtp-Source: ACHHUZ5j0wmMDzm4NXi9K7ZqQmj6d+e/UrUvMChhWlONqjQFtk+tG5LyXBhsF5o/9phbxLMt9cM1iA==
X-Received: by 2002:a05:6808:4c4:b0:394:2868:d51f with SMTP id a4-20020a05680804c400b003942868d51fmr7767223oie.4.1684877914232;
        Tue, 23 May 2023 14:38:34 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y83-20020acae156000000b0037832f60518sm4442359oig.14.2023.05.23.14.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 14:38:33 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        zyw@rock-chips.com, sebastian.reichel@collabora.com,
        andyshrk@163.com, jagan@amarulasolutions.com, broonie@kernel.org,
        perex@perex.cz, tiwai@suse.com, lgirdwood@gmail.com,
        heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/6] arm64: dts: rockchip: Add sdio node to rk3588
Date:   Tue, 23 May 2023 16:38:22 -0500
Message-Id: <20230523213825.120077-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230523213825.120077-1-macroalpha82@gmail.com>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
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

