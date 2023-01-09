Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1566662EF5
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 19:27:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236945AbjAIS07 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 13:26:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237451AbjAIS0c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 13:26:32 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 227B4CDD
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 10:24:07 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id u9so22412720ejo.0
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 10:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IyvoS4lwvIpyEoyklIwrERImFtUVOqbD9XwAm5ABwfM=;
        b=Em2qQJ7rFEjYkZdoCry2iyVJCDZzqkWRMTzhgGNjO+cpHZb1MqFbrE3G8pZC7dkfKh
         xQjLkDRJr04LNOnP3omQC1x0RLQclqRc/G13V4NXXA446J5edO08vTeBMC9IbS1F1Rwu
         Dvg0X6VxJH9iChHXi5Bnr1oSSfI2gOpxEbOcU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IyvoS4lwvIpyEoyklIwrERImFtUVOqbD9XwAm5ABwfM=;
        b=ZhVpFaTn28YhPguORVmSjF63ohGl6iV8LQiXzd+pH/Jm6tNcVqmNu/zaYjgMuZtWIW
         eK6YvDoxzLvmNEGvZcwOZSb6Jf/QFmBf+DoENVT9zXZWpMaXCpF/OpkoQyjiO8MP1JcN
         pYSQYJ+Xi6AuebCOWW16epslzS4hSxRl1CVMsRuqM4SOy/aaGI3ubIL2m3RTMwHRKYLp
         u8os59p2fSAH8JHWAG2daXr2pqeaWKJPPkAnQCn+y/v24EBUq2bM5SL9f5/4WXBlOdFD
         tJyr1SP4L4DVHxifGVbHK9PrH3cGziHSpmmoeiLjiPKqxkF22MeWwwf3u4HY2yWNvDHb
         Kd8Q==
X-Gm-Message-State: AFqh2koFm4hqMUZrsVACKhEDs2wBf4pAN9y7PqJxYJONXvhKAiwf2xzG
        No+OidEXif6wjb75qVusK2c2Rg==
X-Google-Smtp-Source: AMrXdXuAWf3obP0O2U9Of1B+8WU1d8adQ+eaAjxTYDRZkG9FzhsZfn5BB6FfOrkaxBgYFCusBIeDWw==
X-Received: by 2002:a17:907:2388:b0:7c0:e0d9:d20d with SMTP id vf8-20020a170907238800b007c0e0d9d20dmr53677519ejb.37.1673288645715;
        Mon, 09 Jan 2023 10:24:05 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.pdxnet.pdxeng.ch (host-80-180-23-57.retail.telecomitalia.it. [80.180.23.57])
        by smtp.gmail.com with ESMTPSA id kz22-20020a17090777d600b007c1633cea13sm4093653ejc.12.2023.01.09.10.24.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jan 2023 10:24:05 -0800 (PST)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        michael@amarulasolutions.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v6 3/5] ARM: dts: stm32: add CAN support on stm32f429
Date:   Mon,  9 Jan 2023 19:23:53 +0100
Message-Id: <20230109182356.141849-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230109182356.141849-1-dario.binacchi@amarulasolutions.com>
References: <20230109182356.141849-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for bxcan (Basic eXtended CAN controller) to STM32F429. The
chip contains two CAN peripherals, CAN1 the master and CAN2 the slave,
that share some of the required logic like clock and filters. This means
that the slave CAN can't be used without the master CAN.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v6:
- move can1 node before gcan to keep ordering by address.

Changes in v4:
- Replace the node can@40006400 (compatible "st,stm32f4-bxcan-core")
  with the gcan@40006600 node ("sysnode" compatible). The gcan node
  contains clocks and memory addresses shared by the two can nodes
  of which it's no longer the parent.
- Add to can nodes the "st,gcan" property (global can memory) which
  references the gcan@40006600 node ("sysnode compatibble).

Changes in v3:
- Remove 'Dario Binacchi <dariobin@libero.it>' SOB.
- Add "clocks" to can@0 node.

 arch/arm/boot/dts/stm32f429.dtsi | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
index c31ceb821231..809b2842ded9 100644
--- a/arch/arm/boot/dts/stm32f429.dtsi
+++ b/arch/arm/boot/dts/stm32f429.dtsi
@@ -362,6 +362,35 @@ i2c3: i2c@40005c00 {
 			status = "disabled";
 		};
 
+		can1: can@40006400 {
+			compatible = "st,stm32f4-bxcan";
+			reg = <0x40006400 0x200>;
+			interrupts = <19>, <20>, <21>, <22>;
+			interrupt-names = "tx", "rx0", "rx1", "sce";
+			resets = <&rcc STM32F4_APB1_RESET(CAN1)>;
+			clocks = <&rcc 0 STM32F4_APB1_CLOCK(CAN1)>;
+			st,can-master;
+			st,gcan = <&gcan>;
+			status = "disabled";
+		};
+
+		gcan: gcan@40006600 {
+			compatible = "st,stm32f4-gcan", "syscon";
+			reg = <0x40006600 0x200>;
+			clocks = <&rcc 0 STM32F4_APB1_CLOCK(CAN1)>;
+		};
+
+		can2: can@40006800 {
+			compatible = "st,stm32f4-bxcan";
+			reg = <0x40006800 0x200>;
+			interrupts = <63>, <64>, <65>, <66>;
+			interrupt-names = "tx", "rx0", "rx1", "sce";
+			resets = <&rcc STM32F4_APB1_RESET(CAN2)>;
+			clocks = <&rcc 0 STM32F4_APB1_CLOCK(CAN2)>;
+			st,gcan = <&gcan>;
+			status = "disabled";
+		};
+
 		dac: dac@40007400 {
 			compatible = "st,stm32f4-dac-core";
 			reg = <0x40007400 0x400>;
-- 
2.32.0

