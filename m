Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAD406F0D72
	for <lists+devicetree@lfdr.de>; Thu, 27 Apr 2023 22:46:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344359AbjD0UqS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Apr 2023 16:46:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344084AbjD0UqD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Apr 2023 16:46:03 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ACC44C2C
        for <devicetree@vger.kernel.org>; Thu, 27 Apr 2023 13:45:56 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-50a14564d17so10605209a12.0
        for <devicetree@vger.kernel.org>; Thu, 27 Apr 2023 13:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1682628354; x=1685220354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pOyJLwrnL8b7sS3XOE4C9Z2ANwLoqbgl4r9TqJMyALQ=;
        b=YFXpenH2mzoQXEXnTQ0Z3TJtyZoy5uV/6TCUoR2xIm6PYWa84vCB78MyevgbFQEhF5
         k+j6dxBfXeGBzjnklQwP8SOp0F2ftNSZE5VOU8CKGzEM1Us+V6S+XXN4HAG++Y8vgo2r
         8YRxMtTSpS9uPEgjc8II5qs8Ep1oGPkl21SG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682628354; x=1685220354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pOyJLwrnL8b7sS3XOE4C9Z2ANwLoqbgl4r9TqJMyALQ=;
        b=UnwcBjh08uZqog9XseXmDDQJdbui0va4c19oph85enK8gBm9YJN3sNfS6Nj2Ejt8Qy
         0DxrA8g1ag2ujH7I2SHVZr0inUPsCHLK3eqO7M1pyaAsxAunSjiSDd4BuNZmwMBky4E0
         cdjC3FiPoI5nWrPsNWMpSsnoa/MiH0KkK9cnpUcKqF6hz82jQHc6dA9jtCsV+rrs5ZkP
         iYhxldD6uFewUne1k2AW+NgscD/yV4d/Zv+RZ3Tdt2Hj9x7zWhy9UDX2yY4/nkZ49YyK
         nE7LkvOfRurWh8aGPYQnPT1Z8bIlPu8xmoMmAymZUg8k87++UAPw7u6S389TKLGO9Rqr
         iuRw==
X-Gm-Message-State: AC+VfDwX+7z0cWsqm0xhjKOFOgpoYHhwqOrgZU1Si/BEA/oiVOy3LfMX
        3162uZ3rwtKugQ00NRrbuVtL8A==
X-Google-Smtp-Source: ACHHUZ4wTLVspWRSjwRxm69+yp//qRYMj0/O8K3FuIRMf6s8rUTIpE4GJYaZcDFa9HjrC81Gnpji+g==
X-Received: by 2002:a17:907:8687:b0:94e:ffab:4ce3 with SMTP id qa7-20020a170907868700b0094effab4ce3mr3151905ejc.32.1682628354060;
        Thu, 27 Apr 2023 13:45:54 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-87-5-99-194.retail.telecomitalia.it. [87.5.99.194])
        by smtp.gmail.com with ESMTPSA id s12-20020a170906bc4c00b00947ed087a2csm10171360ejv.154.2023.04.27.13.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Apr 2023 13:45:53 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     michael@amarulasolutions.com,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2 5/5] ARM: dts: stm32: add CAN support on stm32f746
Date:   Thu, 27 Apr 2023 22:45:40 +0200
Message-Id: <20230427204540.3126234-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230427204540.3126234-1-dario.binacchi@amarulasolutions.com>
References: <20230427204540.3126234-1-dario.binacchi@amarulasolutions.com>
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

Changes in v2:
- Move after the patch "can: bxcan: add support for single peripheral configuration".
- Add node gcan3.
- Rename gcan as gcan1.
- Add property "st,can-secondary" to can2 node.
- Drop patch "dt-bindings: mfd: stm32f7: add binding definition for CAN3"
  because it has been accepted.
- Add patch "ARM: dts: stm32f429: put can2 in secondary mode".
- Add patch "dt-bindings: net: can: add "st,can-secondary" property".

 arch/arm/boot/dts/stm32f746.dtsi | 47 ++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f746.dtsi b/arch/arm/boot/dts/stm32f746.dtsi
index dc868e6da40e..973698bc9ef4 100644
--- a/arch/arm/boot/dts/stm32f746.dtsi
+++ b/arch/arm/boot/dts/stm32f746.dtsi
@@ -257,6 +257,23 @@ rtc: rtc@40002800 {
 			status = "disabled";
 		};
 
+		can3: can@40003400 {
+			compatible = "st,stm32f4-bxcan";
+			reg = <0x40003400 0x200>;
+			interrupts = <104>, <105>, <106>, <107>;
+			interrupt-names = "tx", "rx0", "rx1", "sce";
+			resets = <&rcc STM32F7_APB1_RESET(CAN3)>;
+			clocks = <&rcc 0 STM32F7_APB1_CLOCK(CAN3)>;
+			st,gcan = <&gcan3>;
+			status = "disabled";
+		};
+
+		gcan3: gcan@40003600 {
+			compatible = "st,stm32f4-gcan", "syscon";
+			reg = <0x40003600 0x200>;
+			clocks = <&rcc 0 STM32F7_APB1_CLOCK(CAN3)>;
+		};
+
 		usart2: serial@40004400 {
 			compatible = "st,stm32f7-uart";
 			reg = <0x40004400 0x400>;
@@ -337,6 +354,36 @@ i2c4: i2c@40006000 {
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
+			st,gcan = <&gcan1>;
+			status = "disabled";
+		};
+
+		gcan1: gcan@40006600 {
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
+			st,can-secondary;
+			st,gcan = <&gcan1>;
+			status = "disabled";
+		};
+
 		cec: cec@40006c00 {
 			compatible = "st,stm32-cec";
 			reg = <0x40006C00 0x400>;
-- 
2.32.0

