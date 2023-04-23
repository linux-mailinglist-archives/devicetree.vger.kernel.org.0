Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3E626EC156
	for <lists+devicetree@lfdr.de>; Sun, 23 Apr 2023 19:25:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230052AbjDWRZr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Apr 2023 13:25:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbjDWRZo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Apr 2023 13:25:44 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97ABAE5E
        for <devicetree@vger.kernel.org>; Sun, 23 Apr 2023 10:25:43 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-2f8405b3dc1so2077894f8f.3
        for <devicetree@vger.kernel.org>; Sun, 23 Apr 2023 10:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1682270742; x=1684862742;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nj3vUN1sCuMDZhLchBZ5ljBaRgoXn81VamEs7vmRecg=;
        b=Ji3b5vRxqg5iClJvgPJMHub8Kjxgs8UZLI+g7Y8LUP1McxE80sz3nw4pl6WcPIXB4d
         K15cbt3FrTPMthAs0ChTixHRWAVs2PvDUtlbu6K3e5cL2WWRnyCIVFkfQLeKDAO2P/lG
         VWRMx7Pwt7ZZIILG7jWKH2JvDiYmzRQrFKYvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682270742; x=1684862742;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nj3vUN1sCuMDZhLchBZ5ljBaRgoXn81VamEs7vmRecg=;
        b=OLmubBoVXoPYbxE4m7FldneOK47or9y0U1DcWq1kyHDnlLJ7OqbCcIyKn1CK1Ppx3b
         Dw3DF9z5z26qQqm6UlcgapGZPbv2Ji/xrB7CJF8Gn/9GN/vzMuUq1zea/yH81YyntjA3
         QEPur1T+raTfwA7998wKjaL4rhMfyuiWaVuykvIlrahRrg8yyuLHvoja7hc2r1IRWY3Q
         yqQET46Tu6pRnSr8pWyn/6jioRZa23Droe0OUP29S61595o8DSAlo9VazV0ocqb8ePw0
         d4CBDoSZQIwYYh+lJnaIc20GMX5fcg6p0xNyOa7oCRFbFtUZCizrIu0NvsmrnwrrYzbo
         Y7Og==
X-Gm-Message-State: AAQBX9d2mHPD4NJc0J7H9YiReQ6DG1zptC+4xuy20XraAwH6Kyi4H0HP
        0CokxlVy7CZKGfD5XdVLn6YhiA==
X-Google-Smtp-Source: AKy350Yp9TPkUsEVOI68JeJjGIhVsrjKqa3F+lk9FvLIdPG1XydenC8cuqq/shshNTosvWiYP9Defw==
X-Received: by 2002:adf:e803:0:b0:2f7:a333:8cab with SMTP id o3-20020adfe803000000b002f7a3338cabmr8356900wrm.71.1682270742024;
        Sun, 23 Apr 2023 10:25:42 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([37.159.119.249])
        by smtp.gmail.com with ESMTPSA id j32-20020a05600c1c2000b003f173987ec2sm13511653wms.22.2023.04.23.10.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Apr 2023 10:25:41 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Amarula patchwork <linux-amarula@amarulasolutions.com>,
        michael@amarulasolutions.com,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH 2/4] ARM: dts: stm32: add CAN support on stm32f746
Date:   Sun, 23 Apr 2023 19:25:26 +0200
Message-Id: <20230423172528.1398158-3-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230423172528.1398158-1-dario.binacchi@amarulasolutions.com>
References: <20230423172528.1398158-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for bxcan (Basic eXtended CAN controller) to STM32F746. The
chip contains three CAN peripherals, CAN1 and CAN2 in dual peripheral
configuration and CAN3 in single peripheral configuration:
- Dual CAN peripheral configuration:
  * CAN1: Primary bxCAN for managing the communication between a secondary
    bxCAN and the 512-byte SRAM memory.
  * CAN2: Secondary bxCAN with no direct access to the SRAM memory.
  This means that the two bxCAN cells share the 512-byte SRAM memory and
  CAN2 can't be used without enabling CAN1.
- Single CAN peripheral configuration:
  * CAN3: Primary bxCAN with dedicated Memory Access Controller unit and
    512-byte SRAM memory.

 -------------------------------------------------------------------------
| features | CAN1              | CAN2               | CAN 3               |
 -------------------------------------------------------------------------
| SRAM     | 512-byte shared between CAN1 & CAN2    | 512-byte            |
 -------------------------------------------------------------------------
| Filters  | 26 filters shared between CAN1 & CAN2  | 14 filters          |
 -------------------------------------------------------------------------

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm/boot/dts/stm32f746.dtsi | 39 ++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f746.dtsi b/arch/arm/boot/dts/stm32f746.dtsi
index dc868e6da40e..70371d9dbb7a 100644
--- a/arch/arm/boot/dts/stm32f746.dtsi
+++ b/arch/arm/boot/dts/stm32f746.dtsi
@@ -257,6 +257,16 @@ rtc: rtc@40002800 {
 			status = "disabled";
 		};
 
+		can3: can@40003400 {
+			compatible = "st,stm32f4-bxcan";
+			reg = <0x40003400 0x400>;
+			interrupts = <104>, <105>, <106>, <107>;
+			interrupt-names = "tx", "rx0", "rx1", "sce";
+			resets = <&rcc STM32F7_APB1_RESET(CAN3)>;
+			clocks = <&rcc 0 STM32F7_APB1_CLOCK(CAN3)>;
+			status = "disabled";
+		};
+
 		usart2: serial@40004400 {
 			compatible = "st,stm32f7-uart";
 			reg = <0x40004400 0x400>;
@@ -337,6 +347,35 @@ i2c4: i2c@40006000 {
 			status = "disabled";
 		};
 
+		can1: can@40006400 {
+			compatible = "st,stm32f4-bxcan";
+			reg = <0x40006400 0x200>;
+			interrupts = <19>, <20>, <21>, <22>;
+			interrupt-names = "tx", "rx0", "rx1", "sce";
+			resets = <&rcc STM32F7_APB1_RESET(CAN1)>;
+			clocks = <&rcc 0 STM32F7_APB1_CLOCK(CAN1)>;
+			st,can-primary;
+			st,gcan = <&gcan>;
+			status = "disabled";
+		};
+
+		gcan: gcan@40006600 {
+			compatible = "st,stm32f4-gcan", "syscon";
+			reg = <0x40006600 0x200>;
+			clocks = <&rcc 0 STM32F7_APB1_CLOCK(CAN1)>;
+		};
+
+		can2: can@40006800 {
+			compatible = "st,stm32f4-bxcan";
+			reg = <0x40006800 0x200>;
+			interrupts = <63>, <64>, <65>, <66>;
+			interrupt-names = "tx", "rx0", "rx1", "sce";
+			resets = <&rcc STM32F7_APB1_RESET(CAN2)>;
+			clocks = <&rcc 0 STM32F7_APB1_CLOCK(CAN2)>;
+			st,gcan = <&gcan>;
+			status = "disabled";
+		};
+
 		cec: cec@40006c00 {
 			compatible = "st,stm32-cec";
 			reg = <0x40006C00 0x400>;
-- 
2.32.0

