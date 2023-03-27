Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 249EC6CAFC1
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 22:17:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232769AbjC0URN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 16:17:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232661AbjC0URF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 16:17:05 -0400
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B97C44AA
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 13:16:57 -0700 (PDT)
Received: by mail-il1-x133.google.com with SMTP id h11so5243979ild.11
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 13:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1679948217;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PQBAqyGpgtibuEQ07wkfyoJFQhHr9Hz8PDMB/KLLeHM=;
        b=JTjIYf+c214XaxQnu0kKEL9Eo7jLRGqw+K7R8lqR0oNNC8MVwOVZPZ2fxTrYbvC1Ri
         CCAZZSSlnBkr3Coou+GNmEyPu1mNmlpeThmdRoKJGRmCh3COBylHJZ4SR5LNWhhRZ4xe
         x6jcC2+eZ77HFwsra4tlZUWwIsLlZBi1Q4Qto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679948217;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PQBAqyGpgtibuEQ07wkfyoJFQhHr9Hz8PDMB/KLLeHM=;
        b=wV5aTOVtf6zX/K1QUlY6DCBZLqgZETGF9Kph9YBMPxiP54vTUX+GkjYehLsq5SMSjd
         zbB1mPekGxLqNVNVC4CoqMdDh9kDNa7bIBArfpzS0gQkx+AK3dN7BHhMaPbsVKVjNlpl
         Iqeqm//JFkEpgyFPlSHOx0sjaaV9onlFg28ikLEof2Q1SwUQlVx0Kdkq90+2g/t5IFWO
         +MN/HqGwhYPKKrgrFCOv3tNcasIEUu028/hyWd8njyCYdd8M9tjverXPPH7m4XQq8d/A
         6XKQEqbd/vYMbHm3wpnhushLhcDcRmgEvopQQHvfCJOBzPZKk1T8s0MrrW9heQR7DCPh
         4kRw==
X-Gm-Message-State: AAQBX9cGm2Hdo6V5QOnlpIyr77Ysv1nAbLjC9xNFK+Y4+m9qQTtn2vvF
        mpIB5WayJyenwhGfLfUKyTfj0g==
X-Google-Smtp-Source: AKy350adLi+OaoxxRwg4JjV3hshajTUMAPaxd6bf7+Kdg4CU5S3sd2AFjyNuz2UKvfj6cTH0OVf8Uw==
X-Received: by 2002:a05:6e02:1212:b0:325:dc0c:73f5 with SMTP id a18-20020a056e02121200b00325dc0c73f5mr8544921ilq.14.1679948216966;
        Mon, 27 Mar 2023 13:16:56 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.pdxnet.pdxeng.ch (host-87-0-102-254.retail.telecomitalia.it. [87.0.102.254])
        by smtp.gmail.com with ESMTPSA id u26-20020a02b1da000000b003a958f51423sm5594759jah.167.2023.03.27.13.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 13:16:56 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Marc Kleine-Budde <mkl@pengutronix.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        michael@amarulasolutions.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v9 3/5] ARM: dts: stm32: add CAN support on stm32f429
Date:   Mon, 27 Mar 2023 22:16:28 +0200
Message-Id: <20230327201630.3874028-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230327201630.3874028-1-dario.binacchi@amarulasolutions.com>
References: <20230327201630.3874028-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for bxcan (Basic eXtended CAN controller) to STM32F429. The
chip contains two CAN peripherals, CAN1 the primary and CAN2 the secondary,
that share some of the required logic like clock and filters. This means
that the secondary CAN can't be used without the primary CAN.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v9:
- Replace master/slave terms with primary/secondary.

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
index c31ceb821231..c9e05e3540d6 100644
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
+			st,can-primary;
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

