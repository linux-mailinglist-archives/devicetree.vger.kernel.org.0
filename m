Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E80E26654CF
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 07:49:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232388AbjAKGtB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 01:49:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231971AbjAKGtA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 01:49:00 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E42D1FD1A
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 22:48:59 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id bj3so11684279pjb.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 22:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7bXSluyR6+HkZvWRx0HI0+ZY45eXmi35qcMp7mPbfPQ=;
        b=HUA0c4rlA9s/oDEtfyUM//zLQjxNJ/G4WwuWx4cpNV7QunUiBAz0akFMekbjRJCkX4
         kqluhqf0XGQ9hc4fq1YE+C2pGUydAKEj/jNWJlLY1lbrwDMKjdsbo/M4u9nRabIejGvi
         tqfyIDKzhtzYuK7XHYg3jK6JJlrV0C94rTEAe7B5k/U9E9GSDnHg65fbSlGQ9EokxfDc
         3Al/Za1dqPJEx2MUhFYSa6zpSrEnVu3kCeTSbGlv/KE7NIyRvvf3Rv9M1Mp6FkzJFqD/
         +fSnC1vV2QoStP3ye8So9+P8Fgggp5le1Vwl1u70bffKL8+0CyVkhK9Q8YXb3OnekXZD
         Htpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7bXSluyR6+HkZvWRx0HI0+ZY45eXmi35qcMp7mPbfPQ=;
        b=pJWijNXzVubNs7U17xBB4nxiN8NB4M9vNTAbNE2FLN5jf3GwMSyzLuoMLt/iTFGX00
         Jj2+fPfyCp2aBieDJ4+aUTg/fHlfbJhkfQWgiPf08jBSmqoqq+4XjU9Z9ID2fL2ljQKq
         UZ1jpO+rVROz6KgGMDJxKmneKZPI6M3QpEiHzZqY3ktjhWm6PCbmvwAtsXiyZ6WJwa5Z
         JNA85/j+5p9QmNr0L/yZr3jRMmBH6zZLaZu0T8Gu3is3xeKqyqxPBNO5NV9RXtYXLLYc
         2WRY5fFdoMU3XUJSM60bVCkMyWGhITgX60KSFx+ceEtJjKukYd5AAeP0EH51/7lLOjaU
         EiXA==
X-Gm-Message-State: AFqh2kr1f9ZQxNPH4dddQF2kcsJ10U5KbQzyN0+boU+ZjDTnuAoLcIhp
        J++iDozQJJT/UjRWkgrX2Ni7Gg==
X-Google-Smtp-Source: AMrXdXvFXs0kwnfQutgidNWLnKV4XCMpE4nBi/g/vsl2F1Uu5gJKKvY3R3kc60tz59/VVwIEgtyIZw==
X-Received: by 2002:a17:903:330b:b0:193:30be:d146 with SMTP id jk11-20020a170903330b00b0019330bed146mr9484332plb.63.1673419739580;
        Tue, 10 Jan 2023 22:48:59 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.15])
        by smtp.gmail.com with ESMTPSA id m2-20020a170902db0200b001930e89f5f6sm9301861plx.98.2023.01.10.22.48.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 22:48:59 -0800 (PST)
From:   Anand Moon <anand@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Johan Jonker <jbx6244@gmail.com>, Anand Moon <anand@edgeble.ai>,
        Jagan Teki <jagan@edgeble.ai>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCHv4 linux-next 2/4] ARM: dts: rockchip: rv1126: Add ethernet rgmiim1 pin-control
Date:   Wed, 11 Jan 2023 06:48:37 +0000
Message-Id: <20230111064842.5322-2-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111064842.5322-1-anand@edgeble.ai>
References: <20230111064842.5322-1-anand@edgeble.ai>
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

Add ethernet pin-control for rv1126 SoC.

Signed-off-by: Anand Moon <anand@edgeble.ai>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
v4: drop Rev by Jagan: Both SoB and RoB of same person is incorrect.
    update the $subject.
v3: add Rev by and SoB Jagan Teki.
v2: drop SoB of Jagan Teki.
---
 arch/arm/boot/dts/rv1126-pinctrl.dtsi | 42 +++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
index 4bc419cc1210..b77021772781 100644
--- a/arch/arm/boot/dts/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
@@ -11,6 +11,14 @@
  * by adding changes at end of this file.
  */
 &pinctrl {
+	clk_out_ethernet {
+		/omit-if-no-ref/
+		clk_out_ethernetm1_pins: clk-out-ethernetm1-pins {
+			rockchip,pins =
+				/* clk_out_ethernet_m1 */
+				<2 RK_PC5 2 &pcfg_pull_none>;
+		};
+	};
 	emmc {
 		/omit-if-no-ref/
 		emmc_rstnout: emmc-rstnout {
@@ -61,6 +69,40 @@ i2c0_xfer: i2c0-xfer {
 				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
 		};
 	};
+	rgmii {
+		/omit-if-no-ref/
+		rgmiim1_pins: rgmiim1-pins {
+			rockchip,pins =
+				/* rgmii_mdc_m1 */
+				<2 RK_PC2 2 &pcfg_pull_none>,
+				/* rgmii_mdio_m1 */
+				<2 RK_PC1 2 &pcfg_pull_none>,
+				/* rgmii_rxclk_m1 */
+				<2 RK_PD3 2 &pcfg_pull_none>,
+				/* rgmii_rxd0_m1 */
+				<2 RK_PB5 2 &pcfg_pull_none>,
+				/* rgmii_rxd1_m1 */
+				<2 RK_PB6 2 &pcfg_pull_none>,
+				/* rgmii_rxd2_m1 */
+				<2 RK_PC7 2 &pcfg_pull_none>,
+				/* rgmii_rxd3_m1 */
+				<2 RK_PD0 2 &pcfg_pull_none>,
+				/* rgmii_rxdv_m1 */
+				<2 RK_PB4 2 &pcfg_pull_none>,
+				/* rgmii_txclk_m1 */
+				<2 RK_PD2 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd0_m1 */
+				<2 RK_PC3 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd1_m1 */
+				<2 RK_PC4 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd2_m1 */
+				<2 RK_PD1 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd3_m1 */
+				<2 RK_PA4 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txen_m1 */
+				<2 RK_PC6 2 &pcfg_pull_none_drv_level_3>;
+		};
+	};
 	sdmmc0 {
 		/omit-if-no-ref/
 		sdmmc0_bus4: sdmmc0-bus4 {
-- 
2.39.0

