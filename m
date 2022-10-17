Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0E006013C1
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 18:43:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230149AbiJQQnH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 12:43:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229889AbiJQQnE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 12:43:04 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8BFC6F272
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 09:43:01 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id ot12so26321710ejb.1
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 09:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ytjq+5ZqtJJOKrYEaXmPKz3aw/q9ijl/XXCtqz4EuF4=;
        b=hsuH/17gxJ+I/Td3j928lw4Co9AAW75W1BPqM9/lOi2b1df25a9DgAXI+1EpTOo6HF
         9Qgc4smYiQBisr1ab+k5wMtU9xyDfYN/8oHWlj6PC4DMDDazc+cR5F7e5LtUA9NjzMp6
         3bjj8tKqaLja+1T+TDrdZvqJWu5bduEDULVb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ytjq+5ZqtJJOKrYEaXmPKz3aw/q9ijl/XXCtqz4EuF4=;
        b=dwv3oLSpT0CFBQGC6X56+wdQpFZqDsOhP1yQwDrfEsUgI5RXntCD+UCGUCZSLon7uX
         zTPIp98PUtqiO8ZkSnbTiPByw/mBZZ+ipGgzEgL4gAjJzkpimqiv/hAfscSXS5uBvISH
         Oy5Kbo+SWRM1cOdgFIn1dDL9ZblC/SmMfulAF58NZEtHPxAfKZkgTFDqHTiWI14e8xjr
         xY4gJJphc14mPL3HSYKiHW5ru+ssNMiA5Nc9M3eHapOiGxB0moLiriCLBlBBc0hP76On
         n90ZhimZaPARHoVfABWlQSjh4f+vBpSY6hqRJGLKcF2/y1IzNB5nBlOS+6BmtTinc5Wb
         x2gg==
X-Gm-Message-State: ACrzQf2uCNy11whoPNICjymuQmXxULdTOCb3Vf97ew+ATecsD3FFDPfk
        +sRHX/dNi2pY+VL3ulw4B4mX/w==
X-Google-Smtp-Source: AMsMyM4vMeoganliG5PWsVO/qYBmbdYYbIzNHrNAhs053almpc/JA8Q0hvxhQ0xAFqBJeGOFV/R+pQ==
X-Received: by 2002:a17:907:25c9:b0:77b:a343:bd62 with SMTP id ae9-20020a17090725c900b0077ba343bd62mr9568881ejc.660.1666024981531;
        Mon, 17 Oct 2022 09:43:01 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-95-244-101-110.retail.telecomitalia.it. [95.244.101.110])
        by smtp.gmail.com with ESMTPSA id a24-20020a1709063a5800b0078128c89439sm6437388ejf.6.2022.10.17.09.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 09:43:01 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     michael@amarulasolutions.com,
        Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [RFC PATCH v5 3/5] ARM: dts: stm32: add CAN support on stm32f429
Date:   Mon, 17 Oct 2022 18:42:29 +0200
Message-Id: <20221017164231.4192699-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20221017164231.4192699-1-dario.binacchi@amarulasolutions.com>
References: <20221017164231.4192699-1-dario.binacchi@amarulasolutions.com>
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

(no changes since v4)

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
index c31ceb821231..ce08872109b8 100644
--- a/arch/arm/boot/dts/stm32f429.dtsi
+++ b/arch/arm/boot/dts/stm32f429.dtsi
@@ -362,6 +362,35 @@ i2c3: i2c@40005c00 {
 			status = "disabled";
 		};
 
+		gcan: gcan@40006600 {
+			compatible = "st,stm32f4-gcan", "syscon";
+			reg = <0x40006600 0x200>;
+			clocks = <&rcc 0 STM32F4_APB1_CLOCK(CAN1)>;
+		};
+
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

